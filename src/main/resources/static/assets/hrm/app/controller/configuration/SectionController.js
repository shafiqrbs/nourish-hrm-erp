app.controller("SectionController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter,BaseApiUrlService,TokenService,Flash,SectionServices,CompanySettingsService) {

        //create by Navid
        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl();
        $scope.section = {};
        $scope.companySetting = {}
         $scope.IsPopup = false;
         var pathObj = $location.path().split("/");
        function init() {
            //Get all company settings for dropdown
            CompanySettingsService.getAllCompanySettings(TokenService.getAccessToken()).then(function(response){
                $scope.companySetting = response;
                //alert(JSON.stringify($scope.companySetting));
            });

            // For inline popup
            if(pathObj[1] == "employees"){
                $scope.IsPopup = true;
            }
        }

        init();

        $scope.saveForm = function(isValid,section){
            if(isValid)
            {
                SectionServices.save(section,TokenService.getAccessToken()).then(function(resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                        $scope.section = {};
                        $scope.SectionGridDataSource.read();
                    }
                    else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                })
            }
        }

        $scope.editForm = function (ev) {
            var id = ev.sender.dataItem(ev.sender.select()).id;
            SectionServices.getSectionById(id,TokenService.getAccessToken()).then(function (resp) {
                $scope.section = resp;
            });
        }

        $scope.SectionGridDataSource = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/sections/getAllSection?access_token='+TokenService.getAccessToken();
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
                        sectionName: { type: "string" }
                    }
                }
            }
        });

        $scope.CompanySectionOptions = {
            dataSource: $scope.SectionGridDataSource,
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
                    field: "sectionName",
                    title: "Section Name",
                    width: "180px"
                },
                {
                    field: "sectionCode",
                    title: "Section Code",
                    width: "150px"
                },
                {
                    field: "sequence",
                    title: "Sequence",
                    width: "150px"
                },
                {
                    field: "notes",
                    title: "Notes",
                    width: "200px"
                }
            ]
        };
    });

app.controller("SectionModalController",
    function ($rootScope, $scope, $uibModalInstance) {
    //Close modal
     $scope.exitModal = function(){
        $uibModalInstance.close('save');
        $rootScope.$broadcast("modalToSectionDataLoad");
     }
});


