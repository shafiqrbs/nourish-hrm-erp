'use strict';

app.factory('EmployeeTypeServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/employeetype";
    var DataOp = {};

    DataOp.getAllEmployeeType = function () {
        return $http.get(ApiUrl);
    };

    DataOp.getEmployeeTypeById = function (id) {
        return $http.get(ApiUrl+'/{id}?id='+id);
    };

     DataOp.deleteEmployeeTypeById = function (id) {
            return $http.delete(ApiUrl+'/{id}?id='+id);
        };

    DataOp.saveEmployeeType = function (data) {
        return $http.post(ApiUrl, data);
    };

    return DataOp;
}]);
