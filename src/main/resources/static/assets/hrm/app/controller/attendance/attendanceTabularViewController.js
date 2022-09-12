app.controller("attendanceTabularViewController",
    function($rootScope, $scope, $http, $location, $timeout, attendanceServices, InitializationServices) {
        var sessionId = null;
        function init(employeeId,startReqDate,endReqDate){
            //$scope.attendanceTabularLists = attendanceServices.attendanceLists();
            //console.log($scope.attendanceTabularLists);
            var startTile = InitializationServices.getFormattedAttendanceTitle(startReqDate);
            var endTile = InitializationServices.getFormattedAttendanceTitle(endReqDate);
            $scope.attendanceHeading = startTile+" - "+endTile;

             attendanceServices.getAttendanceListByMonthOrWeek(employeeId,startReqDate,endReqDate).then(function(resp){
                $scope.attendanceTabularLists = resp.data;
                console.log(resp.data);
            });
        }


        $scope.columns = [
            {
                "name" : "date",
                "label" : "Date",
                "width" : "100px"
            },
            {
              "name" : "checkIn",
              "label" : "Check In",
              "width" : "150px"
            },
            {
                "name" : "checkOut",
                "label" : "Check Out",
                "width" : "150px"
            },
             {
                 "name" : "status",
                 "label" : "Status",
                 "width" : "500px"
             }
        ];

    // Attendance Start
    function appStart(){
        InitializationServices.getWeekDaysObj().then(function(resp){
            //console.log(resp.data);
            var weekDayNumber = resp.data.weekDayNumber;
            var resp  = InitializationServices.getAllDataForAttendanceListViewInitialization(sessionId,weekDayNumber);
            console.log(resp);
            $scope.employeeId = resp.employeeId;

            //Month Start and End Date Initialize
            $scope.attendanceMonthStartDate = resp.monthRange.monthStartDate;
            $scope.attendanceMonthEndDate = resp.monthRange.monthEndDate;

            init($scope.employeeId,$scope.attendanceMonthStartDate,$scope.attendanceMonthEndDate);
        });
    }

    appStart();

});