app.controller("addEditDepartmentController",
    function($rootScope, $scope, $http, $location, $timeout, DepartmentServices) {

    //Initialization
    $scope.department = {};
    $scope.department.status=true;
    $scope.InvalidSubmit = false;
    var searchObject = $location.search();

    function editForm(id) {
        DepartmentServices.getDepartmentById(id).then(function(resp){
            $scope.department = resp.data;
            //console.log(JSON.stringify(resp.data));
        })
    }

    if (searchObject.id != undefined){
        editForm(searchObject.id);
    }

    // Save Department
    $scope.saveForm = function(isValid,department){
        if(isValid){
            DepartmentServices.saveDepartment(department).then(function(resp){
                window.location.href = "/#!/admin/settings/department";
            });
        }
        else{
            $scope.InvalidSubmit = true;
        }
    }

    $scope.exitForm = function(){
        window.location.href = "/#!/admin/settings/department";
    }
});