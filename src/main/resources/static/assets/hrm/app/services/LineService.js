'use strict';

app.factory('LineService', ['$http', function ($http) {

        //create by Navid
    var ApiUrl = "/hrm/api/v1/line";
    var DataOp = {};

    DataOp.getAllLine = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/findAllLine?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
        });
        return promise;
    };

    DataOp.getLineById = function (id,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/findOneLine?access_token='+AccessToken+"&id="+id,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.save = function (line, token) {
         var config = {
                 headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(line.id == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, line, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, line, config);
        }
    };

    return DataOp;
}]);


