app.controller("addEditProvidentFundController",
    function($rootScope, $scope, $http, $location, $timeout, ProvidentFundServices, EmployeeService) {

    $scope.employees = "";
    function init(){
         EmployeeService.getAllUsersBasicInfo().then(function(resp){
            $scope.employees = resp.data;
            console.log(resp.data);
        });
    }

    $scope.searchBy = [
        {id: '1', name: 'ID'},
        {id: '2', name: 'Name'},
        {id: '3', name: 'Department'},
        {id: '4', name: 'Designation'},
        {id: '5', name: 'Role'}
    ];

    init();
    var id = getQueryVariable();

    $scope.providentFund = {};
    function editForm(id) {
        ProvidentFundServices.getProvidentFundById(id).then(function(resp){
            $scope.providentFund = resp.data;
            //console.log(JSON.stringify(resp.data));
        })
    }

    if (id == 0){
        $scope.providentFund = {};
        $scope.providentFund.providentFundType = 'PCT';
    }
    else{
        editForm(id);
    }

    // Save Deduction
    $scope.saveForm = function(providentFund){
        //TODO: validation

        console.log(providentFund);
        ProvidentFundServices.saveProvidentFund(providentFund).then(function(resp){
            //console.log(resp);
            window.location.href = "/#!/payroll/providentfunds";
        })
    }


    $scope.exitForm = function(){
        window.location.href = "/#!/payroll/providentfunds";
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