app.controller("attendanceReportingController",
    function($rootScope, $scope, $http, $location, $timeout, DeductionServices) {

    $scope.attendanceReportingGrid = {
        paginationPageSizes: [25, 50, 75],
        paginationPageSize: 25,
        enableSorting: true,
        columnDefs: [
          { name: 'firstName', displayName:'Employee Name' },
          { name: 'totalPresentDays', displayName:'Total Present Days' },
          { name: 'totalAbsentDays', displayName:'Total Absent Days'},
          { name: 'totalLateDays', displayName:'Total Late Days' },
          { name: 'totalOverTime', displayName:'Total Over Time' },
          { name: 'attendancePercentage', displayName:'Attendance Percentage(%)'}
        ]
      };

    function init(){
        DeductionServices.getAllDeduction().then(function(resp){
            $scope.attendanceReportingGrid.data = resp.data.content;
            console.log(resp.data.content);
        })
    }

   // init();
});