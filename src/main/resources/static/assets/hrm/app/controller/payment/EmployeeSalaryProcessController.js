app.controller("EmployeeSalaryProcessController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, Flash, BaseApiUrlService,EmployeeInfoService, SalaryRulesServices, EmployeeSalaryInfoServices, EmployeeSalaryProcessServices, TokenService) {

      $scope.baseUrl = BaseApiUrlService.getBaseUrl();
      $scope.isShowStepOne = true;
      $scope.isShowStepTwo = false;
      $scope.selectedEmployees=[];
      $scope.salaryProcessInfo=[];
      $scope.salaryFromDate = "";
      $scope.salaryToDate = "";
      $scope.pSearchCriteria = "";

      function init(){
      }

      init();

    $scope.openSalaryProcessTab = function(pageName){
        if(pageName =="stepOne"){
          $scope.isShowStepOne = true;
          $scope.isShowStepTwo = false;
        }
        else if(pageName =="stepTwo"){
          $scope.isShowStepOne = false;
          $scope.isShowStepTwo = true;
        }
    }

    $scope.salaryProcess = function(){
        EmployeeSalaryProcessServices.SalaryProcessAndSave($scope.salaryFromDate,$scope.salaryToDate,$scope.selectedEmployees,TokenService.getAccessToken()).then(function(resp){
            if(resp.data.isSuccess == true){
                Flash.create('success', resp.data.successMessage, 'custom-class');
            }
            else{
                Flash.create('danger', resp.data.errorMessage, 'custom-class');
            }
        });
    }

    $scope.EmployeeCodesSelect = function (e){
        var grid = e.sender;
        var rows = e.sender.select();
        rows.each(function(event) {
            var dataItem = grid.dataItem(this);
            $scope.selectedEmployees.push({'employeeCode':dataItem.employeeCode});
            //$scope.selectedEmployeeCodes =  $scope.selectedEmployeeCodes  + dataItem.employeeCode + ",";
        })
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
                    return $scope.baseUrl+'/employees/info/getAll?access_token='+TokenService.getAccessToken()+'&pCallRequestFrom="SalaryProcess"';
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
        change:$scope.EmployeeCodesSelect,
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
});