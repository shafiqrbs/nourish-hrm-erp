app.controller("addEditAdjustmentController",
    function($rootScope, $scope, $http, $location, $timeout, AdjustmentServices, EmployeeService) {

    //Initialization
    $scope.employees = {};
    $scope.adjustment = {};
    $scope.adjustment.isStatus=true;
    $scope.adjustment.isNeededApproval = '1';
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
        AdjustmentServices.getAdjustmentById(id).then(function(resp){
            $scope.adjustment = resp.data;
            console.log(JSON.stringify(resp.data));
            if(resp.data.isNeededApproval == true)
                $scope.adjustment.isNeededApproval = 1;
            else
                $scope.adjustment.isNeededApproval = 0;
        })
    }

    if (id != 0){
        editForm(id);
    }

    // Save Adjustment
    $scope.saveForm = function(isValid,adjustment){
        if(isValid){
            adjustment.isPaid = false;
            if(adjustment.isStatus==null)
                adjustment.isStatus=true;

            if(adjustment.isNeededApproval==0){
                adjustment.isNeededApproval=false;
            }
            else {
                adjustment.isNeededApproval=true;
            }

            console.log(adjustment);

            AdjustmentServices.saveAdjustment(adjustment).then(function(resp){
                //console.log(resp);
                window.location.href = "/#!/payroll/adjustments";
            })
        }
        else{
            $scope.InvalidSubmit = true;
        }
    }


    $scope.exitForm = function(){
        window.location.href = "/#!/payroll/adjustments";
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