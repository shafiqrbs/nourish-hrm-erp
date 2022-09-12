'use strict';

app.factory('PositionServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/positions";
    var DataOp = {};
    DataOp.getAllPosition = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/getAllPosition?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };
    DataOp.getAllPosition = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/getAllPosition?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getPositionById = function (id,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/get?access_token='+AccessToken+"&id="+id,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.save = function (position, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(position.id == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, position, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, position, config);
        }
    };

    return DataOp;
}]);
