app.controller("loanDetailController",
    function($rootScope, $scope, $http, $location, $timeout, LoanServices) {

    //Initialization
    $scope.loan = {};

    function init(){
        var id = getQueryVariable();
        LoanServices.getLoanById(id).then(function(resp){
           $scope.loanDetailsData = resp.data;
           console.log(resp.data);
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