'use strict';

app.factory('CommonServices', ['$http', function ($http) {
    var DataOp = {};

    DataOp.getAllSalaryType = function () {
        return $http.get("/hrm/api/v1/salarytype");
    };

    DataOp.getAllMonthlyPayslips = function () {
        return $http.get("/hrm/api/v1/monthlypayslipsettings");
    };

    return DataOp;
}]);
