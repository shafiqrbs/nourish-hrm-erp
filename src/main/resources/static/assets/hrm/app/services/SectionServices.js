'use strict';

app.factory('SectionServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/sections";
    var DataOp = {};

    DataOp.getAllSection = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/getAllSection?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
        });
        return promise;
    };

    DataOp.getSectionById = function (id,AccessToken){
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

    DataOp.save = function (section, token) {
         var config = {
                 headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(section.id == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, section, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, section, config);
        }
    };

    return DataOp;
}]);
