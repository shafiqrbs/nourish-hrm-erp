'use strict';

app.factory('LeavePolicyInfoServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/leave";
    var DataOp = {};

    DataOp.getPolicyInfoByPolicyId = function (pLeavePolicyId,AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/leavePolicy/get?access_token='+AccessToken+"&LeavePolicyID="+pLeavePolicyId,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
        });
        return promise;
    };

    DataOp.getAllLeaveType = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/leaveType/get?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
        });
        return promise;
    };

    DataOp.getAllLeaveCategory = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/leaveCategory/get?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
        });
        return promise;
    };

    DataOp.getAllLeaveCredit = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/leaveCredit/get?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
        });
        return promise;
    };

    DataOp.generateLeavePolicyId = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/leavePolicyId/get?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
        });
        return promise;
    };

    DataOp.save = function (leavePolicyInfo, token) {

        if(leavePolicyInfo.policyID==undefined){
            return $http.post(ApiUrl + "/leavePolicy/save?access_token=" + token, leavePolicyInfo);
        }
        else{
            return $http.post(ApiUrl + "/leavePolicy/update?access_token=" + token, leavePolicyInfo);
        }
    };

    return DataOp;
}]);

