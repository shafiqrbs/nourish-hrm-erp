app.controller("CompanySettingController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter,BaseApiUrlService,TokenService,Flash,CompanySettingsService,CountryServices,CityServices,DesignationServices) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl()+'companySettings';
        $scope.companySettings = {};
        $scope.allCountries = {}
        $scope.allCities = {}
        $scope.companySettings.isDefault = true;

        function init() {
            //Get all countries for dropdown
            CountryServices.getAllCounties(TokenService.getAccessToken()).then(function(response){
                $scope.allCountries = response;
            });

            //Get all countries for dropdown
            CityServices.getAllCities(TokenService.getAccessToken()).then(function(response){
                $scope.allCities = response;
            });

            //Get all Designation for dropdown
            DesignationServices.getAllDesignation(TokenService.getAccessToken()).then(function(response){
                $scope.allDesignation = response;
            });
        }

        init();

        $scope.saveForm = function(isValid,companySettings){
            if(isValid){
                CompanySettingsService.save(companySettings,TokenService.getAccessToken()).then(function (resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                        $scope.companySettings = {};
                        $scope.CompanyGridDataSource.read();
                    }else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                });
            }
        }

         $scope.editForm = function (ev) {
            var element = $(ev.target);
            var row = element.closest("tr"),
              grid = element.closest("[kendo-grid]").data("kendoGrid");
            var item = grid.dataItem(row);

            CompanySettingsService.getCompanySettingById(item.id,TokenService.getAccessToken()).then(function (resp) {
                $scope.companySettings = resp;
            });
        }

         $scope.statusUpdateById = function (ev) {
            if(confirm("Are you sure you want to change status?")){
                var element = $(ev.target);
                var row = element.closest("tr"),
                  grid = element.closest("[kendo-grid]").data("kendoGrid");
                var item = grid.dataItem(row);

                var isActive = "";
                if(item.isActive == true)
                    isActive = false;
                else
                    isActive = true;

                CompanySettingsService.statusUpdateById(isActive,item.id,TokenService.getAccessToken()).then(function (resp) {
                    if(resp.isSuccess == true){
                        Flash.create('success', resp.successMessage, 'custom-class');
                        $scope.CompanyGridDataSource.read();
                    }else{
                        Flash.create('danger', resp.errorMessage, 'custom-class');
                    }
                });
            }
        }

         $scope.deleteRecordById = function (ev) {
            if(confirm("Are you sure you want to delete?")){
                var element = $(ev.target);
                var row = element.closest("tr"),
                  grid = element.closest("[kendo-grid]").data("kendoGrid");
                var item = grid.dataItem(row);

                CompanySettingsService.deleteRecordById(item.id,TokenService.getAccessToken()).then(function (resp) {
                    if(resp.isSuccess == true){
                        Flash.create('success', resp.successMessage, 'custom-class');
                        $scope.CompanyGridDataSource.read();
                    }else{
                        Flash.create('danger', resp.errorMessage, 'custom-class');
                    }
                });
            }
        }

        $scope.CompanyGridDataSource = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/findAllCompanySettings?access_token='+TokenService.getAccessToken();
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
                        Id: { type: "number", editable: false },
                        companyName: { type: "string" }
                    }
                }
            }
        });

        $scope.CompanyInfoDataOptions = {
            dataSource: $scope.CompanyGridDataSource,
            sortable: true,
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
                    title: "Actions",
                    headerAttributes: { style: "text-align:center" },
                    command: [
                     { template: '<a class="k-button k-button-icontext" style="min-width: 32px; padding:0;" href="javascript:void(0)" title="Click for edit" ng-click="editForm($event)"><i class="fa fa-edit" aria-hidden="true"></i></a> ' },
                     { template: '<a class="k-button k-button-icontext" style="min-width: 32px; padding:0;" href="javascript:void(0)" title="Click for delete" ng-click="deleteRecordById($event)"><i class="fa fa-trash" aria-hidden="true"></i></a> ' },
                     { template: '<a class="k-button k-button-icontext" style="min-width: 32px; padding:0;" href="javascript:void(0)" title="Click for update status" ng-click="statusUpdateById($event)"><i class="fa fa-check-square" aria-hidden="true"></i></a> ' }
                    ],
                    width: "150px"
                },
                {
                    field: "companyName",
                    title: "Company Name",
                    width: "160px"
                },
                {
                    field: "isActive",
                    title: "Status",
                    width: "120px",
                    attributes: { style: "text-align:center" },
                    template: function(data){
                                if(data.isActive == true)
                                    return '<i class="fa fa-check" aria-hidden="true"></i>';
                                else
                                    return '<i class="fa fa-times" aria-hidden="true"></i>';
                              }
                },
                {
                    field: "companyPhone",
                    title: "Phone",
                    width: "130px"
                },
                {
                    field: "contactName",
                    title: "Contact Name",
                    width: "180px"
                },
                {
                    field: "contactPhone",
                    title: "Phone",
                    width: "150px"
                },
                {
                    field: "contactEmail",
                    title: "Email",
                    width: "180px"
                }
            ]
        };
    });


