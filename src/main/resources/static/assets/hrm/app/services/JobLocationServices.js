'use strict';

app.factory('JobLocationServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/jobLocations";
    var DataOp = {};

    DataOp.getAllJobLocation = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/getAllJobLocation?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getJobLocationById = function (id,AccessToken){
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

    DataOp.save = function (jobLocation, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(jobLocation.id == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, jobLocation, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, jobLocation, config);
        }
    };

    return DataOp;
}]);
