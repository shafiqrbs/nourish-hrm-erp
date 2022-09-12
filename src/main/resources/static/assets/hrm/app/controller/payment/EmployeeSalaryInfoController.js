app.controller("EmployeeSalaryInfoController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, Flash, BaseApiUrlService,EmployeeInfoService, SalaryRulesServices, EmployeeSalaryInfoServices, TokenService) {

      $scope.baseUrl = BaseApiUrlService.getBaseUrl();
      $scope.employeeCode = "";
      $scope.pSearchCriteria=""
      $scope.salaryRuleCode = "";
      $scope.IsViewButtonDisabled = true;
      $scope.employeeGrossSalary = 0;
      $scope.calculate = 0;
      $scope.employeeSalaryInfo={};

      function init(){
            getAllSalaryRulesDDL();
      }

      init();

      function getAllSalaryRulesDDL(){
         SalaryRulesServices.getAllSalaryRuleCode(TokenService.getAccessToken()).then(function(resp){
           $scope.salaryRulesList  =  resp;
            //alert(JSON.stringify(resp))
         });
      }

      $scope.selectEmployee = function (ev) {
         var employeeCode = ev.sender.dataItem(ev.sender.select()).employeeCode;
         if(employeeCode !=""){
           $scope.employeeCode = employeeCode;
           $scope.IsViewButtonDisabled = false;
         }else{
            $scope.IsViewButtonDisabled = true;
         }

         //$scope.salaryRuleCode = "";
         getAllSalaryRulesDDL();
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

    $scope.EmployeeGridDataSource = new kendo.data.DataSource({
        type: "jsonp",
        transport: {
            read: {
                url: function(){
                    return $scope.baseUrl+'/employees/info/getAll?access_token='+TokenService.getAccessToken()+'&pCallRequestFrom="LeaveAllocation"';
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

    $scope.saveEmployeeSalary = function(employeeCode,salaryRuleCode,employeeGrossSalary){

        $scope.employeeSalaryInfo.employeeCode = employeeCode;
        $scope.employeeSalaryInfo.salaryRuleCode = salaryRuleCode;
        $scope.employeeSalaryInfo.employeeGrossSalary = employeeGrossSalary;

        EmployeeSalaryInfoServices.SaveOrUpdate($scope.employeeSalaryInfo,TokenService.getAccessToken()).then(function(resp) {
            if(resp.data.isSuccess == true){
                Flash.create('success', resp.data.successMessage, 'custom-class');
            }
            else{
                Flash.create('danger', resp.data.errorMessage, 'custom-class');
            }
        })
    }

     $scope.CalculateSalary = function(){
        $scope.calculate = 1;
        $scope.EmployeeSalaryInfoGridDataSource.read();
     }

     $scope.getSalaryRuleInfo = function(){
         EmployeeSalaryInfoServices.getEmployeeGrossSalary(TokenService.getAccessToken(),$scope.salaryRuleCode,$scope.employeeCode).then(function(resp){
            $scope.employeeGrossSalary  =  resp.grossSalary;
            $scope.EmployeeSalaryInfoGridDataSource.read();
         });
     }

     $scope.EmployeeSalaryInfoGridDataSource = new kendo.data.DataSource({
          type: "json",
          transport: {
              read: {
                  url: function(){
                      return $scope.baseUrl+'/employeeSalaryInfo/get?access_token='+TokenService.getAccessToken()+"&pEmployeeCode="+$scope.employeeCode+"&pSalaryRuleCode="+$scope.salaryRuleCode+"&pCalculate="+$scope.calculate+"&pGrossSalary="+$scope.employeeGrossSalary;
                  },
                  dataType: "json",
              }
          },
          error: function (e) {
              if (e.errorThrown.toString() === 'Unauthorized') {
                  alert('Unauthorized Access!');
                  window.location = '/auth/login';
              }
          },
          pageSize: 10,
          schema: {
              model: {
                  id: "id",
                  fields: {
                      Id: { type: "number", editable: false },
                      salaryHeadID: { type: "string" },
                      sCriteria: { type: "string" },
                      amount: { type: "number" },
                      netAmount: { type: "number" }
                  }
              }
          },
          aggregate: [
                { field: "netAmount", aggregate: "sum" }
            ]
      });

     $scope.employeeSalaryInfoGridOptions = {
         dataSource: $scope.EmployeeSalaryInfoGridDataSource,
         sortable: true,
         pageable: false,
         scrollable: true,
         dataBound: function () {
             this.expandRow(this.tbody.find("tr.k-master-row").first());
         },
         columns: [
            {
                field: "salaryHeadID",
                title: "Salary Head",
                width: "150px",
                footerTemplate:"GROSS TOTAL"
            },
            {
                field: "amount",
                title: "Amount",
                width: "120px",
                attributes:{style:"text-align:right;"},
                format: "{0:n0}"
            },
            {
                field: "netAmount",
                title: "Net Amount",
                width: "150px",
                attributes:{style:"text-align:right;"},
                footerTemplate:"<div style='text-align: right;'>#= kendo.toString(sum, '\\#\\#,\\#') # </div>",
                format: "{0:n0}"
            }
         ]
     };

     $scope.updateSalaryInfoModel = function(dataItem,amount){
        //alert(amount);
        dataItem.netAmount=amount;
        console.log(dataItem);
     }
});