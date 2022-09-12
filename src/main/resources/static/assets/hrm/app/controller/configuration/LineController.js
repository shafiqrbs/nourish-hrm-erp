app.controller("LineController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter,BaseApiUrlService,TokenService,Flash,LineService,FloorService) {

        //create by Navid
        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl()+'line';
        $scope.line = {};
        $scope.building = {}
        $scope.floor = {};
        function init() {
            //Get all company settings for dropdown
            FloorService.getAllFloor(TokenService.getAccessToken()).then(function(response){
                $scope.floors = response;
            });
        }

        init();

        $scope.saveForm = function(isValid,line){
            if(isValid){
                LineService.save(line,TokenService.getAccessToken()).then(function(resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                        $scope.line = {};
                        $scope.LineGridDataSource.read();
                    }
                    else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                })
            }
        }

        $scope.editForm = function (ev) {
            var id = ev.sender.dataItem(ev.sender.select()).id;
            LineService.getLineById(id,TokenService.getAccessToken()).then(function (resp) {
                $scope.line = resp;
            });
        }

        $scope.LineGridDataSource = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/findAllLine?access_token='+TokenService.getAccessToken();
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
            pageSize: 5,
            schema: {
                model: {
                    id: "id",
                    fields: {
                        lineName: { type: "string" }
                    }
                }
            }
        });

        $scope.CompanyLineOptions = {
            dataSource: $scope.LineGridDataSource,
            sortable: true,
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
                    field: "lineName",
                    title: "Line Name",
                    width: "180px"
                },
                {
                    field: "lineCode",
                    title: "Line Code",
                    width: "150px"
                },
                {
                    field: "sequence",
                    title: "Sequence",
                    width: "150px"
                },
                {
                    field: "floorName",
                    title: "Floor",
                    width: "180px"
                }
            ]
        };
    });


