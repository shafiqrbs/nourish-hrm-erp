'use strict';

app.factory('DivisionServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/divisions";
    var DataOp = {};

    DataOp.getAllDivision = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/getAllDivision?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getDivisionById = function (id,AccessToken){
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

    DataOp.save = function (division, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(division.id == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, division, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, division, config);
        }
    };

    return DataOp;
}]);
