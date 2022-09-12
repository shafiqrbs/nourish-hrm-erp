app.controller("salaryDetailController",
    function($rootScope, $scope, $http, $location, $timeout, SalaryServices) {

    //Initialization
    $scope.salaryData = {};

    function init(){
        var id = getQueryVariable();
         SalaryServices.getSalaryById(id).then(function(resp){
             $scope.salaryData = resp.data;
         })
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