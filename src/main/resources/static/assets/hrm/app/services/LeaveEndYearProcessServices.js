'use strict';

app.factory('LeaveEndYearProcessServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/leave";
    var DataOp = {};


    DataOp.LeaveProcess = function (leaveProcessInfo, token) {
         return $http.post(ApiUrl + "/LeaveEndYear/leaveProcess?access_token=" + token, leaveProcessInfo);
    };

    return DataOp;
}]);
