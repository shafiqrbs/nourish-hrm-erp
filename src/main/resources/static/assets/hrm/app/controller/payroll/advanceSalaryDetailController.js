app.controller("advanceSalaryDetailController",
    function($rootScope, $scope, $http, $location, $timeout, AdvanceSalaryServices) {

    //Initialization
    $scope.advanceSalaryData = {};

    function init(){
        var id = getQueryVariable();
         AdvanceSalaryServices.getAdvanceSalaryById(id).then(function(resp){
            $scope.advanceSalaryData = resp.data;
        });
    }

    init();

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