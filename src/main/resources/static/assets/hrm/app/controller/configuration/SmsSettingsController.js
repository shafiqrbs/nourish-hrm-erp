app.controller("SmsSettingsController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter,BaseApiUrlService,TokenService,Flash,SmsSettingsService,CompanySettingsService) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl()+'sMSSettings';
        $scope.sMSSettings = {};
        $scope.companySetting = {}
        function init() {
            //Get all company settings for dropdown
            CompanySettingsService.getAllCompanySettings(TokenService.getAccessToken()).then(function(response){
                $scope.companySetting = response;
            });
        }

        init();

        $scope.saveForm = function(isValid,sMSSettings){
            if(isValid){
                SmsSettingsService.save(sMSSettings,TokenService.getAccessToken()).then(function(resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                        $scope.sMSSettings = {};
                        $scope.SmsSettingsGridDataSource.read();
                    }else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                })
            }
        }

        $scope.editForm = function (ev) {
            var element = $(ev.target);
            var row = element.closest("tr"),
              grid = element.closest("[kendo-grid]").data("kendoGrid");
            var item = grid.dataItem(row);
            SmsSettingsService.getSmsSettingsById(item.id,TokenService.getAccessToken()).then(function (resp) {
                $scope.sMSSettings = resp;
            });
        }

        $scope.SmsSettingsGridDataSource = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/findAllSMSSettings?access_token='+TokenService.getAccessToken();
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
                        sectionName: { type: "string" }
                    }
                }
            }
        });

        $scope.CompanySmsSettingsOptions = {
            dataSource: $scope.SmsSettingsGridDataSource,
            sortable: true,
            pageable: true,
            scrollable: true,
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
                {selectable: true, width: "30px"},
                {
                    title: "Actions",
                    headerAttributes: { style: "text-align:center" },
                    command: [
                        { template: '<a class="k-button k-button-icontext" style="min-width: 32px; padding:0;" href="javascript:void(0)" title="Edit sMSSettings" ng-click="editForm($event)"><i class="fa fa-edit" aria-hidden="true"></i></a> ' },
                    ],
                    width: 80
                },
                {
                    field: "sectionName",
                    title: "section Name",
                    width: "200px"
                },
                {
                    field: "sectionCode",
                    title: "section Code",
                    width: "100px"
                },
                {
                    field: "sequence",
                    title: "Sequence",
                    width: "100px"
                },
                {
                    field: "companyName",
                    title: "Company Name",
                    width: "250px"
                },
                {
                    field: "branch",
                    title: "Branch",
                    width: "150px"
                },
                {
                    field: "notes",
                    title: "Notes",
                    width: "150px"
                },
                {
                    field: "isDefault",
                    title: "Is Default",
                    width: "100px"
                }
            ]
        };
    });


