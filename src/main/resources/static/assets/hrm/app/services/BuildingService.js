'use strict';

app.factory('BuildingService', ['$http', function ($http,TokenService) {
    var ApiUrl = "/hrm/api/v1/building";

    var DataOp = {};

    DataOp.getAllBuilding = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/findAllBuilding?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
        });
        return promise;
    };

    DataOp.getBuildingById = function (id,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/findOneBuilding?access_token='+AccessToken+"&id="+id,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.save = function (building, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(building.id == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, building, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, building, config);
        }
    };

    return DataOp;
}]);


