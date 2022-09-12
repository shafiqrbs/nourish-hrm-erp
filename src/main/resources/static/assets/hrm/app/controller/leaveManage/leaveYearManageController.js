app.controller("leaveYearManageController",
    function ($rootScope, $scope, $uibModal, $http, $location, $timeout, $filter, Flash,BaseApiUrlService,
        LeaveYearServices,TokenService) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl();
        $scope.isDefaultImage = true;
        $scope.prevLYFromDate = "";
        $scope.prevLYToDate = "";
        $scope.leaveYear = {};

        function init() {
            //Get leave year
            LeaveYearServices.getActiveLeaveYear(TokenService.getAccessToken()).then(function(response){
                if(response != '' && response != undefined && response != null) {
                    $scope.leaveYear = response;
                    $scope.leaveYear.fromDate = new Date(response.fromDate);
                    $scope.leaveYear.toDate = new Date(response.toDate);

                    $scope.prevLYFromDate = new Date(response.fromDate);
                    $scope.prevLYToDate = new Date(response.toDate);
                }
            });
        }

        $scope.saveLeaveYearForm = function(isValid,leaveYear){
            if(isValid){
                leaveYear.fromDate = $filter('date')(leaveYear.fromDate, "yyyy-MM-dd");
                leaveYear.toDate = $filter('date')(leaveYear.toDate, "yyyy-MM-dd");

                if(leaveYear.fromDate != $scope.prevLYFromDate && leaveYear.toDate != $scope.prevLYToDate){
                    leaveYear.id=0;
                }

                LeaveYearServices.save(leaveYear,TokenService.getAccessToken()).then(function(resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                        init();
                    }else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                })
            }
        }

        init();

    });