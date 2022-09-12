app.controller("leaveReportingController",
    function($rootScope, $scope, $http, $location, $timeout, DeductionServices) {

    $scope.leaveListGrid = {
        paginationPageSizes: [25, 50, 75],
        paginationPageSize: 25,
        enableSorting: true,
        columnDefs: [
          { name: 'firstName', displayName:'Employee Name' },
          { name: 'annualLeaveUsed', displayName:'Used', category:'Annual Leave'},
          { name: 'annualLeaveBalance', displayName:'Balance', category:'Annual Leave'},
          { name: 'sickLeaveUsed', displayName:'Used1'},
          { name: 'sickLeaveBalance', displayName:'Balance1'},
          { name: 'familyEmargencyLeaveUsed', displayName:'Used2'},
          { name: 'familyEmargencyLeaveBalance', displayName:'Balance2'},
          { name: 'causalLeaveUsed', displayName:'Used3'},
          { name: 'causalEmargencyLeaveBalance', displayName:'Balance3'}
        ]
      };

    function init(){
        DeductionServices.getAllDeduction().then(function(resp){
            $scope.leaveListGrid.data = resp.data.content;
            console.log(resp.data.content);
        })
    }

    //init();
});