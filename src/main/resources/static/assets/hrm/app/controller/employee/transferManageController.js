app.controller("transferManageController",
    function ($rootScope, $scope, $uibModal, $http, $location, $timeout, $filter, Flash,BaseApiUrlService,
        EmployeeInfoService,TransferServices,TokenService) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl();

        $scope.isDefaultImage = true;
        $scope.isProfileImage = false;
        $scope.isButtonDisabled = true;
        $scope.isNewEntryButtonDisabled = true;

        $scope.profilePicture = "http://via.placeholder.com/232x232";
        $scope.EmployeeCode="";
        $scope.pSearchCriteria="";
        $scope.transfer = {};

        function init() {
        }

        init();

        //Get General employee info
        function getEmployeeInfo(pEmployeeCode){
            EmployeeInfoService.getEmployeeInfoByEmployeeCode(pEmployeeCode, TokenService.getAccessToken()).then(function(resp){
                console.log(resp);
                $scope.employeeInfo = resp;

                if(resp.employeeImage == null || resp.employeeImage == undefined || resp.employeeImage =="")
                    $scope.profilePicture = "http://via.placeholder.com/250x297";
                else
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
           $scope.EmployeeTransferGridDataSource.read();
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
                        return $scope.baseUrl+'/employees/info/getAll?access_token='+TokenService.getAccessToken()+'&pCallRequestFrom="Transfer"';
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
                    width: "85px"
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

        $scope.addNewEntry = function(){
            $scope.isNewEntryButtonDisabled = true;
            $scope.transfer = {};
            $scope.EmployeeTransferGridDataSource.read();
        }

        $scope.saveForm = function(isValid,transfer){
            if(isValid && $scope.EmployeeCode !=""){
                transfer.employeeCode = $scope.EmployeeCode;
                transfer.effectiveDate = $filter('date')(transfer.effectiveDate, "yyyy-MM-dd");
                TransferServices.save(transfer,TokenService.getAccessToken()).then(function(resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                        $scope.transfer = {};
                        $scope.isNewEntryButtonDisabled = true;
                        $scope.EmployeeTransferGridDataSource.read();
                    }else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                })
            }
        }

        $scope.cancel = function(){
            $scope.transfer = {};
            $scope.EmployeeTransferGridDataSource.read();
        }

        $scope.EmployeeTransferGridDataSelect = function (e){
            console.log(e);
            $scope.transferId = e.sender.dataItem(e.sender.select()).transferId;
            TransferServices.getEmployeeTransferById($scope.transferId,TokenService.getAccessToken()).then(function (resp) {
                $scope.transfer = resp;
                $scope.transfer.effectiveDate = new Date(resp.effectiveDate);
                $scope.isNewEntryButtonDisabled = false;
            });

        }

        $scope.EmployeeTransferGridDataSource = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/transfer/findAllTransferByEmployeeCode?access_token='+TokenService.getAccessToken()+'&pEmployeeCode='+$scope.EmployeeCode;
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
                       transferId: { type: "number", editable: false },
                       transferLocation: { type: "string" },
                       transferType: { type: "string" },
                       effectiveDate: { type: "string" }
                    }
                }
            }
        });

        $scope.EmployeeTransferDataOptions = {
            dataSource: $scope.EmployeeTransferGridDataSource,
            sortable: true,
            selectable:"row",
            change: $scope.EmployeeTransferGridDataSelect,
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
                    field: "transferType",
                    title: "Transfer Type",
                    width: "200px"
                },
                {
                    field: "transferLocation",
                    title: "Transfer Location",
                    width: "200px"
                },
                {
                    field: "effectiveDate",
                    title: "Effective Date",
                    width: "200px",
                    template: '<span>{{dataItem.effectiveDate | date:"MM/dd/yyyy"}}</span>'
                }
            ]
        };
    });