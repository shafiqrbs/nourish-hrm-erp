app.controller("addEditBonusController",
    function($rootScope, $scope, $http, $location, $timeout, BonusServices, EmployeeService) {

    //Initialization
    $scope.employees = {};
    $scope.bonus = {};
    $scope.bonus.isStatus=true;
    $scope.bonus.isNeededApproval = '1';
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
        BonusServices.getBonusById(id).then(function(resp){
            $scope.bonus = resp.data;
            console.log(JSON.stringify(resp.data));
            if(resp.data.isNeededApproval == true)
                $scope.bonus.isNeededApproval = 1;
            else
                $scope.bonus.isNeededApproval = 0;
        })
    }

    if (id != 0){
        editForm(id);
    }

    // Save Bonus Form
    $scope.saveForm = function(isValid,bonus){
        if(isValid){
            bonus.isPaid = false;
            if(bonus.isStatus==null)
                bonus.isStatus=true;

            if(bonus.isNeededApproval==0){
                bonus.isNeededApproval=false;
            }
            else {
                bonus.isNeededApproval=true;
            }

            console.log(bonus);

            BonusServices.saveBonus(bonus).then(function(resp){
                //console.log(resp);
                window.location.href = "/#!/payroll/bonuses";
            })
        }
        else{
            $scope.InvalidSubmit = true;
        }

    }


    $scope.exitForm = function(){
        window.location.href = "/#!/payroll/bonuses";
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