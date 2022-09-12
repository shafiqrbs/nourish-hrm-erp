'use strict';

app.factory('SkillCategoryServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/skillCategories";
    var DataOp = {};

    DataOp.getAllSkillCategory = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/getAllSkillCategory?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getSkillCategoryId = function (id,AccessToken){
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

    DataOp.save = function (skillCategory, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(skillCategory.id == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, skillCategory, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, skillCategory, config);
        }
    };

    return DataOp;
}]);
