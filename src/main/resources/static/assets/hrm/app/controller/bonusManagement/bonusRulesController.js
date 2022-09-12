/* developed by Sohag 10/27/2018 */

app.controller("bonusRulesController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, Flash, BaseApiUrlService, BonusRuleServices,
        StaffCategoryServices, SalaryHeadServices, TokenService) {

      //Initialization
      $scope.baseUrl = "/hrm/api/v1/bonus";
      $scope.pBonusRuleCode = ""
      $scope.IsAddNewBonusRule = true;
      $scope.IsAddNewBonusRuleInput = false;
      $scope.IsFixed = false;
      $scope.IsPercentage = true;
      $scope.bonusRulesInfo = {};
      $scope.bonusRulesInfo.sCriteria = "%";

      function init(){
         getAllBonusRulesDDL();
         getAllStaffCategoriesDDL();
         getAllSalaryHeadForDDL();
      }

      init();

      $scope.newBonusRuleToggleBtn = function(pButton){
          if(pButton == "New"){
             $scope.IsAddNewBonusRule = true;
             $scope.IsAddNewBonusRuleInput = false;
          }
          else{
             $scope.IsAddNewBonusRuleInput = true;
             $scope.IsAddNewBonusRule = false;

            $scope.bonusRulesInfo = {};
            $scope.pBonusRuleCode = "";
            $scope.BonusRulesGridDataSource.read();
            $scope.BonusRulesApprovedGridDataSource.read();
          }
      }

      $scope.fixedOrPercentage = function(amountType){
           if(amountType == "F"){
                $scope.IsFixed = true;
                $scope.IsPercentage = false;
           }
           else{
                $scope.IsFixed = false;
                $scope.IsPercentage = true;
           }
      }

      //.load LoadDropdown

      function getAllBonusRulesDDL(){
         BonusRuleServices.getAllBonusRuleCode(TokenService.getAccessToken()).then(function(resp){
           $scope.bonusRulesList  =  resp;
            //alert(JSON.stringify(resp))
         });
      }

      function getAllStaffCategoriesDDL(){
        StaffCategoryServices.getAllStaffCategory(TokenService.getAccessToken()).then(function(data){
            $scope.staffCategories = data;
        });
      }

      function getAllSalaryHeadForDDL(){
          SalaryHeadServices.getAll(TokenService.getAccessToken()).then(function(res){
            $scope.salaryHeadList = res;
            console.log($scope.salaryHeadList);
          });
      }

    $scope.saveForm = function(isValid,BonusRule){
        if(isValid){
            BonusRuleServices.SaveOrUpdate(BonusRule,TokenService.getAccessToken()).then(function(resp) {
                if(resp.data.isSuccess == true){
                    Flash.create('success', resp.data.successMessage, 'custom-class');
                    $scope.bonusRulesInfo = {};

                    $scope.pBonusRuleCode = BonusRule.bonusCode;
                    $scope.BonusRulesGridDataSource.read();
                    $scope.BonusRulesApprovedGridDataSource.read();
                    BonusRuleServices.getAllBonusRuleByRuleCode(TokenService.getAccessToken(),BonusRule.bonusCode).then(function(resp){
                      $scope.bonusRulesInfo = resp;
                      $scope.bonusRulesInfo.effectiveDate = $filter('date')(resp.effectiveDate, "yyyy-MM-dd");
                    });
                }else{
                    Flash.create('danger', resp.data.errorMessage, 'custom-class');
                }
            })
        }
    }

    $scope.cancel = function(){
        $scope.bonusRulesInfo = {};
        $scope.BonusRulesGridDataSource.read();
    }

      $scope.editForm = function (ev) {
          var vId = ev.sender.dataItem(ev.sender.select()).id;
          var vBonusRuleCode = ev.sender.dataItem(ev.sender.select()).bonusCode;
          BonusRuleServices.getBonusPolicyDetailInfoById(TokenService.getAccessToken(),vBonusRuleCode,vId).then(function (resp) {
              console.log(resp);
            $scope.bonusRulesInfo = resp;
            $scope.bonusRulesInfo.effectiveDate = $filter('date')(resp.effectiveDate, "yyyy-MM-dd");
          });
      }

      $scope.getBonusRuleDetailsByCode = function(pBonusRuleCode){
            $scope.pBonusRuleCode = pBonusRuleCode;
            $scope.BonusRulesGridDataSource.read();
            $scope.BonusRulesApprovedGridDataSource.read();
            BonusRuleServices.getAllBonusRuleByRuleCode(TokenService.getAccessToken(),pBonusRuleCode).then(function(resp){
              $scope.bonusRulesInfo = resp;
              $scope.bonusRulesInfo.effectiveDate = $filter('date')(resp.effectiveDate, "yyyy-MM-dd");
            });
      }

     $scope.BonusRulesGridDataSource = new kendo.data.DataSource({
          type: "json",
          transport: {
              read: {
                  url: function(){
                      return $scope.baseUrl+'/bonusRule/getPolicyDetailsByCode?access_token='+TokenService.getAccessToken()+"&pBonusRuleCode="+$scope.pBonusRuleCode;
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
                  id: "bonusPaymentPolicyId",
                  fields: {
                      Id: { type: "number", editable: false },
                      bonusCode: { type: "string" },
                      staffCategory: { type: "string" },
                      minServiceLen: { type: "string" },
                      maxServiceLen: { type: "string" },
                      remarks: { type: "string" }
                  }
              }
          }
      });

     $scope.bonusRulesGridOptions = {
         dataSource: $scope.BonusRulesGridDataSource,
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
                 field: "staffCategory",
                 title: "Staff Category",
                 width: "180px"
             },
             {
                 field: "minServiceLen",
                 title: "Min Service Length",
                 width: "200px"
             },
             {
                 field: "maxServiceLen",
                 title: "Max Service Length",
                 width: "200px"
             },
             {
                 field: "remarks",
                 title: "Remarks",
                 width: "250px"
             }

         ]
     };

     $scope.BonusRulesApprovedGridDataSource = new kendo.data.DataSource({
          type: "json",
          transport: {
              read: {
                  url: function(){
                      return $scope.baseUrl+'/bonusRule/getBonusEffectiveDateByCode?access_token='+TokenService.getAccessToken()+"&pBonusRuleCode="+$scope.pBonusRuleCode;
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
                      bonusCode: { type: "string" },
                      effectiveDate: { type: "string" }
                  }
              }
          }
      });

     $scope.bonusRulesApprovedGridOptions = {
         dataSource: $scope.BonusRulesApprovedGridDataSource,
         sortable: true,
         pageable: true,
         scrollable: true,
         selectable:"row",
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
                 field: "effectiveDate",
                 title: "Effective Date",
                 width: "180px",
                 template: '<span>{{dataItem.effectiveDate | date:"MM/dd/yyyy"}}</span>'
             },
             {
                 field: "isApproved",
                 title: "Approved Status",
                 width: "200px",
                 template: '<input type="checkbox" checked />'
             }
         ]
     };

 });