app.controller("attendanceListViewController",
    function($rootScope, $scope, $filter, $http, $location, $timeout, $interval, attendanceServices, InitializationServices) {

    //Variable Initialization
    $scope.isCheckedIn = false;
    $scope.checkInId = 0;

    var sessionId = null;
    $scope.employeeId = '';
    $scope.attendanceWeekStartDate = '';
    $scope.attendanceWeekEndDate = '';

    $scope.attendanceMonthStartDate = '';
    $scope.attendanceMonthEndDate = '';

    $scope.attendanceStartDate = ''
    $scope.attendanceEndDate = ''
    $scope.attendanceType = ''

    $scope.todayProgressPct = 0;
    $scope.todayTotalHour = 0;
    $scope.weekStartDate = '';
    $scope.weekEndDate = '';

    $scope.monthStartDate = '';
    $scope.monthEndDate = '';

    $scope.attendanceHeading = "";

    var todayCheckInDateTime = '';
    var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun","Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];

    //Date Initialization
    var currentDate = new Date();
    var year = currentDate.getFullYear();
    var month = ("0" + (currentDate.getMonth() + 1)).slice(-2);
    var date = currentDate.getDate();
    var day = currentDate.getDay();
    var firstDateOfWeek = ("0" + (date - day)).slice(-2);
    var endDateOfWeek = ("0" + (parseInt(firstDateOfWeek) + 7)).slice(-2);
    //alert(endDateOfWeek);

    var todayDateWithFormat = year+"-"+month+"-"+("0" + date).slice(-2);

    //alert(todayDateWithFormat);
    var promise = null;

    function init(employeeId,startReqDate,endReqDate,viewType=null){
        $scope.attendanceLists = [];
        var attendanceLists = [];

        //Assign Attendance Start Date, End Date and attendance type
        $scope.attendanceStartDate = startReqDate;
        $scope.attendanceEndDate = endReqDate;
        $scope.viewType = viewType;

        var startTile = InitializationServices.getFormattedAttendanceTitle(startReqDate);
        var endTile = InitializationServices.getFormattedAttendanceTitle(endReqDate);
        $scope.attendanceHeading = startTile+" - "+endTile;

        var newDataList = [];
        var todayDate = new Date();
        var isToday = false;

        var progressPercentage = 0;
        var todayTotalTimeInMilliSecond = 0;

        attendanceServices.getAttendanceListByMonthOrWeek(employeeId,startReqDate,endReqDate).then(function(resp){
            attendanceLists = resp.data;
            console.log(resp.data);
            angular.forEach(attendanceLists,function(v,index){
                var day = v.day;
                var date = new Date(v.date);
                var vDate = $filter('date')(date, 'yyyy-MM-dd');
                //alert(vDate);
                var checkInTime = v.checkInTime;
                var checkOutTime = v.checkOutTime;
                var checkInDateTime = new Date(vDate+' '+checkInTime);
                var checkOutDateTime = new Date(vDate+' '+checkOutTime);
                //alert(isDate(checkInTime));
                //alert(checkInDateTime);

                var totalTime = '';
                var milliseconds = 0;
                angular.forEach(v.attendanceDetail,function(attnDetails,index){
                    var checkIn = new Date(vDate+' '+attnDetails.checkIn);
                    var checkOut = new Date(vDate+' '+attnDetails.checkout);
                    if(isDate(checkIn) && isDate(checkOut))
                    {
                        milliseconds = milliseconds + parseFloat((Date.parse(checkOut) - Date.parse(checkIn))/1000);
                    }
                    else if(isDate(checkIn) && !isDate(checkOut) && todayDate.getFullYear() == checkIn.getFullYear() && todayDate.getMonth() == checkIn.getMonth() && todayDate.getDate() == checkIn.getDate())
                    {
                        var currentDateTime = new Date();
                        milliseconds = milliseconds + parseFloat((Date.parse(currentDateTime) - Date.parse(checkIn))/1000);
                    }
                });

                var vDate = new Date(date);
                var month = ("0" + (vDate.getDate())).slice(-2);
                // Checking today
                if(todayDate.getFullYear() == vDate.getFullYear() && todayDate.getMonth() == vDate.getMonth() && todayDate.getDate() == vDate.getDate())
                {
                    todayCheckInDateTime = '';
                    if(isDate(checkInDateTime) && checkInTime !=null && checkOutTime == null)
                    {
                        todayCheckInDateTime = checkInDateTime;
                        //alert(todayCheckInDateTime);
                    }
                    else if(checkOutTime != null)
                    {
                        $interval.cancel(promise);
                    }

                    if(milliseconds > 0)
                    {
                        progressPercentage = (((milliseconds/(60*60)) / 16) * 100);
                        totalTime = millisecondsToTime(milliseconds,true);
                    }
                    else{
                        totalTime = millisecondsToTime(milliseconds,true);
                    }

                    todayTotalTimeInMilliSecond = milliseconds;
                    day = "Today, "+month;
                    isToday = true;
                    $scope.todayProgressPct = progressPercentage;
                    $scope.todayTotalHour = totalTime;
                    //alert(checkOutTime);
                }
                else{
                    day = v.day+", "+month;
                    isToday = false;

                    if(milliseconds > 0)
                    {
                        progressPercentage = (((milliseconds/(60*60)) / 16) * 100);
                        totalTime = millisecondsToTime(milliseconds,false);
                    }
                    else{
                        totalTime = millisecondsToTime(milliseconds,false);
                    }
                }


                $scope.attendanceLists[index] = {
                    "id":v.id,
                    "date":v.date,
                    "day":day,
                    "checkInTime":v.checkInTime,
                    "checkOutTime":v.checkOutTime,
                    "isPresent":v.present,
                    "isWeekend":v.weekend,
                    "isAbsence":v.absence,
                    "isLeave":v.leave,
                    "isToday":isToday,
                    "leaveTypeName":v.leaveTypeName,
                    "totalTime":totalTime,
                    "progressPercentage":progressPercentage
                };
             });


              //console.log($scope.attendanceLists);

             if(todayCheckInDateTime !='')
             {
                 $interval.cancel(promise);
                 promise = $interval(function() {
                         todayTotalTimeInMilliSecond = todayTotalTimeInMilliSecond + 1;
                         $scope.todayAttendanceProgress(todayTotalTimeInMilliSecond);
                     }, 1000);
             }

             console.log($scope.attendanceLists);
        });

        //Last checked in status
        GetLastCheckedInStatus(employeeId,todayDateWithFormat);
    }

    function GetLastCheckedInStatus(employeeId,todayDateWithFormat)
    {
        attendanceServices.getEmployeeLastCheckInStatus(employeeId,todayDateWithFormat).then(function(resp){
            console.log(resp.data);
            if(resp.data.id == undefined)
            {
               $scope.checkInId = 0;
               $scope.isCheckedIn = false;
            }
            else if(resp.data.checkOutTime != null && resp.data.checkOutTime != "")
             {
                $scope.checkInId = 0;
                $scope.isCheckedIn = false;
             }
            else
            {
               $scope.checkInId = resp.data.id;
               $scope.isCheckedIn = true;
            }
        });
    }

    $scope.todayAttendanceProgress = function(todayTotalTimeInMilliSecond){
        $scope.todayProgressPct = (((todayTotalTimeInMilliSecond/(60*60)) / 16) * 100);
        $scope.todayTotalHour = millisecondsToTime(todayTotalTimeInMilliSecond,true);
    }

    function isDate (x)
    {
        return (null != x) && !isNaN(x) && ("undefined" !== typeof x.getDate);
    }

    function millisecondsToTime(milliseconds,isToday)
    {
        if(milliseconds > 0){
            var seconds = Math.floor(milliseconds % 60);
            var minutes = Math.floor((milliseconds / 60) % 60);
            var hours = Math.floor((milliseconds / (60 * 60)) % 60);
        }

        if(isToday){
            if(milliseconds > 0){
                return ("0" + (hours)).slice(-2) + ":" + ("0" + (minutes)).slice(-2)+ ":" + ("0" + (seconds)).slice(-2) + " Hrs";
            }
            else{
                return "00:00:00 Hrs";
            }
        }
        else{
            if(milliseconds > 0){
                return ("0" + (hours)).slice(-2) + ":" + ("0" + (minutes)).slice(-2)+ " Hrs";
            }
            else{
                return "00:00 Hrs";
            }
        }
    }

    $scope.showAttendanceWeekly = function(employeeId,startDate,endDate){
        var startTile = InitializationServices.getFormattedAttendanceTitle(startDate);
        var endTile = InitializationServices.getFormattedAttendanceTitle(endDate);

        $scope.attendanceHeading = startTile+" - "+endTile;
        init(employeeId,startDate,endDate,'weekly');
    }

    $scope.showAttendanceMonthly = function(employeeId,startDate,endDate){
        var startTile = InitializationServices.getFormattedAttendanceTitle(startDate);
        var endTile = InitializationServices.getFormattedAttendanceTitle(endDate);

        $scope.attendanceHeading = startTile+" - "+endTile;
        init(employeeId,startDate,endDate,'monthly');
    }

    $scope.showPreviousAttendance = function(employeeId,startDate,endDate,viewType){
        //alert(viewType);
        if(viewType == "weekly"){
            startDate = InitializationServices.getDateAfterCalculation(startDate,7,'sub');
            endDate = InitializationServices.getDateAfterCalculation(endDate,7,'sub');
        }
        else if(viewType == "monthly"){
            var resp = InitializationServices.getMonthDateAfterCalculation(startDate,'prev');
            startDate = resp.monthStartDate;
            endDate = resp.monthEndDate;
        }

        var startTile = InitializationServices.getFormattedAttendanceTitle(startDate);
        var endTile = InitializationServices.getFormattedAttendanceTitle(endDate);

        $scope.attendanceHeading = startTile+" - "+endTile;
        //alert($scope.attendanceHeading);
        init(employeeId,startDate,endDate,viewType);
    }

    $scope.showNextAttendance = function(employeeId,startDate,endDate,viewType){
        //alert(startDate);
        if(viewType == "weekly"){
            startDate = InitializationServices.getDateAfterCalculation(startDate,7,'add');
            endDate = InitializationServices.getDateAfterCalculation(endDate,7,'add');
        }
        else if(viewType == "monthly"){
            var resp = InitializationServices.getMonthDateAfterCalculation(startDate,'next');
            startDate = resp.monthStartDate;
            endDate = resp.monthEndDate;
        }

        var startTile = InitializationServices.getFormattedAttendanceTitle(startDate);
        var endTile = InitializationServices.getFormattedAttendanceTitle(endDate);

        $scope.attendanceHeading = startTile+" - "+endTile;
        //alert($scope.attendanceHeading);
        init(employeeId,startDate,endDate,viewType);
    }

    $scope.CheckInCheckOutAction = function(checkInId){
        //alert(checkInId);

        var employeeId = $scope.employeeId;
        var startDate = $scope.attendanceWeekStartDate;
        var endDate = $scope.attendanceWeekEndDate;
        var viewType = 'weekly';

        var todayDate = $filter('date')(new Date(), 'yyyy-MM-dd');
        var time = $filter('date')(new Date(), 'HH:mm:ss');
        //alert(todayDate);
        //alert(time);

        var attendances =
        {
          "date": todayDate,
          "employee": {
            "id": employeeId
          },
          "id": checkInId,
          "time": time
        }

        //console.log(attendances);

         CheckInCheckOut(attendances,employeeId,startDate,endDate);
    };

    //var myVar = setInterval(function(){ myTimer() }, 1000);
    $scope.times = "";
    $interval(function() {
        myTimer();
    }, 1000);

    function myTimer() {
        var d = new Date();
       $scope.times = d.toLocaleTimeString();
    }

    function CheckInCheckOut(attendances,employeeId,startDate,endDate)
    {
        console.log(attendances);
        attendanceServices.saveAttendance(attendances).then(function(resp){
            init(employeeId,startDate,endDate,'weekly');
        });
    }

    // Attendance Start
    function AttendanceListViewStart(){
        InitializationServices.getWeekDaysObj().then(function(resp){
            console.log(resp.data);

            var weekDayNumber = resp.data.weekDayNumber;
            var resp  = InitializationServices.getAllDataForAttendanceListViewInitialization(sessionId,weekDayNumber);
            console.log(resp);
            $scope.employeeId = resp.employeeId;
            //Week Start and End Date Initialize
            $scope.attendanceWeekStartDate = resp.weekRange.weekStartDate;
            $scope.attendanceWeekEndDate = resp.weekRange.weekEndDate;

            //Month Start and End Date Initialize
            $scope.attendanceMonthStartDate = resp.monthRange.monthStartDate;
            $scope.attendanceMonthEndDate = resp.monthRange.monthEndDate;

           init($scope.employeeId,$scope.attendanceWeekStartDate,$scope.attendanceWeekEndDate,'weekly');
        });
    }

    AttendanceListViewStart();

});