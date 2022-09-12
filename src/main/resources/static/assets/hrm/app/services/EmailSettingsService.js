'use strict';

app.factory('EmailSettingsService', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/emailSettings";
    var DataOp = {};

    DataOp.getAllEmailSettings = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/findAllEmailSettings?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getEmailSettingsById = function (id,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/findOneEmailSettings?access_token='+AccessToken+"&id="+id,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.save = function (emailSettings, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(emailSettings.id == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, emailSettings, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, emailSettings, config);
        }
    };

    return DataOp;
}]);


