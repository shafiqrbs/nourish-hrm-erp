'use strict';

app.factory('AttendanceServices', ['$http', function ($http) {

    var ApiUrl = "/hrm/api/v1/attendances";

    var attendanceObj = {};

    attendanceObj.save = function (data, token) {
        console.log(data);
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        return $http.post(ApiUrl + "/entry/save?access_token=" + token, data, config);
    };

    return attendanceObj;
}]);
