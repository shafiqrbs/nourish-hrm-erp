app.controller("attendanceHistoryController",
    function ($rootScope, $scope, $uibModal, $http, $location, $timeout, $filter, Flash,BaseApiUrlService,
        EmployeeInfoService,TokenService) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl();
        $scope.pEmployeeCode = 'E1A000001';
        $scope.fromDate = new Date('2016-01-01');
        $scope.toDate = new Date('2016-01-31');

        function init() {
        }

        init();

        $scope.SearchAttendanceByDateRange = function(){
            $scope.AttendanceGridDataSource.query({
                page:1,
                pageSize:50,
                filter:{
                    filters:[]
                },
                fromDate:$scope.fromDate,
                toDate:$scope.toDate
            });
        }

        $scope.loadGeneralEmployeeInfo = function(pEmployeeCode){
           getEmployeeInfo(pEmployeeCode);
           $scope.isButtonDisabled = false;
        }

        $scope.AttendanceGridDataSource = new kendo.data.DataSource({
            type: "jsonp",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'attendances/dailyAttendance/get?access_token='+TokenService.getAccessToken();
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
                        filters:"",
                        fromDate:$scope.fromDate,
                        toDate:$scope.toDate
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

        $scope.AttendanceHistoryAllDataOptions = {
            dataSource: $scope.AttendanceGridDataSource,
            sortable: true,
            selectable:"row",
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
                            field: "workDate",
                            title: "Work date",
                            width: "100px",
                            template: '<span>{{dataItem.workDate | date:"dd/MM/yyyy"}}</span>',
                            filterable: false
                        },
                        {
                            field: "employeeCode",
                            title: "Code",
                            width: "100px"
                        },
                        {
                            field: "firstName",
                            title: "Name",
                            width: "110px",
                            template: '<span>{{(dataItem.salutation==null?"":dataItem.salutation) +" "+(dataItem.firstName==null?"":dataItem.firstName)}}</span>',
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
                            width: "110px",
                            filterable: {
                                cell: {
                                    operator: "startswith",
                                    suggestionOperator: "startswith"
                                }
                            }
                        },
                        {
                            field: "shiftID",
                            title: "Shift ID",
                            width: "100px"
                        },
                        {
                            field: "shiftType",
                            title: "Shift Type",
                            width: "100px"
                        },
                        {
                            field: "punchTime",
                            title: "Punch Time",
                            width: "100px",
                            template: '<span>{{dataItem.punchTime | date:"hh:mm"}}</span>',
                        },
                        {
                            field: "punchType",
                            title: "Punch Type",
                            width: "100px"
                        },
                        {
                            field: "isManual",
                            title: "Attn Type",
                            width: "100px"
                        },
                        {
                            field: "isLate",
                            title: "Is late?",
                            width: "100px"
                        }
                ]
            };
    });