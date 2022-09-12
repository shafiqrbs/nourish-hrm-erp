app.controller("PositionController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, Flash, BaseApiUrlService, TokenService,PositionServices) {

    //Initialization
    $scope.baseUrl = BaseApiUrlService.getBaseUrl()+'positions';
    $scope.position = {};
    $scope.position.isDefault = true;
    $scope.IsPopup = false;
    var pathObj = $location.path().split("/");

    function init() {
        // For inline popup
        if(pathObj[1] == "employees"){
            $scope.IsPopup = true;
        }
    }

    init();

    $scope.saveForm = function(isValid,position){
        if(isValid){
            PositionServices.save(position,TokenService.getAccessToken()).then(function(resp) {
                if(resp.data.isSuccess == true){
                    Flash.create('success', resp.data.successMessage, 'custom-class');
                    $scope.position = {};
                    $scope.PositionGridDataSource.read();
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
        PositionServices.getPositionById(item.id,TokenService.getAccessToken()).then(function (resp) {
            $scope.position = resp;
        });
    }

    $scope.PositionGridDataSource = new kendo.data.DataSource({
        type: "json",
        transport: {
            read: {
                url: function(){
                    return $scope.baseUrl+'/getAllPosition?access_token='+TokenService.getAccessToken();
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

    $scope.PositionDataOptions = {
        dataSource: $scope.PositionGridDataSource,
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
                    { template: '<a class="k-button k-button-icontext" style="min-width: 32px; padding:0;" href="javascript:void(0)" title="Edit unit" ng-click="editForm($event)"><i class="fa fa-edit" aria-hidden="true"></i></a> ' },
                ],
                width: 120
            },
            {
                field: "name",
                title: "City Name",
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

app.controller("PositionModalController",
    function ($rootScope, $scope, $uibModalInstance) {
    //Close modal
     $scope.exitModal = function(){
        $uibModalInstance.close('save');
        $rootScope.$broadcast("modalToPositionDataLoad");
     }
});