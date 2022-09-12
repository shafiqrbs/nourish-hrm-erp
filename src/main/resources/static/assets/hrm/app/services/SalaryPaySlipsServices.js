'use strict';

app.factory('SalaryPaySlipsServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/salaryPaySlips";
    var DataOp = {};

    DataOp.getAllSalaryPaySlips = function () {
        return $http.get(ApiUrl);
    };

    DataOp.getSalaryPaySlipsById = function (id) {
        return $http.get(ApiUrl+'/{id}?id='+id);
    };

    DataOp.deleteSalaryPaySlipsById = function (id) {
            return $http.delete(ApiUrl+'/{id}?id='+id);
    };

    DataOp.saveSalaryPaySlip = function (data) {
        return $http.post(ApiUrl, data);
    };

    return DataOp;
}]);
