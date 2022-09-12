app.controller("CityController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, Flash, BaseApiUrlService, TokenService,CityServices) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl();
        $scope.city = {};
        $scope.city.isDefault = true;
        $scope.IsPopup = false;
        var pathObj = $location.path().split("/");

        function init() {
            // For inline popup
            if(pathObj[1] == "employees"){
                $scope.IsPopup = true;
            }
        }

        init();

        $scope.saveForm = function(isValid,city){
            if(isValid){
                CityServices.save(city,TokenService.getAccessToken()).then(function(resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                        $scope.city = {};
                        $scope.CityGridDataSource.read();
                    }else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                })
            }
        }

        $scope.cancel = function(){
            $scope.city = {};
            $scope.CityGridDataSource.read();
        }

        $scope.editForm = function (ev) {
            var id = ev.sender.dataItem(ev.sender.select()).id;
            CityServices.getCityById(id,TokenService.getAccessToken()).then(function (resp) {
                $scope.city = resp;
            });
        }

        $scope.CityGridDataSource = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/cities/getAllCity?access_token='+TokenService.getAccessToken();
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
                        name: { type: "string" }
                    }
                }
            }
        });

        $scope.CityInfoDataOptions = {
            dataSource: $scope.CityGridDataSource,
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
                    field: "name",
                    title: "City Name",
                    width: "180px"
                },
                {
                    field: "displayCode",
                    title: "Display Code",
                    width: "180px"
                },
                {
                    field: "descriptions",
                    title: "Descriptions"
                }
            ]
        };

    });

app.controller("CityModalController",
    function ($rootScope, $scope, $uibModalInstance) {
    //Close modal
     $scope.exitModal = function(){
        $uibModalInstance.close();
        $rootScope.$broadcast("modalToCityDataLoad");
     }
});