'use strict';

app.factory('LeaveYearServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/leave";
    var DataOp = {};

    DataOp.getActiveLeaveYear = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/leaveYear/get?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
        });
        return promise;
    };

    DataOp.save = function (leaveYear, token) {
          return $http.post(ApiUrl + "/leaveYear/save?access_token=" + token, leaveYear);
    };

    return DataOp;
}]);

