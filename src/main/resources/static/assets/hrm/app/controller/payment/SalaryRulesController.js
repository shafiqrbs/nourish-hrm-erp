/* developed by Mosaddik bin hafiz 7/7/2018 */

app.controller("SalaryRulesController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, Flash, BaseApiUrlService,SalaryRulesServices, TokenService,SalaryHeadServices) {

      //Initialization
      $scope.baseUrl = "/hrm/api/v1/salaryRules";
      $scope.pSalaryRuleCode = ""
      $scope.IsAddNewSalaryRule = true;
      $scope.IsAddNewSalaryRuleInput = false;
      $scope.IsParentHead = false;
      $scope.SalaryRule = {};
      $scope.IsSalaryHeadDisabled = false;
      console.log("1.C R U D salary Roles !!!");
      //#################### C R U D  salary Rules  ########## //

      function init(){
         getAllSalaryRulesDDL();
         getAllSalaryHeadForDDL();
      }

      init();

      $scope.newSalaryPlanToggleBtn = function(pButton){
          if(pButton == "New"){
             $scope.IsAddNewSalaryRule = true;
             $scope.IsAddNewSalaryRuleInput = false;
          }
          else{
             $scope.IsAddNewSalaryRuleInput = true;
             $scope.IsAddNewSalaryRule = false;
          }
      }

      $scope.ParentHeadToggle = function(amountType){
           if(amountType == "F"){
                $scope.IsParentHead = false;
           }
           else{
                $scope.IsParentHead = true;
           }
      }

      //.load LoadDropdown

      function getAllSalaryRulesDDL(){
         SalaryRulesServices.getAllSalaryRuleCode(TokenService.getAccessToken()).then(function(resp){
           $scope.salaryRulesList  =  resp;
            //alert(JSON.stringify(resp))
         });
      }

      function getAllSalaryHeadForDDL(){
          SalaryHeadServices.getAll(TokenService.getAccessToken()).then(function(res){
            $scope.salaryHeadList = res;
            console.log($scope.salaryHeadList);
          });
      }

    $scope.addNewSalaryCode = function(){
        console.log("addNewSalaryCode In");
        $("#salaryRuleCode").addClass('hidden');
        $("#add-new-plus-icon").addClass('hidden');
        $("#NewSalaryCode").removeClass('hidden');
    }

    $scope.InitializeNewForm = function(){
        $scope.IsSalaryHeadDisabled = false;
        $scope.IsAddNewSalaryRule = true;
        $scope.SalaryRule.id = undefined;
        $scope.SalaryRule.salaryHeadID = "";
        $scope.SalaryRule.parentHeadValue = "";
        $scope.SalaryRule.sCriteria = "";
        $scope.SalaryRule.parentHeadID = "";
        $scope.SalaryRulesGridDataSource.read();
    }

    $scope.saveForm = function(isValid,SalaryRule){
        console.log(SalaryRule);
        if(isValid){
            SalaryRulesServices.SaveOrUpdate(SalaryRule,TokenService.getAccessToken()).then(function(resp) {
                if(resp.data.isSuccess == true){
                    Flash.create('success', resp.data.successMessage, 'custom-class');
                    $scope.SalaryRule = {};
                    $scope.SalaryRulesGridDataSource.read();
                }else{
                    Flash.create('danger', resp.data.errorMessage, 'custom-class');
                }
            })
        }
    }

    $scope.cancel = function(){
        $scope.SalaryRule = {};
        $scope.SalaryRule.salaryRuleCode = $scope.pSalaryRuleCode;
        $scope.SalaryRulesGridDataSource.read();
    }

      $scope.editForm = function (ev) {
          var vId = ev.sender.dataItem(ev.sender.select()).id;
          SalaryRulesServices.get(vId,TokenService.getAccessToken()).then(function (resp) {
              console.log(resp);
              $scope.SalaryRule = resp;
              if(resp.id > 0){
                $scope.IsSalaryHeadDisabled = true;
                $scope.IsAddNewSalaryRule = false;
                if(resp.sCriteria == "%")
                    $scope.IsParentHead = true;
                else
                    $scope.IsParentHead = false;
              }
          });
      }

      console.log("1.read salary  Rules  !!!");
     //######### Read Salary Head  ##############//

     $scope.getAllSalaryRuleByCode = function(pSalaryRuleCode){
        $scope.pSalaryRuleCode = pSalaryRuleCode;
        $scope.SalaryRulesGridDataSource.read();
     }

     $scope.SalaryRulesGridDataSource = new kendo.data.DataSource({
          type: "json",
          transport: {
              read: {
                  url: function(){
                      return $scope.baseUrl+'/getAllSalaryRuleByRuleCode?access_token='+TokenService.getAccessToken()+"&pSalaryRuleCode="+$scope.pSalaryRuleCode;
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
                      salaryRuleCode: { type: "string" },
                      formula1: { type: "string" }
                  }
              }
          }
      });

     $scope.salaryRulesGridOptions = {
         dataSource: $scope.SalaryRulesGridDataSource,
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
                 title: "salary Head ID",
                 width: "120px"
             },
             {
                 field: "salaryRuleCode",
                 title: "salaryRuleCode",
                 width: "120px"
             },
             {
                 field: "formula1",
                 title: "formula1",
                 width: "250px"
             }

         ]
     };

 });