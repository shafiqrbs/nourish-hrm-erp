app.controller("addEditDeductionController",
    function($rootScope, $scope, $http, $location, $timeout, DeductionServices, EmployeeService) {

    //Initialization
    $scope.employees = {};
    $scope.deduction = {};
    $scope.deduction.isStatus=true;
    $scope.deduction.isNeededApproval = '1';
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
        DeductionServices.getDeductionById(id).then(function(resp){
            $scope.deduction = resp.data;
            //alert(resp.data.isNeededApproval);
            if(resp.data.isNeededApproval == true)
                $scope.deduction.isNeededApproval = 1;
            else
                $scope.deduction.isNeededApproval = 0;

            //console.log(JSON.stringify(resp.data));
        })
    }

    if (id != 0){
        editForm(id);
    }

    // Save Deduction
    $scope.saveForm = function(isValid,deduction){
        if(isValid){
            if(deduction.isStatus==null)
                deduction.isStatus=true;

            if(deduction.isNeededApproval==0){
                deduction.isNeededApproval=false;
            }
            else {
                deduction.isNeededApproval=true;
            }

            deduction.isCompleteDeduction=false;
            deduction.isDefaultDeduction=false;
            deduction.isFullDeduction=true;
            deduction.isManualDeduction=false;
            console.log(deduction);
            DeductionServices.saveDeduction(deduction).then(function(resp){
                //console.log(resp);
                window.location.href = "/#!/payroll/deductions";
            })
        }
        else{
            $scope.InvalidSubmit = true;
        }
    }

    $scope.exitForm = function(){
        window.location.href = "/#!/payroll/deductions";
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