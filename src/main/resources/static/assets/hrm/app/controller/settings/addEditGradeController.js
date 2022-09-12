app.controller("addEditGradeController",
    function($rootScope, $scope, $http, $location, $timeout, GradeServices) {

    //Initialization
    $scope.grade = {};
    $scope.grade.status=true;
    $scope.InvalidSubmit = false;

    var id = getQueryVariable();

    function editForm(id) {
        GradeServices.getGradeById(id).then(function(resp){
            $scope.grade = resp.data;
            //console.log(JSON.stringify(resp.data));
        })
    }

    if (id != 0){
        editForm(id);
    }

    // Save Department
    $scope.saveForm = function(isValid,department){
        if(isValid){
            GradeServices.saveGrade(department).then(function(resp){
                window.location.href = "/#!/admin/settings/grade";
            });
        }
        else{
            $scope.InvalidSubmit = true;
        }
    }


    $scope.exitForm = function(){
        window.location.href = "/#!/admin/settings/grade";
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