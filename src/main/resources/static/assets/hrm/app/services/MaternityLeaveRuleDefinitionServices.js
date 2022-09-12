'use strict';

app.factory('MaternityLeaveRuleDefinitionServices', ['$http', function ($http) {
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

    DataOp.getAllMaternityLeavePolicyInfo = function (pMaternityLeaveRuleID,AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/maternityLeavePolicy/get?access_token='+AccessToken+"&pMaternityLeavePolicyID="+pMaternityLeaveRuleID,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
        });
        return promise;
    };

    DataOp.save = function (maternityLeaveRuleDef, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        return $http.post(ApiUrl + "/maternityLeavePolicy/save?access_token=" + token, maternityLeaveRuleDef, config);
    };

    return DataOp;
}]);

