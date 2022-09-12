app.controller("addEditSubDepartmentController",
    function($rootScope, $scope, $http, $location, $timeout, SubDepartmentServices, DepartmentServices) {

    //Initialization
    $scope.subDepartment = {};
    $scope.subDepartment.status=true;
    $scope.InvalidSubmit = false;
    var searchObject = $location.search();

    function init(){
        DepartmentServices.getAllDepartment().then(function(resp){
            $scope.departments = resp.data.content;
        })
    }

    init();

    function editForm(id) {
        SubDepartmentServices.getSubDepartmentById(id).then(function(resp){
            $scope.subDepartment = resp.data;
            //console.log(JSON.stringify(resp.data));
        })
    }

    if (searchObject.id != undefined){
        editForm(searchObject.id);
    }

    // Save Department
    $scope.saveForm = function(isValid,subDepartment){
        if(isValid){
            SubDepartmentServices.saveSubDepartment(subDepartment).then(function(resp){
                //console.log(resp);
                //$location.path("/organization/department");
                window.location.href = "/#!/admin/settings/subdepartment";
            });
        }
        else{
            $scope.InvalidSubmit = true;
        }
    }

    $scope.exitForm = function(){
        window.location.href = "/#!/admin/settings/subdepartment";
    }
});