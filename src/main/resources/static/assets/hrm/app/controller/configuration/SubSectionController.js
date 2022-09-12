app.controller("SubSectionController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter,BaseApiUrlService,TokenService,Flash,SubSectionServices,SectionServices) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl();
        $scope.subSection = {};
         $scope.IsPopup = false;
         var pathObj = $location.path().split("/");

        function init() {
           // For inline popup
           if(pathObj[1] == "employees"){
               $scope.IsPopup = true;
           }

            //Get all sub section for dropdown
            SectionServices.getAllSection(TokenService.getAccessToken()).then(function(response){
                $scope.section = response;
            });
        }

        init();

        $scope.saveForm = function(isValid,subSection){
            if(isValid)
            {
                SubSectionServices.save(subSection,TokenService.getAccessToken()).then(function(resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                        $scope.subSection = {};
                        $scope.SubSectionGridDataSource.read();
                    }
                    else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                })
            }
        }

        $scope.cancel = function(){
            $scope.subSection = {};
            $scope.SubSectionGridDataSource.read();
        }

        $scope.editForm = function (ev) {
            var id = ev.sender.dataItem(ev.sender.select()).id;
            SubSectionServices.getSubSectionById(id,TokenService.getAccessToken()).then(function (resp) {
                $scope.subSection = resp;
            });
        }

        $scope.SubSectionGridDataSource = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/subSections/getAllSubSection?access_token='+TokenService.getAccessToken();
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
                        subSectionName: { type: "string" }
                    }
                }
            }
        });

        $scope.CompanySubSectionOptions = {
            dataSource: $scope.SubSectionGridDataSource,
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
                    field: "subSectionName",
                    title: "SubSection Name",
                    width: "200px"
                },
                {
                    field: "subSectionCode",
                    title: "Code",
                    width: "150px"
                },
                {
                    field: "sectionName",
                    title: "Section",
                    width: "180px"
                },
                {
                    field: "sequence",
                    title: "Sequence",
                    width: "80px"
                }
            ]
        };
    });

app.controller("SubSectionModalController",
    function ($rootScope, $scope, $uibModalInstance) {
    //Close modal
     $scope.exitModal = function(){
        $uibModalInstance.close('save');
        $rootScope.$broadcast("modalToSubSectionDataLoad");
     }
});


