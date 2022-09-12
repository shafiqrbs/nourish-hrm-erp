app.controller("SalaryHeadController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, Flash, BaseApiUrlService,SalaryHeadServices, TokenService) {

      $scope.baseUrl = "/hrm/api/v1/salaryHead";
      $scope.salaryHeadTypeList = [];
      $scope.SalaryHead = {};
      $scope.headTypeDDL = {};
      console.log("1.C R U D salary head !!!");
      //#################### C R U D  salary head  ########## //

      function init(){
            SalaryHeadServices.GetHeadType(TokenService.getAccessToken()).then(function (resp) {
                $scope.headTypeDDL = resp;
            });
      }

      init();

      $scope.editForm = function (ev) {
          var vId = ev.sender.dataItem(ev.sender.select()).id;
          SalaryHeadServices.get(vId,TokenService.getAccessToken()).then(function (resp) {
            console.log(resp);
              $scope.SalaryHead = resp;
          });
      }

    $scope.saveForm = function(isValid,SalaryHead){
        console.log("save form in");
        console.log(SalaryHead);
        if(isValid){
            SalaryHeadServices.SaveOrUpdate(SalaryHead,TokenService.getAccessToken()).then(function(resp) {
                if(resp.data.isSuccess == true){
                    Flash.create('success', resp.data.successMessage, 'custom-class');
                    $scope.SalaryHead = {};
                    $scope.SalaryHeadGridDataSource.read();
                }else{
                    Flash.create('danger', resp.data.errorMessage, 'custom-class');
                }
            })
        }
    }

    $scope.cancel = function(){
        $scope.SalaryHead = {};
        $scope.SalaryHeadGridDataSource.read();
    }

      console.log("1.read salary  head !!!");
     //######### Read Salary Head  ##############//

      $scope.SalaryHeadGridDataSource = new kendo.data.DataSource({
                 type: "json",
                 transport: {
                     read: {
                         url: function(){
                             return $scope.baseUrl+'/getAllSalaryHead?access_token='+TokenService.getAccessToken();
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
                },
                {
                    field: "salaryHeadShortName",
                    title: "Short Name",
                    width: "120px"
                }
            ]
        };


     });