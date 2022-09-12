app.controller("EmailSettingsController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter,BaseApiUrlService,TokenService,Flash,EmailSettingsService) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl()+'emailSettings';
        $scope.emailSettings = {};
        function init() {
            //TokenService.getToken();
        }

        init();

        $scope.saveForm = function(isValid,emailSettings){
            if(isValid){
                EmailSettingsService.save(emailSettings,TokenService.getAccessToken()).then(function (resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                        $scope.emailSettings = {};
                        $scope.EmailSettingsGridDataSource.read();
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

            EmailSettingsService.getEmailSettingsById(item.id,TokenService.getAccessToken()).then(function (resp) {
                $scope.emailSettings = resp;
            });
        }

        $scope.EmailSettingsGridDataSource = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/findAllEmailSettings?access_token='+TokenService.getAccessToken();
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
                        formName: { type: "string" }
                    }
                }
            }
        });

        $scope.CompanyEmailSettingsOptions = {
            dataSource: $scope.EmailSettingsGridDataSource,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "30px"},
                {
                    title: "Actions",
                    headerAttributes: { style: "text-align:center" },
                    command: [
                     { template: '<a class="k-button k-button-icontext" style="min-width: 32px; padding:0;" href="javascript:void(0)" title="Edit emailSettings" ng-click="editForm($event)"><i class="fa fa-edit" aria-hidden="true"></i></a> ' },
                    ],
                    width: 80
                },
                {
                    field: "formName",
                    title: "Form Name",
                    width: "250px"
                },
                {
                    field: "form",
                    title: "Form",
                    width: "150px"
                },
                {
                    field: "smtphost",
                    title: "SMTP Host",
                    width: "150px"
                },
                {
                    field: "smtpsecure",
                    title: "SMTP Secure",
                    width: "150px"
                },
                {
                    field: "smtpport",
                    title: "SMTP Port",
                    width: "150px"
                },
                {
                    field: "authentication",
                    title: "Authentication",
                    width: "150px"
                },
                {
                    field: "userName",
                    title: "User Name",
                    width: "150px"
                },
                {
                    field: "password",
                    title: "Password",
                    width: "150px"
                },
                {
                    field: "isDefault",
                    title: "Is Default",
                    width: "120px"
                }
            ]
        };
    });


