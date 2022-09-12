app.controller("adjustmentDetailController",
    function($rootScope, $scope, $http, $location, $timeout, AdjustmentServices) {

    //Initialization
    $scope.adjustmentData = {};

    function init(){
        var id = getQueryVariable();
         AdjustmentServices.getAdjustmentById(id).then(function(resp){
             $scope.adjustmentData = resp.data;
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