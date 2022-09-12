'use strict';

app.factory('SalaryRulesServices', ['$http', function ($http) {

    var ApiUrl = "/hrm/api/v1/salaryRules";

    var salaryRulesObj = {};

    salaryRulesObj.getAllSalaryRuleByRuleCode = function (pAccessToken,pSalaryRuleCode) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/getAllSalaryRuleByRuleCode?access_token='+pAccessToken+"&pSalaryRuleCode="+pSalaryRuleCode,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    salaryRulesObj.getAllSalaryRuleCode = function (pAccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/getAllSalaryRuleCode?access_token='+pAccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    salaryRulesObj.get = function (id,AccessToken){
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

    salaryRulesObj.SaveOrUpdate = function (data, token) {
        console.log(data);
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(data.id == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, data, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, data, config);
        }
    };

    return salaryRulesObj;
}]);

