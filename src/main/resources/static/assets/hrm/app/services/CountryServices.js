'use strict';

app.factory('CountryServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/countries";
    var DataOp = {};

    DataOp.getAllCounties = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/getAllCountry?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getCountryById = function (id,AccessToken){
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

    DataOp.save = function (country, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(country.id == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, country, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, country, config);
        }
    };

    return DataOp;
}]);
