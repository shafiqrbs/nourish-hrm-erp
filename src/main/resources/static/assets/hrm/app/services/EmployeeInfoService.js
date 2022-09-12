'use strict';

app.factory('EmployeeInfoService', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/employees/info";

    var DataOp = {};

    DataOp.getEmployeeInfoByEmployeeCode = function (pEmployeeCode,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/get?access_token='+AccessToken+"&pEmployeeCode="+pEmployeeCode,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    return DataOp;
}]);
