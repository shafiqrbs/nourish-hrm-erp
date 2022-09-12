app.controller("maternityLeaveRuleDefinitionManageController",
    function ($rootScope, $scope, $uibModal, $http, $location, $timeout, $filter, Flash,BaseApiUrlService,
        MaternityLeaveRuleDefinitionServices, LeaveRuleServices, SalaryHeadServices, TokenService) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl();
        $scope.isDefaultImage = true;
        $scope.leaveYear = {};

        function init() {
            //Get leave year
            getAllMaternityLeaveRule();
        }

        function getAllMaternityLeaveRule(){
            LeaveRuleServices.getAllMaternityLeaveRule(TokenService.getAccessToken()).then(function(resp){
                $scope.maternityLeaveRules = resp;
            });
        }

        $scope.saveForm = function(isValid,maternityLeaveRuleDef){
            if(isValid){

                MaternityLeaveRuleDefinitionServices.save(maternityLeaveRuleDef,TokenService.getAccessToken()).then(function(resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                    }else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                })
            }
        }

        $scope.getAllMaternityLeavePolicyInfo = function(pMaternityLeaveRuleID){
            MaternityLeaveRuleDefinitionServices.getAllMaternityLeavePolicyInfo(pMaternityLeaveRuleID,TokenService.getAccessToken()).then(function(resp){
                $scope.maternityLeaveRuleDef = resp;
                console.log(resp);
            });
        }

        $scope.SalaryHeadGridDataSource = new kendo.data.DataSource({
                 type: "json",
                 transport: {
                     read: {
                         url: function(){
                             return "/hrm/api/v1/salaryHead/getAllSalaryHead?access_token="+TokenService.getAccessToken();
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
                 pageSize: 20,
                 schema: {
                     model: {
                         id: "id",
                         fields: {
                             Id: { type: "number", editable: false },
                             buildingName: { type: "string" }
                         }
                     }
                 }
             });

      $scope.salaryHeadGridOptions = {
            dataSource: $scope.SalaryHeadGridDataSource,
            sortable: true,
            pageable: true,
            scrollable: true,
            selectable:"row",
            change: $scope.editForm,
            pageable: {
                refresh: true,
                pageSizes: [5, 10, 20],
                buttonCount: 5,
                messages: {
                    itemsPerPage: "Records Show",
                    display: "{0} - {1} of {2} Records"
                }
            },
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {
                    field: "salaryHeadID",
                    title: "Code",
                    width: "150px"
                },
                {
                    field: "descriptions",
                    title: "descriptions",
                    width: "150px"
                },
                {
                    field: "headType",
                    title: "Header Type",
                    width: "120px"
                }
            ]
        };

        init();

    });