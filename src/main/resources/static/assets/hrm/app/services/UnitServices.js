'use strict';

app.factory('UnitServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/units";
    var DataOp = {};

    DataOp.getAllUnits = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/getAllUnit?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getUnitById = function (id,AccessToken){
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

    DataOp.save = function (unit, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(unit.id == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, unit, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, unit, config);
        }
    };

    return DataOp;
}]);
