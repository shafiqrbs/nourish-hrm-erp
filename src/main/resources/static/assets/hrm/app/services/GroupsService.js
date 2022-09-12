'use strict';

app.factory('GroupsService', ['$http', function ($http,TokenService) {

        //create by Navid
    var ApiUrl = "/hrm/api/v1/groups";

    var DataOp = {};

    DataOp.getAllGroups = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/findAllGroups?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
        });
        return promise;
    };

    DataOp.getGroupById = function (id,AccessToken){
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

    DataOp.save = function (groups, token) {
         var config = {
                 headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(groups.id == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, groups, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, groups, config);
        }
    };

    return DataOp;
}]);


