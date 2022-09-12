'use strict';

app.factory('SkillServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/skills";
    var DataOp = {};

    DataOp.getAllSkillsByEmployeeCode = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/findAllSkillsByEmployeeCode?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getSkillById = function (id,AccessToken){
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

    DataOp.save = function (skills, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(skills.skillId == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, skills, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, skills, config);
        }
    };

    return DataOp;
}]);
