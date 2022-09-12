app.controller("SkillCategoryController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, Flash, BaseApiUrlService, TokenService,SkillCategoryServices) {

    //Initialization
    $scope.baseUrl = BaseApiUrlService.getBaseUrl();
    $scope.skillCategory = {};
    $scope.skillCategory.isDefault = true;
     var pathObj = $location.path().split("/");

     function init() {
        // For inline popup
        if(pathObj[1] == "employees"){
            $scope.IsPopup = true;
        }
     }

    init();

    $scope.saveForm = function(isValid,skillCategory){
        if(isValid){
            SkillCategoryServices.save(skillCategory,TokenService.getAccessToken()).then(function(resp) {
                if(resp.data.isSuccess == true){
                    Flash.create('success', resp.data.successMessage, 'custom-class');
                    $scope.skillCategory = {};
                    $scope.skillCategoryGridDataSource.read();
                }else{
                    Flash.create('danger', resp.data.errorMessage, 'custom-class');
                }
            })
        }
    }

    $scope.cancel = function(){
        $scope.skillCategory = {};
        $scope.skillCategoryGridDataSource.read();
    }

    $scope.editForm = function (ev) {
        var id = ev.sender.dataItem(ev.sender.select()).id;
        SkillCategoryServices.getSkillCategoryId(id,TokenService.getAccessToken()).then(function (resp) {
            $scope.skillCategory = resp;
        });
    }

    $scope.skillCategoryGridDataSource = new kendo.data.DataSource({
        type: "json",
        transport: {
            read: {
                url: function(){
                    return $scope.baseUrl+'/skillCategories/getAllSkillCategory?access_token='+TokenService.getAccessToken();
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
                    skillCatName: { type: "string" }
                }
            }
        }
    });

    $scope.SkillCategoryInfoDataOptions = {
        dataSource: $scope.skillCategoryGridDataSource,
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
                field: "skillCatName",
                title: "Skill Category Name",
                width: "200px"
            },
            {
                field: "skillType",
                title: "Skill Type",
                width: "150px"
            },
            {
                field: "descriptions",
                title: "Descriptions"
            }
        ]
    };

});

app.controller("SkillCategoryModalController",
    function ($rootScope, $scope, $uibModalInstance) {
    //Close modal
     $scope.exitModal = function(){
        $uibModalInstance.close('save');
        $rootScope.$broadcast("modalToSkillCategoryDataLoad");
     }
});