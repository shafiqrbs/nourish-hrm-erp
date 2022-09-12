app.controller("payslipDetailController",
    function($rootScope, $scope, $http, $location, $timeout, SalaryPaySlipsServices) {

    //Initialization
    $scope.loan = {};

    function init(){
        var id = getQueryVariable();
         SalaryPaySlipsServices.getSalaryPaySlipsById(id).then(function(resp){
            $scope.salaryPayslipData = resp.data;
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