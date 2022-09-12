app.controller("addEditAdvanceSalaryController",
    function($rootScope, $scope, $http, $location, $timeout, AdvanceSalaryServices, EmployeeService) {

    //Initialization
    $scope.employees = {};
    $scope.advanceSalary = {};
    $scope.advanceSalary.isStatus=true;
    $scope.advanceSalary.isNeededApproval = '1';
    $scope.InvalidSubmit = false;

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

    function editForm(id) {
        AdvanceSalaryServices.getAdvanceSalaryById(id).then(function(resp){
            $scope.advanceSalary = resp.data;
            //console.log(JSON.stringify(resp.data));

            if(resp.data.isNeededApproval == true)
                $scope.advanceSalary.isNeededApproval = '1';
            else
                $scope.advanceSalary.isNeededApproval = '0';
        })
    }

    if (id != 0){
        editForm(id);
    }

    // Save Advance Salary form
    $scope.saveForm = function(isValid,advanceSalary){
        if(isValid)
        {
            if(advanceSalary.isNeededApproval==0){
                advanceSalary.isNeededApproval=false;
            }
            else {
                advanceSalary.isNeededApproval=true;
            }

            advanceSalary.isCompleteDeduction=false;
            advanceSalary.isDefaultDeduction=false;
            advanceSalary.isFullDeduction=true;
            advanceSalary.isGeneratePayslip=true;
            advanceSalary.isPaid=false;

            console.log(advanceSalary);
            AdvanceSalaryServices.saveAdvanceSalary(advanceSalary).then(function(resp){
                //console.log(resp);
                window.location.href = "/#!/payroll/advancesalary";
            });
        }
        else{
            $scope.InvalidSubmit = true;
        }
    }

    $scope.exitForm = function(){
        window.location.href = "/#!/payroll/advancesalary";
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