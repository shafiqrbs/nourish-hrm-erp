app.controller("StaffCategoryController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, Flash, BaseApiUrlService, TokenService,StaffCategoryServices) {

    //Initialization
    $scope.baseUrl = BaseApiUrlService.getBaseUrl()+'staffCategories';
    $scope.staffCategory = {};
    $scope.staffCategory.isDefault = true;
    $scope.IsPopup = true;

    function init() {
    }

    init();

    $scope.saveForm = function(isValid,division){
        if(isValid){
            StaffCategoryServices.save(staffCategory,TokenService.getAccessToken()).then(function(resp) {
                if(resp.data.isSuccess == true){
                    Flash.create('success', resp.data.successMessage, 'custom-class');
                    $scope.staffCategory = {};
                    $scope.DivisionGridDataSource.read();
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
        StaffCategoryServices.getStaffCategoryById(item.id,TokenService.getAccessToken()).then(function (resp) {
            $scope.staffCategory = resp;
        });
    }

    $scope.StaffCategoryGridDataSource = new kendo.data.DataSource({
        type: "json",
        transport: {
            read: {
                url: function(){
                    return $scope.baseUrl+'/getAllStaffCategory?access_token='+TokenService.getAccessToken();
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
                    buildingName: { type: "string" }
                }
            }
        }
    });

    $scope.StaffCategoryDataOptions = {
        dataSource: $scope.StaffCategoryGridDataSource,
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
                    { template: '<a class="k-button k-button-icontext" style="min-width: 32px; padding:0;" href="javascript:void(0)" title="Edit Staff category" ng-click="editForm($event)"><i class="fa fa-edit" aria-hidden="true"></i></a> ' },
                ],
                width: 120
            },
            {
                field: "name",
                title: "Staff category Name",
                width: "150px"
            },
            {
                field: "displayCode",
                title: "Display Code",
                width: "150px"
            },
            {
                field: "isDefault",
                title: "Is Default",
                width: "100px"
            },
            {
                field: "descriptions",
                title: "Descriptions"
            }
        ]
    };

});