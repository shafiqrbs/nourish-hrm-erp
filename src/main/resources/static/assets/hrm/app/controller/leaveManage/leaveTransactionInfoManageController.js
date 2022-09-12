app.controller("leaveTransactionInfoManageController",
    function ($rootScope, $scope, $uibModal, $http, $location, $timeout, $filter, Flash,BaseApiUrlService,
        EmployeeInfoService,LeaveTransactionInfoServices, LeavePolicyInfoServices, TokenService) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl();
        $scope.isDefaultImage = true;
        $scope.isProfileImage = false;
        $scope.isButtonDisabled = true;

        $scope.profilePicture = "http://via.placeholder.com/232x232";
        $scope.EmployeeCode="";
        $scope.pSearchCriteria=""
        $scope.leaveTransactionInfo = {};

        function init() {
            getAllLeaveType();
        }

        init();

        //Get General employee info
        function getEmployeeInfo(pEmployeeCode){
            EmployeeInfoService.getEmployeeInfoByEmployeeCode(pEmployeeCode, TokenService.getAccessToken()).then(function(resp){
                console.log(resp);
                $scope.employeeInfo = resp;
                $scope.profilePicture = "/assets/img/profile/"+resp.employeeImage;
                $scope.isDefaultImage = false;
                $scope.isProfileImage = true;
                $scope.EmployeeCode = pEmployeeCode;
                $scope.employeeInfo.dateOfJoin = $filter('date')(resp.dateOfJoin, "dd/MM/yyyy");
                $scope.employeeInfo.dateOfConfirmation = $filter('date')(resp.dateOfConfirmation, "dd/MM/yyyy");
            });
        }

        $scope.EmployeeGridFilter = function(pSearchCriteria){
            $scope.EmployeeGridDataSource.query({
                page:1,
                pageSize:50,
                filter:{
                    filters:[
                        {field:"advanceSearchFiled", operator:"contains",value:pSearchCriteria}
                    ]
                }
            });
        }

        $scope.loadGeneralEmployeeInfo = function(pEmployeeCode){
           getEmployeeInfo(pEmployeeCode);
           $scope.isButtonDisabled = false;
           $scope.EmployeeLeaveAppliedGridDataSource.read();
           $scope.EmployeeLeaveAllocationGridDataSource.read();
        }

        $scope.EmployeeGridDataSelect = function (e){
            //console.log(e.sender.dataItem(e.sender.select()));
            $scope.EmployeeCode = e.sender.dataItem(e.sender.select()).employeeCode;
            $scope.loadGeneralEmployeeInfo($scope.EmployeeCode);
        }

        $scope.EmployeeGridDataSource = new kendo.data.DataSource({
            type: "jsonp",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/employees/info/getAll?access_token='+TokenService.getAccessToken()+'&pCallRequestFrom="LeaveTransaction"';
                    },
                    dataType: "json",
                    type: "GET"
                },
                parameterMap: function (data) {
                    // Mapping between Spring data pagination and kendo UI pagination parameters
                    // Pagination
                    var serverUrlParams = {
                        // pagination
                        size: data.pageSize,
                        page: data.page = data.page - 1,// as Spring page starts from 0
                        filters:""
                    };

                    // Sorting
                    if (data.sort && data.sort.length > 0){
                        serverUrlParams.sortBy = data.sort[0].field;
                        serverUrlParams.sortOn = (data.sort[0].dir).toUpperCase();
                    }
                    else{
                        serverUrlParams.sortBy = 'employeeCode';
                        serverUrlParams.sortOn = 'ASC';
                    }

                    //Filter Information
                    if (data.filter && data.filter.filters.length > 0) {
                        var elt = data.filter.filters[0];
                        var field = elt['field'];

                        if(elt['value'] == undefined){
                            elt['value'] = "";
                            $scope.pSearchCriteria = "";
                        }

                        var value = (elt['value'].replace("~", "")).replace("_", "");
                        var operator = elt['operator'];
                        serverUrlParams.filters = field + '_' + value + '_' + operator;

                        for(var index = 1; index < data.filter.filters.length; index++) {
                            elt = data.filter.filters[index];
                            field = elt['field'];
                            value = (elt['value'].replace("~", "")).replace("_", "");
                            operator = elt['operator'];
                            serverUrlParams.filters = serverUrlParams.filters + '~' + field + '_' + value + '_' + operator;
                        }
                        //alert(JSON.stringify(serverUrlParams));
                    }

                    return serverUrlParams;
                }
            },
            error: function (e) {
                if (e.errorThrown.toString() === 'Unauthorized') {
                    alert('Unauthorized Access!');
                    window.location = '/account/login';
                }
            },
            pageSize: 50,
            serverPaging: true,
            serverFiltering: true,
            serverSorting: true,
            schema: {
                model: {
                    id: "Id",
                    fields: {
                        Id: { type: "number", editable: false },
                       employeeCode: { type: "string" },
                       firstName: { type: "string" },
                       punchCardNo: { type: "string" }
                    }
                },
                data:"data",
                total:"total"
            }
        });

        $scope.EmployeeAllDataOptions = {
            dataSource: $scope.EmployeeGridDataSource,
            sortable: true,
            selectable:"row",
            change: $scope.EmployeeGridDataSelect,
            pageable: true,
            scrollable: true,
            pageable: {
                refresh: true,
                pageSizes: [20, 50, 100, 200],
                //pageSizes: [20, 50, 100, 200, "all"],
                buttonCount: 2,
                messages: {
                    itemsPerPage: "",
                    display: "{0} - {1} of {2} Records"
                }
            },
            filterable: {
                extra: false, //do not show extra filters
                operators: { // redefine the string operators
                    string: {
                        startswith: "Starts With",
                        endswith: "Ends With",
                        eq: "Is Equal To",
                        neq: "Is Not Equal To",
                        contains: "Contains"
                    }
                }
            },
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {
                    field: "employeeCode",
                    title: "Code",
                    width: "90px"
                },
                {
                    field: "firstName",
                    title: "Name",
                    width: "105px",
                    template: '<span>{{(dataItem.salutation==null?"":dataItem.salutation) +" "+(dataItem.firstName==null?"":dataItem.firstName)}}</span>'
                },
                {
                    field: "punchCardNo",
                    title: "Punch Card",
                    width: "130px"
                }
            ]
        };

        function getAllLeaveType(){
            LeavePolicyInfoServices.getAllLeaveType(TokenService.getAccessToken()).then(function(resp){
                $scope.allLeaveTypeDDL = resp;
            });
        }

        $scope.saveForm = function(isValid,leaveTransactionInfo){
            leaveTransactionInfo.employeeCode = $scope.EmployeeCode;
            if($scope.EmployeeCode == "" || $scope.EmployeeCode == undefined)
            {
                alert("You must select an employee");
            }
            else{
                if(isValid){
                    LeaveTransactionInfoServices.save(leaveTransactionInfo,TokenService.getAccessToken()).then(function(resp) {
                        if(resp.data.isSuccess == true){
                            Flash.create('success', resp.data.successMessage, 'custom-class');
                            $scope.leaveTransactionInfo = {};
                            $scope.EmployeeLeaveAppliedGridDataSource.read();
                        }else{
                            Flash.create('danger', resp.data.errorMessage, 'custom-class');
                        }
                    })
                }
            }
        }

        $scope.cancel = function(){
            $scope.leaveTransactionInfo = {};
            $scope.EmployeeLeaveTransInfoGridDataSource.read();
        }

        $scope.EmployeeLeaveAppliedGridDataSelect = function (e){
            console.log(e);
            $scope.leaveTransId = e.sender.dataItem(e.sender.select()).skillId;
            LeaveTransactionInfoServices.getLeaveTransactionInfoById($scope.leaveTransId,TokenService.getAccessToken()).then(function (resp) {
                $scope.leaveTransactionInfo = resp;
            });

        }

        $scope.EmployeeLeaveAppliedGridDataSource = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/leave/LeaveTransInfo/getByEmployeeCode?access_token='+TokenService.getAccessToken()+'&pEmployeeCode='+$scope.EmployeeCode;
                    },
                    dataType: "json",
                },
                serverPaging: true,
                serverSorting: true
            },
            error: function (e) {
                if (e.errorThrown.toString() === 'Unauthorized') {
                    alert('Unauthorized Access!');
                    window.location = '/account/login';
                }
            },
            pageSize: 50,
            schema: {
                model: {
                    id: "Id",
                    fields: {
                       id: { type: "number", editable: false },
                       leaveType: { type: "string" },
                       fromDate: { type: "string" },
                       toDate: { type: "string" },
                       leaveDays: { type: "number" },
                       leaveReason: { type: "string" },
                       leaveAvailPlace: { type: "string" },
                       isPostApproved: { type: "string" },
                       description: { type: "string" }
                    }
                }
            }
        });

        $scope.EmployeeLeaveAppliedDataOptions = {
            dataSource: $scope.EmployeeLeaveAppliedGridDataSource,
            sortable: true,
            selectable:"row",
            pageable: true,
            scrollable: true,
            pageable: {
                refresh: true,
                pageSizes: [20, 50, 100, 200],
                //pageSizes: [20, 50, 100, 200, "all"],
                buttonCount: 5,
                messages: {
                    itemsPerPage: "",
                    display: "{0} - {1} of {2} Records"
                }
            },
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {
                    field: "leaveType",
                    title: "Leave Type",
                    width: "140px"
                },
                {
                    field: "fromDate",
                    title: "From Date",
                    width: "150px",
                    template: '{{(dataItem.fromDate==null?"":dataItem.fromDate | date:"yyyy-MM-dd")}}'
                },
                {
                    field: "toDate",
                    title: "To Date",
                    width: "150px",
                    template: '{{(dataItem.toDate==null?"":dataItem.toDate | date:"yyyy-MM-dd")}}'
                },
                {
                    field: "leaveDays",
                    title: "Total Days",
                    width: "140px"
                },
                {
                    field: "leaveReason",
                    title: "Leave Reason",
                    width: "180px"
                },
                {
                    field: "isApproved",
                    title: "Status",
                    width: "150px",
                    template: '{{(dataItem.isApproved==null || dataItem.isApproved==false?"Pending":"Approved")}}'
                }
            ]
        };

        $scope.EmployeeLeaveAllocationGridDataSource = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/leave/allocation/getByEmployeeCode?access_token='+TokenService.getAccessToken()+'&pEmployeeCode='+$scope.EmployeeCode;
                    },
                    dataType: "json",
                },
                serverPaging: true,
                serverSorting: true
            },
            error: function (e) {
                if (e.errorThrown.toString() === 'Unauthorized') {
                    alert('Unauthorized Access!');
                    window.location = '/account/login';
                }
            },
            pageSize: 50,
            schema: {
                model: {
                    id: "Id",
                    fields: {
                       id: { type: "number", editable: false },
                       leavePolicyID: { type: "string" },
                       leaveType: { type: "string" },
                       description: { type: "string" },
                       allocated: { type: "number" },
                       openingBalance: { type: "number" },
                       totalDays: { type: "number" },
                       availed: { type: "number" },
                       adjusted: { type: "number" },
                       balance: { type: "number" }
                    }
                }
            }
        });

        $scope.EmployeeLeaveAllocationGridOptions = {
            dataSource: $scope.EmployeeLeaveAllocationGridDataSource,
            sortable: true,
            selectable:"row",
            pageable: true,
            scrollable: true,
            pageable: {
                refresh: true,
                pageSizes: [20, 50, 100, 200],
                //pageSizes: [20, 50, 100, 200, "all"],
                buttonCount: 5,
                messages: {
                    itemsPerPage: "",
                    display: "{0} - {1} of {2} Records"
                }
            },
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {
                    field: "leavePolicyID",
                    title: "Policy ID",
                    width: "120px"
                },
                {
                    field: "leaveType",
                    title: "Leave Type",
                    width: "130px"
                },
                {
                    field: "description",
                    title: "Description",
                    width: "150px"
                },
                {
                    field: "allocated",
                    title: "Allocated",
                    width: "120px"
                },
                {
                    field: "openingBalance",
                    title: "Opening",
                    width: "130px"
                },
                {
                    field: "totalDays",
                    title: "Total Days",
                    width: "120px"
                },
                {
                    field: "availed",
                    title: "Availed",
                    width: "120px"
                },
                {
                    field: "adjusted",
                    title: "Adjusted",
                    width: "120px"
                },
                {
                    field: "balance",
                    title: "Balance",
                    width: "120px"
                }
            ]
        };
    });