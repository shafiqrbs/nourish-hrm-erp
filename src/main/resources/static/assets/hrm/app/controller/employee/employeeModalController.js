app.controller("employeeModalController",
    function($rootScope, $scope, $uibModalInstance, $http, $location, $timeout, parameters) {
    //alert(parameters.departmentId);
    $scope.exitModal = function(){
        $uibModalInstance.close('save');
     }

    $scope.department = {};
});