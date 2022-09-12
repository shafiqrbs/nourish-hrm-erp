'use strict';

app.factory('SalaryServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/salary";
    var DataOp = {};

    DataOp.getAllSalary = function () {
        return $http.get(ApiUrl);
    };

    DataOp.getSalaryById = function (id) {
        return $http.get(ApiUrl+'/{id}?id='+id);
    };

    DataOp.getSalaryByEmployeeId = function (employeeId) {
        return $http.get(ApiUrl+'/findSalaryEmployeeId?employeeId='+employeeId);
    };

     DataOp.deleteSalaryById = function (id) {
        return $http.delete(ApiUrl+'/{id}?id='+id);
    };

    DataOp.saveSalary = function (data) {
        return $http.post(ApiUrl, data);
    };

    return DataOp;
}]);
