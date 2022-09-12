app.controller("CountryController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, Flash, BaseApiUrlService, TokenService,CountryServices) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl();
        $scope.country = {};
        $scope.country.isDefault = true;
        $scope.IsPopup = false;
        var pathObj = $location.path().split("/");

        function init() {
            // For inline popup
            if(pathObj[1] == "employees"){
                $scope.IsPopup = true;
            }
        }

        init();

        $scope.saveForm = function(isValid,country){
            if(isValid){
                CountryServices.save(country,TokenService.getAccessToken()).then(function(resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                        $scope.country = {};
                        $scope.CountryGridDataSource.read();
                    }else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                })
            }
        }

        $scope.cancel = function(){
            $scope.country = {};
            $scope.CountryGridDataSource.read();
        }

        $scope.editForm = function (ev) {
            var id = ev.sender.dataItem(ev.sender.select()).id;
            CountryServices.getCountryById(id,TokenService.getAccessToken()).then(function (resp) {
                $scope.country = resp;
            });
        }

        $scope.CountryGridDataSource = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/countries/getAllCountry?access_token='+TokenService.getAccessToken();
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
                        name: { type: "string" }
                    }
                }
            }
        });

        $scope.CountryInfoDataOptions = {
            dataSource: $scope.CountryGridDataSource,
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
                    title: "Country Name",
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

app.controller("CountryModalController",
    function ($rootScope, $scope, $uibModalInstance) {
    //Close modal
     $scope.exitModal = function(){
        $uibModalInstance.close();
        $rootScope.$broadcast("modalToCountryDataLoad");
     }
});