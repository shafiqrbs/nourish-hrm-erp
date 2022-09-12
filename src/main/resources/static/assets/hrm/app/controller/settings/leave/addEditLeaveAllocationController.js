app.controller("addEditLeaveAllocationController",
    function($rootScope, $scope, $http, $location, $timeout, LeaveAllocationServices,LeaveEntitlementServices) {

    //Initialization
    $scope.assignLeave = {};
    $scope.assignLeave.status=true;
    $scope.InvalidSubmit = false;
    var searchObject = $location.search();

    function init(){
        LeaveEntitlementServices.getAllLeaveEntitlement().then(function(resp){
            $scope.leaveTypes = resp.data.content;
        })
    }
    init();

    function editForm(id) {
        LeaveAllocationServices.getAssignLeaveById(id).then(function(resp){
            $scope.assignLeave = resp.data;
            //console.log(JSON.stringify(resp.data));
        })
    }

    if (searchObject.id != undefined){
        editForm(searchObject.id);
    }

     // Save Leave Allocation
     $scope.saveForm = function(isValid,assignLeave){
         if(isValid){
             LeaveAllocationServices.saveAssignLeave(assignLeave).then(function(resp){
                  window.location.href = "/#!/admin/settings/leave/allocation";
             });
         }
         else{
             $scope.InvalidSubmit = true;
         }
     }

    $scope.exitForm = function(){
        window.location.href = "/#!/admin/settings/leave/allocation";
    }

    $scope.years = [
        {id: '1', year: '2017'},
        {id: '2', year: '2018'},
        {id: '3', year: '2019'},
        {id: '4', year: '2020'}
    ];

    $scope.leaveUnit = [
        {id: '1', name: 'Day'},
        {id: '2', name: 'Hour'}
    ];
});