'use strict';

app.factory('AttendanceCalendarServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/attendances";
    var DataOp = {};

    DataOp.getAttendanceCalendarView = function (id,startDate,endDate) {
            return $http.get(ApiUrl+'/calendarview?id='+id+'&startDate='+startDate+'&endDate='+endDate);
    };

    return DataOp;
}]);
