app.controller("addEditUnitController",
    function($rootScope, $scope, $http, $location, $timeout, UnitServices) {

    //Initialization
    $scope.unit = {};
    $scope.unit.status=true;
    $scope.InvalidSubmit = false;

    var id = getQueryVariable();

    function editForm(id) {
        UnitServices.getUnitById(id).then(function(resp){
            $scope.unit = resp.data;
            //console.log(JSON.stringify(resp.data));
        })
    }

    if (id != 0){
        editForm(id);
    }

    // Save Unit
    $scope.saveForm = function(isValid,unit){
        if(isValid){
            UnitServices.saveUnit(unit).then(function(resp){
                window.location.href = "/#!/admin/settings/units";
            });
        }
        else{
            $scope.InvalidSubmit = true;
        }
    }


    $scope.exitForm = function(){
        window.location.href = "/#!/admin/settings/units";
    }

    function getQueryVariable() {
        var query = $location.absUrl();
        if(query.indexOf('?') != -1)
        {
            var vars = query.split('?');
            var pair = vars[1].split('=');
            return pair[1];
        }
        return 0;
    }
});