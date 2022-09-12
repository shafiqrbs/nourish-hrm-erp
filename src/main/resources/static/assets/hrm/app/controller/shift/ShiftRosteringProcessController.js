app.controller("ShiftRosteringProcessController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, Flash, BaseApiUrlService, TokenService, ShiftRosteringProcessServices) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl();
        $scope.ShiftRosterTab = "stepOneProcess";
        $scope.isShiftRosterProcessStepOneShow = true;
        $scope.isShiftRosterProcessStepTwoShow = false;
        $scope.isShiftRosterProcessStepThreeShow = false;
        $scope.pSearchCriteria = "";


        $scope.shiftProcess = {};
        $scope.shiftProcess.allEmployees = false;
        $scope.selectedEmployeeCodes = {};


        function init() {
        }

        init();

        $scope.selectAllEmployeeEvent = function(allEmployees){
   //         alert(allEmployees);
        }

        $scope.openShiftRosterTab = function (pageName) {
            $scope.ShiftRosterTab = pageName;

            if(pageName == "stepOneProcess"){
                $scope.isShiftRosterProcessStepOneShow = true;
                $scope.isShiftRosterProcessStepTwoShow = false;
                $scope.isShiftRosterProcessStepThreeShow = false;
            }
            else if(pageName == "stepTwoProcess"){
                $scope.isShiftRosterProcessStepOneShow = false;
                $scope.isShiftRosterProcessStepTwoShow = true;
                $scope.isShiftRosterProcessStepThreeShow = false;
            }
            else if(pageName == "stepThreeProcess"){
                $scope.isShiftRosterProcessStepOneShow = false
                $scope.isShiftRosterProcessStepTwoShow = false;
                $scope.isShiftRosterProcessStepThreeShow = true;
            }
        }


        $scope.saveShiftRosterProcessForm = function(){

            if($scope.shiftProcess.fromDate == "" ||$scope.shiftProcess.toDate == ""  ){
                alert("Select Holiday dates in Step One");
                return ;
            }
            if($scope.shiftProcess.allEmployees) {
                $scope.shiftProcess.employeeCodes = [];
            }else{
                $scope.shiftProcess.employeeCodes = [];
                angular.forEach($scope.selectedEmployeeCodes, function (pageItems, page){
                    angular.forEach(pageItems, function (item, itemKey){
                        $scope.shiftProcess.employeeCodes.push(item.EmployeeCode);
                    });
                });
            }
            console.log($scope.shiftProcess);

            ShiftRosteringProcessServices.process($scope.shiftProcess, TokenService.getAccessToken())
                .then(function (resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                    }else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                }, function (error) {
                    console.log(error);
                });

        }


        $scope.shiftRuleRosteringDetailData =  new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/shiftRules/getAll?access_token='+TokenService.getAccessToken();
                    },
                    dataType: "json",
                }
            },
            error: function (e) {
                if (e.errorThrown.toString() === 'Unauthorized') {
                    alert('Unauthorized Access!');
                    window.location = '/account/login';
                }
            },
            pageSize: 5,
            schema: {
                model: {
                    id: "id",
                    fields: {
                        id: { type: "number", editable: false },
                        shiftRuleCode: { type: "string" },
                        descriptions: { type: "string" }
                    }
                }
            }
        });


        $scope.shiftRuleRosteringDetailGridOptions = {
            dataSource: $scope.shiftRuleRosteringDetailData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {
                    field: "shiftRuleCode",
                    title: "Shift Rule Code",
                    width: "200px"
                },
                {
                    field: "descriptions",
                    title: "Descriptions",
                    width: "250px"
                }
            ]
        };


        $scope.dataChange = function (e){

            var grid = e.sender;
            var rows = e.sender.select();
            var page = e.sender.dataSource.page();
            $scope.selectedEmployeeCodes[page] = [];
            rows.each(function(e) {
                var dataItem = grid.dataItem(this);
                $scope.selectedEmployeeCodes[page].push({'EmployeeCode':dataItem.employeeCode});
            });

        }

        $scope.searchEmployeeInfo = function(pSearchCriteria){
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

        $scope.EmployeeGridDataSource = new kendo.data.DataSource({
            type: "jsonp",
            transport: {
                read: {
                    url: function(){
                        if($scope.isShowShiftSelectGrid == true)
                            return $scope.baseUrl+'/employees/info/getAllByShift?access_token=' + TokenService.getAccessToken() +
                                '&pShiftNature=' + $scope.shiftNature+'&pShiftIds=' + $scope.selectedShiftIds;
                        else
                            return $scope.baseUrl+'/employees/info/getAllByShift?access_token=' + TokenService.getAccessToken() +
                                '&pShiftNature=' + $scope.shiftNature+'&pShiftIds=All';
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
                     }else{
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
            serverSorting: true,
            serverFiltering: true,
            serverPaging: true,
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
            pageable: true,
            filterable: {
                mode: "row",
                extra: false, //do not show extra filters
                operators: { // redefine the string operators
                    string: {
                        eq: "Is Equal To",
                        neq: "Is Not Equal To",
                        contains: "Contains",
                        startswith: "Starts With",
                        endswith: "Ends With"
                    }
                }
            },
            scrollable: true,
            change: $scope.dataChange,
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
                {selectable: true, width: "40px"},
                {
                    field: "employeeCode",
                    title: "Code",
                    width: "120px",
                    filterable: {
                        cell: {
                            operator: "startswith",
                            suggestionOperator: "startswith"
                        }
                    }
                },
                {
                    field: "punchCardNo",
                    title: "Punch Card",
                    width: "120px",
                    filterable: {
                        cell: {
                            operator: "startswith",
                            suggestionOperator: "startswith"
                        }
                    }
                },
                {
                    field: "firstName",
                    title: "Name",
                    width: "120px",
                    template: '<span>{{(dataItem.salutation==null?"":dataItem.salutation) +" "+(dataItem.firstName==null?"":dataItem.firstName)}}</span>',
                    filterable: {
                        cell: {
                            operator: "startswith",
                            suggestionOperator: "startswith"
                        }
                    }
                },
                {
                    field: "unit",
                    title: "Unit",
                    width: "120px",
                    filterable: {
                        cell: {
                            operator: "startswith",
                            suggestionOperator: "startswith"
                        }
                    }
                },
                {
                    field: "department",
                    title: "Department",
                    width: "120px",
                    filterable: {
                        cell: {
                            operator: "startswith",
                            suggestionOperator: "startswith"
                        }
                    }
                },
                {
                    field: "designation",
                    title: "Designation",
                    width: "120px",
                    filterable: {
                        cell: {
                            operator: "startswith",
                            suggestionOperator: "startswith"
                        }
                    }
                },
                {
                    field: "staffCategory",
                    title: "Staff Category",
                    width: "120px",
                    filterable: {
                        cell: {
                            operator: "startswith",
                            suggestionOperator: "startswith"
                        }
                    }
                },
                {
                    field: "doj",
                    title: "DOJ",
                    width: "100px",
                    template: '<span>{{dataItem.doj | date:"dd/MM/yyyy"}}</span>',
                    filterable: false
                },
                {
                    field: "doc",
                    title: "DOC",
                    width: "100px",
                    template: '<span>{{dataItem.doc | date:"dd/MM/yyyy"}}</span>',
                    filterable: false
                }
            ]
        };

        $scope.ShiftRosterProcessedEmpDataSource = new kendo.data.DataSource({
            type: "jsonp",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/employees/info/getAll?access_token='+TokenService.getAccessToken();
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
                        page: data.page = data.page - 1// as Spring page starts from 0
                    };

                    // Sorting
                    if (data.sort && data.sort.length > 0){
                        serverUrlParams.sortBy = data.sort[0].field;
                        serverUrlParams.sortOn = (data.sort[0].dir).toUpperCase();
                    }else{
                        serverUrlParams.sortBy = 'employeeCode';
                        serverUrlParams.sortOn = 'ASC';
                    }

                    // Filtering
                    if(data.filter != undefined){
                        serverUrlParams.filterBy = data.filter.filters[0].field;
                        serverUrlParams.filterOn = data.filter.filters[0].value;
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

        $scope.ShiftRosterProcessedEmpGridDataOptions = {
            dataSource: $scope.ShiftRosterProcessedEmpDataSource,
            sortable: true,
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
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {
                    field: "employeeCode",
                    title: "Code",
                    width: "150px"
                },
                {
                    field: "firstName",
                    title: "Name",
                    width: "150px",
                    template: '<span>{{(dataItem.salutation==null?"":dataItem.salutation) +" "+(dataItem.firstName==null?"":dataItem.firstName)}}</span>'
                },
                {
                    field: "punchCardNo",
                    title: "Punch Card",
                    width: "250px"
                }
            ]
        };

    });