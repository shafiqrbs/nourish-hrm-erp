app.controller("addEditLeaveEntitlementController",
    function($rootScope, $scope, $http, $location, $timeout, LeaveEntitlementServices) {

    //Initialization
    $scope.leaveEntitlement = {};
    $scope.leaveEntitlement.status=true;
    $scope.InvalidSubmit = false;
    var searchObject = $location.search();

    function editForm(id) {
        LeaveEntitlementServices.getLeaveEntitlementById(id).then(function(resp){
            $scope.leaveEntitlement = resp.data;
            //console.log(JSON.stringify(resp.data));
        })
    }

    if (searchObject.id != undefined){
        editForm(searchObject.id);
    }

    $scope.PaidType = [
        {id: '1', name: 'Paid'},
        {id: '2', name: 'Unpaid'}
    ];

    // Save Leave Entitlement
    $scope.saveForm = function(isValid,leaveEntitlement){
        if(isValid){
            LeaveEntitlementServices.saveLeaveEntitlement(leaveEntitlement).then(function(resp){
                window.location.href = "/#!/admin/settings/leave/entitlement";
            });
        }
        else{
            $scope.InvalidSubmit = true;
        }
    }

    $scope.exitForm = function(){
        window.location.href = "/#!/admin/settings/leave/entitlement";
    }
});