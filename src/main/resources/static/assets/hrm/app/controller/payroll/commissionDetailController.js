app.controller("commissionDetailController",
    function($rootScope, $scope, $http, $location, $timeout, CommissionServices) {

    //Initialization
    $scope.commissionData = {};

    function init(){
        var id = getQueryVariable();
         CommissionServices.getCommissionById(id).then(function(resp){
             $scope.commissionData = resp.data;
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