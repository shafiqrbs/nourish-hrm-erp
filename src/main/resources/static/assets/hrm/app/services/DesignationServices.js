'use strict';

app.factory('DesignationServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/designations";
    var DataOp = {};

    DataOp.getAllDesignation = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/getAllDesignation?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getDesignationById = function (id,AccessToken){
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

    DataOp.save = function (designation, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(designation.id == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, designation, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, designation, config);
        }
    };

    return DataOp;
}]);

