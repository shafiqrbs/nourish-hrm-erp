app.controller("UnitController",
function ($rootScope, $scope, $http, $location, $timeout, $filter, Flash, BaseApiUrlService, TokenService,UnitServices) {

    //Initialization
    $scope.baseUrl = BaseApiUrlService.getBaseUrl();
    $scope.unit = {};
    $scope.unit.isDefault = true;
    $scope.IsPopup = false;
    var pathObj = $location.path().split("/");

    function init() {
        // For inline popup
        if(pathObj[1] == "employees"){
            $scope.IsPopup = true;
        }
    }

    init();

    $scope.saveForm = function(isValid,unit){
        if(isValid){
            UnitServices.save(unit,TokenService.getAccessToken()).then(function(resp) {
                if(resp.data.isSuccess == true){
                    Flash.create('success', resp.data.successMessage, 'custom-class');
                    $scope.unit = {};
                    $scope.UnitGridDataSource.read();
                }else{
                    Flash.create('danger', resp.data.errorMessage, 'custom-class');
                }
            })
        }
    }

    $scope.cancel = function(){
        $scope.unit = {};
        $scope.UnitGridDataSource.read();
    }

    $scope.editForm = function (ev) {
        var id = ev.sender.dataItem(ev.sender.select()).id;
        UnitServices.getUnitById(id,TokenService.getAccessToken()).then(function (resp) {
            $scope.unit = resp;
        });
    }

    $scope.UnitGridDataSource = new kendo.data.DataSource({
        type: "json",
        transport: {
            read: {
                url: function(){
                    return $scope.baseUrl+'/units/getAllUnit?access_token='+TokenService.getAccessToken();
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
                    name: { type: "string" }
                }
            }
        }
    });

    $scope.UnitInfoDataOptions = {
        dataSource: $scope.UnitGridDataSource,
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
                field: "name",
                title: "Unit Name",
                width: "200px"
            },
            {
                field: "displayCode",
                title: "Display Code",
                width: "180px"
            },
            {
                field: "descriptions",
                title: "Descriptions"
            }
        ]
    };

});

app.controller("UnitModalController",
    function ($rootScope, $scope, $uibModalInstance) {
    //Close modal
     $scope.exitModal = function(){
        $uibModalInstance.close('save');
        $rootScope.$broadcast("modalToUnitsDataLoad");
     }
});