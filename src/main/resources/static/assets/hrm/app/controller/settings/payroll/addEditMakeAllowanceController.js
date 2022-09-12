app.controller("addEditMakeAllowanceController",
    function($rootScope, $scope, $http, $location, $timeout, SalaryItemServices) {

    //Initialization
    $scope.allowance = {};
    $scope.allowance.isActive=true;
    $scope.InvalidSubmit = false;
    var searchObject = $location.search();

    function editForm(id) {
        SalaryItemServices.getSalaryItemById(id).then(function(resp){
            $scope.allowance = resp.data;

            if(resp.data.isItemTaxAble == true)
                $scope.allowance.isItemTaxAble = 'Yes';
            else
                $scope.allowance.isItemTaxAble = 'No';
            //console.log(JSON.stringify(resp.data));
        })
    }

    if (searchObject.id != undefined){
        editForm(searchObject.id);
    }

    // Save Make Allowances
    $scope.saveForm = function(isValid,allowance){
        if(isValid){
            if(allowance.isItemTaxAble == 'Yes')
               allowance.isItemTaxAble = true;
            else
               allowance.isItemTaxAble = false;

            allowance.isExtraItem = false;
            allowance.isDefault = false;

            SalaryItemServices.saveSalaryItem(allowance).then(function(resp){
                window.location.href = "/#!/admin/settings/payroll/allowances";
            });
        }
        else{
            $scope.InvalidSubmit = true;
        }
    }

    $scope.exitForm = function(){
        window.location.href = "/#!/admin/settings/payroll/allowances";
    }

    $scope.IsTaxable = [
        {id: '1', name: 'Yes'},
        {id: '2', name: 'No'}
    ];

    $scope.ItemType = [
        {id: '1', name: 'Fixed'},
        {id: '2', name: 'PCT'}
    ];
});