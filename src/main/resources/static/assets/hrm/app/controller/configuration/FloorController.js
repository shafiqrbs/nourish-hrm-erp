app.controller("FloorController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter,BaseApiUrlService,TokenService,Flash,FloorService,BuildingService) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl()+'floor';
        $scope.floor = {};
        $scope.building = {}
        function init() {
            //Get all building settings for dropdown
            BuildingService.getAllBuilding(TokenService.getAccessToken()).then(function(response){
                $scope.building = response;
            });
        }

        init();

        $scope.saveForm = function(isValid,floor){
            if(isValid){
                FloorService.save(floor,TokenService.getAccessToken()).then(function(resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                        $scope.floor = {};
                        $scope.FloorGridDataSource.read();
                    }else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                })
            }
        }

         $scope.editForm = function (ev) {
            var id = ev.sender.dataItem(ev.sender.select()).id;
            FloorService.getFloorById(id,TokenService.getAccessToken()).then(function (resp) {
                $scope.floor = resp;
            });
        }

        $scope.FloorGridDataSource = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/findAllFloor?access_token='+TokenService.getAccessToken();
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
                        floorName: { type: "string" }
                    }
                }
            }
        });

        $scope.CompanyFloorOptions = {
            dataSource: $scope.FloorGridDataSource,
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
                    field: "floorName",
                    title: "Floor Name",
                    width: "180px"
                },
                {
                    field: "floorCode",
                    title: "Code",
                    width: "100px"
                },
                {
                    field: "sequence",
                    title: "Sequence",
                    width: "120px"
                },
                {
                    field: "buildingName",
                    title: "Building Name",
                    width: "180px"
                },
                {
                    field: "buildingCode",
                    title: "Building Code",
                    width: "100px"
                }
            ]
        };
    });


