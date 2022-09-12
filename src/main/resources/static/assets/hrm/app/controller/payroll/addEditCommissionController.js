app.controller("addEditCommissionController",
    function($rootScope, $scope, $http, $location, $timeout, CommissionServices, EmployeeService) {

    //Initialization
    $scope.employees = {};
    $scope.commission = {};
    $scope.commission.isStatus=true;
    $scope.commission.isNeededApproval = '1';
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

    $scope.commissionTypeList = [
        {id: '1', name: 'Percentage', value: 'PCT'},
        {id: '2', name: 'Fixed Amount', value: 'Fixed'}
    ];

    init();
    var id = getQueryVariable();

    function editForm(id) {
        CommissionServices.getCommissionById(id).then(function(resp){
            $scope.commission = resp.data;
            //console.log(JSON.stringify(resp.data));
            if(resp.data.isNeededApproval == true)
                $scope.commission.isNeededApproval = 1;
            else
                $scope.commission.isNeededApproval = 0;
        })
    }

    if (id != 0){
        editForm(id);
    }

    // Save Deduction
    $scope.saveForm = function(isValid,commission){
        if(isValid){
            if(commission.isStatus==null)
                commission.isStatus=true;

            if(commission.isNeededApproval==0){
                commission.isNeededApproval=false;
            }
            else {
                commission.isNeededApproval=true;
            }

            commission.isPaid=false;
            console.log(commission);
            CommissionServices.saveCommission(commission).then(function(resp){
                //console.log(resp);
                window.location.href = "/#!/payroll/commissions";
            })
        }
        else{
            $scope.InvalidSubmit = true;
        }
    }


    $scope.exitForm = function(){
        window.location.href = "/#!/payroll/commissions";
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