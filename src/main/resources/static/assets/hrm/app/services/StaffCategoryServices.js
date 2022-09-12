'use strict';

app.factory('StaffCategoryServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/staffCategories";
    var DataOp = {};

    DataOp.getAllStaffCategory = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/getAllStaffCategory?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getStaffCategoryById = function (id,AccessToken){
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

    DataOp.save = function (staffCategory, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(staffCategory.id == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, staffCategory, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, staffCategory, config);
        }
    };

    return DataOp;
}]);
