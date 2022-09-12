app.controller("BuildingController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter,BaseApiUrlService,TokenService,Flash,BuildingService,CompanySettingsService) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl()+'building';
        $scope.building = {};
        $scope.building.isDefault =  true;
        $scope.companySetting = {}
        $scope.IsPopup = true;
        function init() {
            //Get all company settings for dropdown
            CompanySettingsService.getAllCompanySettings(TokenService.getAccessToken()).then(function(response){
                $scope.companySetting = response;
            });
        }

        init();

        $scope.saveForm = function(isValid,building){
            if(isValid){
                BuildingService.save(building,TokenService.getAccessToken()).then(function(resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                        $scope.building = {};
                        $scope.BuildingGridDataSource.read();
                    }else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                })
            }
        }

        $scope.editForm = function (ev) {
            var id = ev.sender.dataItem(ev.sender.select()).id;
            BuildingService.getBuildingById(id,TokenService.getAccessToken()).then(function (resp) {
                $scope.building = resp;
            });
        }

        $scope.BuildingGridDataSource = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/findAllBuilding?access_token='+TokenService.getAccessToken();
                    },
                    dataType: "json",
                }
            },
            error: function (e) {
                if (e.errorThrown.toString() === 'Unauthorized') {
                    alert('Unauthorized Access!');
                    window.location = '/account/login';
                }
            },
            pageSize: 10,
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

        $scope.CompanyBuildingOptions = {
            dataSource: $scope.BuildingGridDataSource,
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
                    field: "buildingName",
                    title: "Building Name",
                    width: "180px"
                },
                {
                    field: "buildingCode",
                    title: "Building Code",
                    width: "120px"
                },
                {
                    field: "sequence",
                    title: "Sequence",
                    width: "120px"
                },
                {
                    field: "companyName",
                    title: "Company Name",
                    width: "250px"
                }
            ]
        };
    });


