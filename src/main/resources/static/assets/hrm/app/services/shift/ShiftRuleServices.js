'use strict';

app.factory('ShiftRuleServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/shiftRules";
    var DataOp = {};

    DataOp.getAllShiftRuleCode = function (AccessToken){
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/getAllShiftRuleCode?access_token='+AccessToken,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getShiftRuleByCode = function (pShiftRuleCode,AccessToken){
        //    alert(id);
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/getByRuleCode?access_token='+AccessToken+"&pShiftRuleCode="+pShiftRuleCode,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getShiftRuleById = function (id,AccessToken){
        //    alert(id);
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/get?access_token='+AccessToken+"&ShiftId="+id,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.save = function (shiftRules, token) {
        // var config = {
        //      headers : {
        //          'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
        //          'Content-Type': "application/json"
        //      }
        //  }

        /*if(shiftRules.id == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, shiftRules, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, shiftRules, config);
        }*/

        return $http.post(ApiUrl + "/save?access_token=" + token, shiftRules);
    };

    DataOp.saveWithDetails = function (shiftRule,shiftRosterDetailData, token) {

        var data ={
            shiftRule : shiftRule,
            shiftPlanRosteringDTOS: shiftRosterDetailData
        }

        return $http.post("/hrm/api/v1/shift/rule/save?access_token=" + token, data);
    };

    return DataOp;
}]);
