'use strict';

app.factory('DepartmentServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/departments";
    var DataOp = {};

    DataOp.getAllDepartment = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/getAllDepartment?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getDepartmentById = function (id,AccessToken){
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

    DataOp.save = function (department, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(department.id == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, department, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, department, config);
        }
    };

    return DataOp;
}]);
