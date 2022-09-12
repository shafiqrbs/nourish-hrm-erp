'use strict';

app.factory('LeaveRuleServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/leave";
    var DataOp = {};

    DataOp.getAllLeaveRuleName = function (AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/leaveRule/getAllLeaveRuleName?access_token='+AccessToken,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getAllLeavePolicy = function (AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/leavePolicy/getAll?access_token='+AccessToken,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getAllMaternityLeaveRule = function (AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/leaveRule/getAllMaternityLeaveRule?access_token='+AccessToken,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.save = function (leaveRule, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        return $http.post(ApiUrl + "/leaveRule/save?access_token=" + token, leaveRule, config);
    };

    return DataOp;
}]);

