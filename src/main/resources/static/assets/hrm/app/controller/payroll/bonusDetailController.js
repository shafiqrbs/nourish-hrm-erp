app.controller("bonusDetailController",
    function($rootScope, $scope, $http, $location, $timeout, BonusServices) {

    //Initialization
    $scope.bonusData = {};

    function init(){
        var id = getQueryVariable();
        BonusServices.getBonusById(id).then(function(resp){
            $scope.bonusData = resp.data;
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