'use strict';

app.factory('SubSectionServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/subSections";
    var DataOp = {};

    DataOp.getAllSubSection = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/getAllSubSection?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
        });
        return promise;
    };

    DataOp.getSubSectionById = function (id,AccessToken){
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

    DataOp.save = function (subSection, token) {
         var config = {
                 headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(subSection.id == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, subSection, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, subSection, config);
        }
    };

    return DataOp;
}]);


