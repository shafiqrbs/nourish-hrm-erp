app.controller("employeeRuleTagController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, Flash, BaseApiUrlService, TokenService,
              BonusRuleServices,ShiftPlanServices,EmployeeService) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl();
        var urlObject = $location.absUrl().split( '/' );
        $scope.isStepOneShow = true;
        $scope.isStepTwoShow = false;
        $scope.isStepThreeShow = false;
        $scope.selectedRuleTitle = "";
        $scope.isBonusRuleShow = false;
        $scope.isOTRuleShow = false;
        $scope.isFinalSettlementRuleShow = false;
        $scope.isAttnLateDeductionRuleShow = false;
        $scope.isAdditionalSalaryRuleShow = false;
        $scope.EmployeeRuleTagTab = "stepOne";


        function init() {
        }

        init();

        $scope.cancel = function(){
            alert("Canceled");
        }

        $scope.employeeRuleTag = function(employeeRuleName){
            if(employeeRuleName == "Bonus Rule"){
                $scope.isBonusRuleShow = true;
                $scope.isOTRuleShow = false;
                $scope.isFinalSettlementRuleShow = false;
                $scope.isAttnLateDeductionRuleShow = false;
                $scope.isAdditionalSalaryRuleShow = false;
                $scope.selectedRuleTitle = "Bonus Rule";

                getAllBonusRulesDDL();
            }
            else if(employeeRuleName == "OT Rule"){
                $scope.isBonusRuleShow = false;
                $scope.isOTRuleShow = true;
                $scope.isFinalSettlementRuleShow = false;
                $scope.isAttnLateDeductionRuleShow = false;
                $scope.isAdditionalSalaryRuleShow = false;
                $scope.selectedRuleTitle = "OT Rule";
            }
            else if(employeeRuleName == "ALD Rule"){
                $scope.isBonusRuleShow = false;
                $scope.isOTRuleShow = false;
                $scope.isFinalSettlementRuleShow = true;
                $scope.isAttnLateDeductionRuleShow = false;
                $scope.isAdditionalSalaryRuleShow = false;
                $scope.selectedRuleTitle = "Attendance Late Deduction Rule";
            }
            else if(employeeRuleName == "Final Settlement Rule"){
                $scope.isBonusRuleShow = false;
                $scope.isOTRuleShow = false;
                $scope.isFinalSettlementRuleShow = false;
                $scope.isAttnLateDeductionRuleShow = true;
                $scope.isAdditionalSalaryRuleShow = false;
                $scope.selectedRuleTitle = "Final Settlement Rule";
            }
            else if(employeeRuleName == "Additional Salary Rule"){
                $scope.isBonusRuleShow = false;
                $scope.isOTRuleShow = false;
                $scope.isFinalSettlementRuleShow = false;
                $scope.isAttnLateDeductionRuleShow = false;
                $scope.isAdditionalSalaryRuleShow = true;
                $scope.selectedRuleTitle = "Additional Salary Rule";
            }
            else{
                $scope.isBonusRuleShow = false;
                $scope.isOTRuleShow = false;
                $scope.isFinalSettlementRuleShow = false;
                $scope.isAttnLateDeductionRuleShow = false;
                $scope.isAdditionalSalaryRuleShow = false;
                $scope.selectedRuleTitle = "";
            }
        }

        function getAllBonusRulesDDL(){
             BonusRuleServices.getAllBonusRuleCode(TokenService.getAccessToken()).then(function(resp){
               $scope.bonusRulesList  =  resp;
                //alert(JSON.stringify(resp))
             });
          }

        $scope.openEmployeeRuleTagTab = function(pPage){
            if(pPage == "stepOne"){
                $scope.isStepOneShow = true;
                $scope.isStepTwoShow = false;
                $scope.isStepThreeShow = false;
                $scope.EmployeeRuleTagTab = "stepOne";
            }
            else if(pPage == "stepTwo"){
                $scope.isStepOneShow = false;
                $scope.isStepTwoShow = true;
                $scope.isStepThreeShow = false;
                $scope.EmployeeRuleTagTab = "stepTwo";
            }
            else{
                $scope.isStepOneShow = false;
                $scope.isStepTwoShow = false;
                $scope.isStepThreeShow = true;
                $scope.EmployeeRuleTagTab = "stepThree";
            }
        }

        $scope.searchEmployeeInfo = function(pEmployeeCode){
           if(pEmployeeCode !=""){
               $scope.EmployeeGridDataSource.query({
                    page:1,
                    pageSize:200,
                    filter:{
                        logic:"or",
                        filters:[
                            {field:"employeeCode", operator:"contains",value:pEmployeeCode}
                        ]
                    }
                });
           }
           else{
               $scope.EmployeeGridDataSource.read();
           }
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
                      page: data.page = data.page - 1// as Spring page starts from 0
                    };
                    // Sorting
                    if (data.sort && data.sort.length > 0)
                      serverUrlParams.sort = data.sort[0].field + ',' + data.sort[0].dir;

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

        $scope.EmployeeAllDataOptions = {
            dataSource: $scope.EmployeeGridDataSource,
            sortable: true,
            pageable: true,
            scrollable: true,
            change:$scope.EmployeeCodesSelect,
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
                {selectable: true, width: "50px"},
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

        $scope.searchProcessedEmployeeInfo = function(pEmployeeCode){
           if(pEmployeeCode !=""){
               $scope.ProcessedEmployeeGridDataSource.query({
                    page:1,
                    pageSize:200,
                    filter:{
                        logic:"or",
                        filters:[
                            {field:"employeeCode", operator:"contains",value:pEmployeeCode}
                        ]
                    }
                });
           }
           else{
               $scope.ProcessedEmployeeGridDataSource.read();
           }
        }

        $scope.ProcessedEmployeeGridDataSource = new kendo.data.DataSource({
            type: "jsonp",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/shift/workOffCalendar/getTempList?access_token='+TokenService.getAccessToken();
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
                    if (data.sort && data.sort.length > 0)
                      serverUrlParams.sort = data.sort[0].field + ',' + data.sort[0].dir;

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

        $scope.ProcessedEmployeeAllDataOptions = {
            dataSource: $scope.ProcessedEmployeeGridDataSource,
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