app.controller("addEditEmployeeTypeController",
    function($rootScope, $scope, $http, $location, $timeout, EmployeeTypeServices) {

    //Initialization
    $scope.employeeType = {};
    $scope.employeeType.status=true;
    $scope.InvalidSubmit = false;
    var searchObject = $location.search();

    function editForm(id) {
        EmployeeTypeServices.getEmployeeTypeById(id).then(function(resp){
            $scope.employeeType = resp.data;
            //console.log(JSON.stringify(resp.data));
        })
    }

    //Call Edit form data
    if (searchObject.id != undefined){
        editForm(searchObject.id);
    }

    // Save employeeType
    $scope.saveForm = function(isValid,employeeType){
        if(isValid){
            EmployeeTypeServices.saveEmployeeType(employeeType).then(function(resp){
                //console.log(resp);
                //$location.path("/organization/department");
                window.location.href = "/#!/admin/settings/employeetype";
            });
        }
        else{
            $scope.InvalidSubmit = true;
        }
    }

    $scope.exitForm = function(){
        window.location.href = "/#!/admin/settings/employeetype";
    }
});