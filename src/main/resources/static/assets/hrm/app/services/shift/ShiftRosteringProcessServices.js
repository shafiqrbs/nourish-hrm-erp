'use strict';

app.factory('ShiftRosteringProcessServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/shift";
    var DataOp = {};


    DataOp.process = function (shiftRoster, token) {
        return $http.post(ApiUrl + "/rule/rostering/process?access_token=" + token, shiftRoster);
    };

    return DataOp;
}]);
