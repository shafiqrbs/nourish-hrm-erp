'use strict';

app.factory('EmployeesReportingServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/employees/reporting";
    var DataOp = {};

    DataOp.getAllEmployeesReporting = function () {
        return $http.get(ApiUrl);
    };

    return DataOp;
}]);
