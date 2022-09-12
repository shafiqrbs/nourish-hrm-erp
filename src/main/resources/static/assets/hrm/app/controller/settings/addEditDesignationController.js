app.controller("addEditDesignationController",
    function($rootScope, $scope, $http, $location, $timeout, DesignationServices) {

     //Initialization
    $scope.designation = {};
    $scope.designation.status=true;
    $scope.InvalidSubmit = false;
    var searchObject = $location.search();

    function editForm(id) {
        DesignationServices.getDesignationById(id).then(function(resp){
            $scope.designation = resp.data;
            //console.log(JSON.stringify(resp.data));
        })
    }

    if (searchObject.id != undefined){
        editForm(searchObject.id);
    }

    // Save Designation
    $scope.saveForm = function(isValid,designation){
        if(isValid){
            DesignationServices.saveDesignation(designation).then(function(resp){
                //console.log(resp);
                window.location.href = "/#!/admin/settings/designation";
            });
        }
        else{
            $scope.InvalidSubmit = true;
        }
    }

    $scope.exitForm = function(){
        window.location.href = "/#!/admin/settings/designation";
    }

    $scope.jobLevels = [
        {id: '1', name: 'Entry Level'},
        {id: '2', name: 'Mid Level'},
        {id: '3', name: 'High Level'}
    ];
});