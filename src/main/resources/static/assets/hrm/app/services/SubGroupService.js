'use strict';

app.factory('SubGroupService', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/subGroup";
    var DataOp = {};

    DataOp.getSubGroupById = function (id,AccessToken){
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

    DataOp.getAllSubGroup = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/findAllSubGroup?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
        });
        return promise;
    };

    DataOp.save = function (subGroup, token) {
         var config = {
                 headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(subGroup.id == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, subGroup, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, subGroup, config);
        }
    };

    return DataOp;
}]);


