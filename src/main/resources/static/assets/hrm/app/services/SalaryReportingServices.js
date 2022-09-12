'use strict';

app.factory('SalaryReportingServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/salary/reporting";
    var DataOp = {};

    DataOp.getAllSalaryReporting = function () {
        return $http.get(ApiUrl);
    };

    return DataOp;
}]);
