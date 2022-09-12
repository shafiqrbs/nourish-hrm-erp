'use strict';

app.factory('SmsSettingsService', ['$http', function ($http,TokenService) {
    var ApiUrl = "/hrm/api/v1/sMSSettings";

    var DataOp = {};

    DataOp.getAllSmsSettings = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/findAllSMSSettings?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
        });
        return promise;
    };

    DataOp.getSmsSettingsById = function (id,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/findOneSMSSettings?access_token='+AccessToken+"&id="+id,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.save = function (sMSSettings, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(sMSSettings.id == undefined){
            sMSSettings.sectionCode = 423432;
            return $http.post(ApiUrl + "/save?access_token=" + token, sMSSettings, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, sMSSettings, config);
        }
    };

    return DataOp;
}]);


