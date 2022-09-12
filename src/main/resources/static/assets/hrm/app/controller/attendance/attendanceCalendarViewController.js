app.controller("attendanceCalendarViewController",
    function($rootScope, $scope, $http, $filter, $location, $timeout, AttendanceCalendarServices, InitializationServices) {

     //Variable Initialization
      var sessionId = null;
      $scope.attendanceCurrentMonthStartDate = '';
      $scope.attendanceCurrentMonthMonthEndDate = '';

    function init(id,startDate,endDate){
            AttendanceCalendarServices.getAttendanceCalendarView(id,startDate,endDate).then(function(resp){
                var rawData = resp.data;
                console.log(rawData);

                $scope.attendanceMonthStartDate = startDate;
                $scope.attendanceMonthEndDate = endDate;

                var totalRawRowCount = resp.data.length;
                //alert(totalRawRowCount);
                $scope.calendarData=[];
                var currentMonthNumber =$filter('date')(startDate,'MM');
                var temp = [];
                var columnStart = 1;
                var monthNumber = 0;
                var isCurrentMonth = true;
                for(var i=0; i<totalRawRowCount; i++)
                {
                    monthNumber =$filter('date')(rawData[i].date,'MM');
                    if(currentMonthNumber == monthNumber)
                        isCurrentMonth = true;
                    else
                        isCurrentMonth = false;

                    temp.push({
                        "date" : rawData[i].date,
                        "day": rawData[i].day,
                        "time": rawData[i].time,
                        "employee" : rawData[i].employee,
                        "checkInTime": rawData[i].checkInTime,
                        "checkOutTime": rawData[i].checkOutTime,
                        "present": rawData[i].present,
                        "weekend": rawData[i].weekend,
                        "leave": rawData[i].leave,
                        "absence": rawData[i].absence,
                        "holiday": rawData[i].holiday,
                        "leaveTypeName": rawData[i].appliedLeaveTypeName,
                        "holidayName": rawData[i].holidayName,
                        "isCurrentMonth": isCurrentMonth
                    })


                    if(columnStart == 7)
                    {
                        $scope.calendarData.push({
                            "data":temp
                        });

                        temp = [];
                        columnStart = 0
                    }
                    columnStart++;
                }
                console.log($scope.calendarData);
            });
        }

     $scope.showCurrentMonthAttendance = function(employeeId,startDate,endDate){
        init(employeeId,startDate,endDate);
     };

     $scope.showPreviousMonthAttendance = function(employeeId,startDate,endDate){
         //alert(startDate);
         var resp = InitializationServices.getMonthDateAfterCalculation(startDate,'prev');
         startDate = resp.monthStartDate;
         endDate = resp.monthEndDate;
         init(employeeId,startDate,endDate);
     }

     $scope.showNextMonthAttendance = function(employeeId,startDate,endDate){
         //alert(startDate);
         var resp = InitializationServices.getMonthDateAfterCalculation(startDate,'next');
         startDate = resp.monthStartDate;
         endDate = resp.monthEndDate;
         init(employeeId,startDate,endDate);
     }

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

            $scope.attendanceCurrentMonthStartDate = resp.monthRange.monthStartDate;
            $scope.attendanceCurrentMonthMonthEndDate = resp.monthRange.monthEndDate;

            init($scope.employeeId,$scope.attendanceMonthStartDate,$scope.attendanceMonthEndDate);
        });
    }

    appStart();


});