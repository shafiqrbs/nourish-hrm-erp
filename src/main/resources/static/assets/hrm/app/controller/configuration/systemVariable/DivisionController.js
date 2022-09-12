app.controller("DivisionController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, Flash, BaseApiUrlService, TokenService,DivisionServices) {

    //Initialization
    $scope.baseUrl = BaseApiUrlService.getBaseUrl();
    $scope.division = {};
    $scope.division.isDefault = true;
    $scope.IsPopup = false;
    var pathObj = $location.path().split("/");

    function init() {
        // For inline popup
        if(pathObj[1] == "employees"){
            $scope.IsPopup = true;
        }
    }

    init();

    $scope.saveForm = function(isValid,division){
        if(isValid){
            DivisionServices.save(division,TokenService.getAccessToken()).then(function(resp) {
                if(resp.data.isSuccess == true){
                    Flash.create('success', resp.data.successMessage, 'custom-class');
                    $scope.division = {};
                    $scope.DivisionGridDataSource.read();
                }
                else{
                    Flash.create('danger', resp.data.errorMessage, 'custom-class');
                }
            })
        }
    }

    $scope.cancel = function(){
        $scope.division = {};
        $scope.DivisionGridDataSource.read();
    }

    $scope.editForm = function (ev) {
        var id = ev.sender.dataItem(ev.sender.select()).id;
        DivisionServices.getDivisionById(id,TokenService.getAccessToken()).then(function (resp) {
            $scope.division = resp;
        });
    }

    $scope.DivisionGridDataSource = new kendo.data.DataSource({
        type: "json",
        transport: {
            read: {
                url: function(){
                    return $scope.baseUrl+'/divisions/getAllDivision?access_token='+TokenService.getAccessToken();
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
                    name: { type: "string" }
                }
            }
        }
    });

    $scope.DivisionDataOptions = {
        dataSource: $scope.DivisionGridDataSource,
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
                title: "Division Name",
                width: "180px"
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

app.controller("DivisionModalController",
    function ($rootScope, $scope, $uibModalInstance) {
    //Close modal
     $scope.exitModal = function(){
        $uibModalInstance.close('save');
        $rootScope.$broadcast("modalToDivisionDataLoad");
     }
});