app.controller("deductionDetailController",
    function($rootScope, $scope, $http, $location, $timeout, DeductionServices) {

    //Initialization
    $scope.loan = {};

    function init(){
        var id = getQueryVariable();
        DeductionServices.getDeductionById(id).then(function(resp){
            $scope.deductionData = resp.data;
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