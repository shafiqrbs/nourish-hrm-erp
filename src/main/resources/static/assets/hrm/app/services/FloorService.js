'use strict';

app.factory('FloorService', ['$http', function ($http,TokenService) {
    var ApiUrl = "/hrm/api/v1/floor";

    var DataOp = {};

    DataOp.getAllFloor = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/findAllFloor?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
        });
        return promise;
    };

    DataOp.getFloorById = function (id,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/findOneFloor?access_token='+AccessToken+"&id="+id,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.save = function (floor, token) {
         var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(floor.id == undefined){
            floor.floorCode = 423432;
            return $http.post(ApiUrl + "/save?access_token=" + token, floor, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, floor, config);
        }

    };

    return DataOp;
}]);


