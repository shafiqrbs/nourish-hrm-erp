app.controller("addEditRoleController",
    function($rootScope, $scope, $http, $location, $timeout, RoleServices) {

    //Initialization
    $scope.userRole = {};
    $scope.userRole.status=true;
    $scope.InvalidSubmit = false;
    var searchObject = $location.search();

    function editForm(id) {
        RoleServices.getRoleById(id).then(function(resp){
            $scope.userRole = resp.data;
            //console.log(JSON.stringify(resp.data));
        })
    }

    //Call Edit form data
    if (searchObject.id != undefined){
        editForm(searchObject.id);
    }

    // Save Role
    $scope.saveForm = function(isValid,userRole){
        if(isValid){
            RoleServices.saveRole(userRole).then(function(resp){
                //console.log(resp);
                //$location.path("/organization/designation");
                window.location.href = "/#!/admin/settings/role";
            });
        }
        else{
            $scope.InvalidSubmit = true;
        }
    }

    $scope.exitForm = function(){
        window.location.href = "/#!/admin/settings/role";
    }
});