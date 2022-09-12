app.controller("JobLocationController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, Flash, BaseApiUrlService, TokenService,JobLocationServices) {

    //Initialization
    $scope.baseUrl = BaseApiUrlService.getBaseUrl()+'jobLocations';
    $scope.jobLocation = {};
    $scope.jobLocation.isDefault = true;
    var pathObj = $location.path().split("/");
    function init() {
        // For inline popup
        if(pathObj[1] == "employees"){
            $scope.IsPopup = true;
        }
    }

    init();

    $scope.saveForm = function(isValid,jobLocation){
        if(isValid){
            JobLocationServices.save(jobLocation,TokenService.getAccessToken()).then(function(resp) {
                if(resp.data.isSuccess == true){
                    Flash.create('success', resp.data.successMessage, 'custom-class');
                    $scope.jobLocation = {};
                    $scope.JobLocationGridDataSource.read();
                }else{
                    Flash.create('danger', resp.data.errorMessage, 'custom-class');
                }
            })
        }
    }

    $scope.cancel = function(){
        $scope.jobLocation = {};
        $scope.JobLocationGridDataSource.read();
    }

    $scope.editForm = function (ev) {
        var id = ev.sender.dataItem(ev.sender.select()).id;
        JobLocationServices.getJobLocationById(id,TokenService.getAccessToken()).then(function (resp) {
            $scope.jobLocation = resp;
        });
    }

    $scope.JobLocationGridDataSource = new kendo.data.DataSource({
        type: "json",
        transport: {
            read: {
                url: function(){
                    return $scope.baseUrl+'/getAllJobLocation?access_token='+TokenService.getAccessToken();
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

    $scope.JobLocationDataOptions = {
        dataSource: $scope.JobLocationGridDataSource,
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
        columns: [
            {
                field: "name",
                title: "Job Location Name",
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

app.controller("JobLocationModalController",
    function ($rootScope, $scope, $uibModalInstance) {
    //Close modal
     $scope.exitModal = function(){
        $uibModalInstance.close('save');
        $rootScope.$broadcast("modalToJobLocationDataLoad");
     }
});