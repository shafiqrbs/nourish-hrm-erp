'use strict';

app.factory('CityServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/cities";
    var DataOp = {};

    DataOp.getAllCities = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/getAllCity?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getCityById = function (id,AccessToken){
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

    DataOp.save = function (city, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(city.id == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, city, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, city, config);
        }
    };

    return DataOp;
}]);

