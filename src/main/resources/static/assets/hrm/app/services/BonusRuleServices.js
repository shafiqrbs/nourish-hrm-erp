'use strict';

app.factory('BonusRuleServices', ['$http', function ($http) {

    var ApiUrl = "/hrm/api/v1/bonus";

    var bonusRulesObj = {};

    bonusRulesObj.getAllBonusRuleCode = function (pAccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/bonusRule/get?access_token='+pAccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    bonusRulesObj.getAllBonusRuleByRuleCode = function (pAccessToken,pBonusRuleCode) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/bonusRule/getByCode?access_token='+pAccessToken+"&pBonusRuleCode="+pBonusRuleCode,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    bonusRulesObj.getBonusPolicyDetailInfoById = function (pAccessToken,pBonusRuleCode,pBonusPaymentPolicyId) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/bonusRule/getBonusPolicyDetailByCode?access_token='+pAccessToken+"&pBonusRuleCode="+pBonusRuleCode+"&pBonusPaymentPolicyId="+pBonusPaymentPolicyId,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    bonusRulesObj.get = function (id,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/get?access_token='+AccessToken+"&id="+id,
        }).then(function successCallback(response){
            return response.data;GetHeadType
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    bonusRulesObj.SaveOrUpdate = function (data, token) {
        console.log(data);
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(data.bonusPaymentPolicyId == undefined){
            return $http.post(ApiUrl + "/bonusRule/save?access_token=" + token, data, config);
        }
        else{
            return $http.put(ApiUrl + "/bonusRule/update?access_token=" + token, data, config);
        }
    };

    return bonusRulesObj;
}]);
