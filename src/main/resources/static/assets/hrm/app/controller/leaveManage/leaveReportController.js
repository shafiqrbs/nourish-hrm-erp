app.controller("LeaveReportController",
    function($rootScope, $scope, $http, $location, $timeout, DepartmentServices) {

    function init(){
        CalendarServices.getThisMonthHolidayData().then(function(resp){
            $scope.departments = resp;
            console.log(JSON.stringify(resp));
        })
    }

    init();
});