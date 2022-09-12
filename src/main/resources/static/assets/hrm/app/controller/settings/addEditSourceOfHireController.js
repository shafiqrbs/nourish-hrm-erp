app.controller("addEditSourceOfHireController",
    function($rootScope, $scope, $http, $location, $timeout, SourceOfHireServices) {

     //Initialization
    $scope.sourceOfHire = {};
    $scope.sourceOfHire.status=true;
    $scope.InvalidSubmit = false;
    var searchObject = $location.search();

    function editForm(id) {
        SourceOfHireServices.getSourceOfHireById(id).then(function(resp){
            $scope.sourceOfHire = resp.data;
            //console.log(JSON.stringify(resp.data));
        })
    }

    //Call Edit form data
    if (searchObject.id != undefined){
        editForm(searchObject.id);
    }

    // Save employeeType
    $scope.saveForm = function(isValid,sourceOfHire){
        if(isValid){
            SourceOfHireServices.saveSourceOfHireType(sourceOfHire).then(function(resp){
                //console.log(resp);
                //$location.path("/organization/sourceofhire");
                window.location.href = "/#!/admin/settings/sourceofhire";
            });
        }
        else{
            $scope.InvalidSubmit = true;
        }
    }

    $scope.exitForm = function(){
        window.location.href = "/#!/admin/settings/sourceofhire";
    }
});