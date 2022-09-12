app.controller("addEditLoanController",
    function($rootScope, $scope, $http, $location, $timeout, LoanServices, EmployeeService) {

    //Initialization
    $scope.employees = {};
    $scope.loan = {};
    $scope.loan.isStatus=true;
    $scope.loan.isNeededApproval = '1';
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
        LoanServices.getLoanById(id).then(function(resp){
            $scope.loan = resp.data;
            //console.log(JSON.stringify(resp.data));

            if(resp.data.isNeededApproval == true)
                $scope.loan.isNeededApproval = '1';
            else
                $scope.loan.isNeededApproval = '0';
        })
    }

    if (id != 0){
        editForm(id);
    }

    // Save Deduction
    $scope.saveForm = function(isValid,loan){
        if(isValid){
            if(loan.isNeededApproval==0){
                loan.isNeededApproval=false;
            }
            else {
                loan.isNeededApproval=true;
            }

            loan.isCompleteDeduction=true;
            loan.isDefaultDeduction=true;
            loan.isFullDeduction=true;
            loan.isIncludeLoanInPayslip=true;
            loan.isPaid=false;

            console.log(loan);
            LoanServices.saveLoan(loan).then(function(resp){
                //console.log(resp);
                window.location.href = "/#!/payroll/loans";
            })
        }
        else{
            $scope.InvalidSubmit = true;
        }
    }


    $scope.exitForm = function(){
        window.location.href = "/#!/payroll/loans";
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