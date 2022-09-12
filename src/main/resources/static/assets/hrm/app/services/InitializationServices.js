'use strict';

app.factory('InitializationServices', ['$http','$filter', function ($http,$filter) {
    var DataOp = {};

    var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun","Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    var weekDays = ["SUN","MON","TUE","WED","THU","FRI","SAT"];

    function getEmployeeId(sessionId){
        var employeeId = 1;
        return employeeId;//$http.get(ApiUrl);
    }

    function getWeekRange(date,weekDayNumber){
        //alert(weekDayNumber);
        //Blank Week range Initialize
        var weekRange = {};

        //Making Date Object
        var dateObj = new Date(date);

        //Preparing week range
        var year = dateObj.getFullYear();
        var month = ("0" + (dateObj.getMonth() + 1)).slice(-2);
        var date = dateObj.getDate();
        var day = dateObj.getDay();
        var dayNumber = 0;
        var firstDateNumberOfWeek = date - weekDayNumber + 1;
        var endDateNumberOfWeek = parseInt(firstDateNumberOfWeek) + 6;

        var firstDateOfWeek = new Date(dateObj.setDate(firstDateNumberOfWeek));
        var endDateOfWeek = new Date(dateObj.setDate(endDateNumberOfWeek));

       //Assign week range
        weekRange.weekStartDate = $filter('date')(firstDateOfWeek, 'yyyy-MM-dd');
        weekRange.weekEndDate = $filter('date')(endDateOfWeek, 'yyyy-MM-dd');
        return weekRange; //return week range
    }

    function getMonthRange(date){
        //Blank Month range Array Initialize
        var monthRange = {};

        //Making Date Object
        var dateObj = new Date(date);

        //Preparing month range
        var year = dateObj.getFullYear();
        var month = dateObj.getMonth();
        var firstDateOfMonth = new Date(year, month, 1);
        var lastDateOfMonth = new Date(year, month + 1, 0);

        //Assign month range
        monthRange.monthStartDate = $filter('date')(firstDateOfMonth, 'yyyy-MM-dd');
        monthRange.monthEndDate = $filter('date')(lastDateOfMonth, 'yyyy-MM-dd');

        return monthRange; //return week range
    }


    DataOp.getAllDataForAttendanceListViewInitialization = function (sessionId,weekDayNumber) {
        var todayDate = new Date();
        var attendanceAllInitializeData = {};

        attendanceAllInitializeData.employeeId = getEmployeeId(sessionId);
        attendanceAllInitializeData.weekRange = getWeekRange(todayDate,weekDayNumber);
        attendanceAllInitializeData.monthRange = getMonthRange(todayDate);
        return attendanceAllInitializeData;
    };

    DataOp.getEmployeeId = function (sessionId) {
            return getEmployeeId(sessionId);
        };

    DataOp.getFormattedAttendanceTitle = function (date) {
        var formattedDate = '';
        var dateObj = new Date(date);
        var year = dateObj.getFullYear();
        var month = dateObj.getMonth();
        var date = ("0" + (dateObj.getDate())).slice(-2);
        formattedDate = date+" "+monthNames[month]+" "+year
        return formattedDate;
    };

    DataOp.getDateAfterCalculation = function (pDate,days,calculationType) {
        var dateObj = new Date(pDate);
        if(calculationType == "add")
            var diffDateObj = new Date(dateObj.getTime() + (days * 24 * 60 * 60 * 1000));
        else if(calculationType == "sub")
            var diffDateObj = new Date(dateObj.getTime() - (days * 24 * 60 * 60 * 1000));
        return diffDateObj.getFullYear()+"-"+("0" + (diffDateObj.getMonth()+1)).slice(-2)+"-"+("0" + (diffDateObj.getDate())).slice(-2)
    };

    DataOp.getCurrentMonthRange = function (){
        //Blank Month range Array Initialize
        var monthRange = {};

        //Get Current Date object
        var dateObj = new Date();

        //Preparing month range
        var firstDateOfMonth = new Date(dateObj.getFullYear(), dateObj.getMonth(), 1);
        var lastDateOfMonth = new Date(dateObj.getFullYear(), dateObj.getMonth() + 1, 0);

        //Assign month range
        monthRange.monthStartDate = $filter('date')(firstDateOfMonth, 'yyyy-MM-dd');
        monthRange.monthEndDate = $filter('date')(lastDateOfMonth, 'yyyy-MM-dd');

        return monthRange; //return range
    }

    DataOp.getCurrentYearRange = function (){
        //Blank Month range Array Initialize
        var yearRange = {};

        //Get Current Date object
        var dateObj = new Date();
        var month = ("0" + (dateObj.getMonth()+1)).slice(-2);
        var year = dateObj.getFullYear();

        var startDate = year+'-01-01';
        var endDate = year+'-12-31';

        //Assign month range
        yearRange.yearStartDate = $filter('date')(startDate, 'yyyy-MM-dd');
        yearRange.yearEndDate = $filter('date')(endDate, 'yyyy-MM-dd');;

        return yearRange; //return range
    }

    DataOp.getMonthDateAfterCalculation = function (pDate,calculationType) {
        //Blank Month range Array Initialize
        var monthRange = {};
        var dateObj = new Date(pDate);

        //Preparing month range
        var firstDateOfMonth='';
        var lastDateOfMonth='';

        if(calculationType == "prev")
        {
            dateObj.setMonth(dateObj.getMonth() - 1);
            firstDateOfMonth = new Date(dateObj.getFullYear(), dateObj.getMonth(), 1);
            lastDateOfMonth = new Date(dateObj.getFullYear(), dateObj.getMonth() + 1, 0);
        }
        else if(calculationType == "next")
        {
            dateObj.setMonth(dateObj.getMonth() + 1);
            firstDateOfMonth = new Date(dateObj.getFullYear(), dateObj.getMonth(), 1);
            lastDateOfMonth = new Date(dateObj.getFullYear(), dateObj.getMonth() + 1, 0);
        }

        //Assign month range
        monthRange.monthStartDate = $filter('date')(firstDateOfMonth, 'yyyy-MM-dd');
        monthRange.monthEndDate = $filter('date')(lastDateOfMonth, 'yyyy-MM-dd');

        return monthRange; //return range
    };

    DataOp.getYearDateRangeAfterCalculation = function (pDate,calculationType) {
            //Blank Month range Array Initialize
            var yearRange = {};
            var dateObj = new Date(pDate);
            var month = ("0" + (dateObj.getMonth()+1)).slice(-2);
            var year = dateObj.getFullYear();

            if(calculationType == "prev")
            {
                year = parseInt(year)-1;
            }
            else if(calculationType == "next")
            {
                year = parseInt(year)+1;
            }

            var startDate = year+'-01-01';
            var endDate = year+'-12-31';

            //Assign month range
            yearRange.yearStartDate = $filter('date')(startDate, 'yyyy-MM-dd');
            yearRange.yearEndDate = $filter('date')(endDate, 'yyyy-MM-dd');;

            return yearRange; //return range
        };

    DataOp.getWeekDaysObj = function () {
        try {
                var todayDate = new Date();
                var day = todayDate.getDay();
                return $http.get('/hrm/api/v1/weekdays/{keyValue}?keyValue='+weekDays[day]);
            }
            catch(err){
                return {};
            }
    };

    return DataOp;
}]);
