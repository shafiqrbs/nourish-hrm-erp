'use strict';

app.factory('SalaryHeadServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/salaryHead";
    var salaryHeadObj = {};

    salaryHeadObj.getAll = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/getAllSalaryHead?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    salaryHeadObj.get = function (id,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/get?access_token='+AccessToken+"&id="+id,
        }).then(function successCallback(response){
            return response.data;GetHeadType
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    salaryHeadObj.GetHeadType = function(AccessToken){
     var promise = $http({
                method: 'GET',
                url: ApiUrl+'/getAllHeadType?access_token='+AccessToken,
            }).then(function successCallback(response){
                return response.data;
            }, function errorCallback(response) {
                return response;
            });
            return promise;
    };

    salaryHeadObj.SaveOrUpdate = function (data, token) {
        console.log(data);
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(data.id == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, data, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, data, config);
        }
    };

    return salaryHeadObj;
}]);

