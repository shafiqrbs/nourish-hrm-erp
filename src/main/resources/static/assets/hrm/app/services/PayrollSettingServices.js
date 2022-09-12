'use strict';

app.factory('PayrollSettingServices', ['$http', function ($http) {
    var DataOp = {};

    DataOp.getPayrollStructure = function (id) {
        return $http.get('/hrm/api/v1/payrollSettings/structureInfo');
    };

    DataOp.savePayrollStructure = function (data) {
        return $http.post('/hrm/api/v1/payrollSettings/structureInfo/save', data);
    };

    DataOp.getPayslipOption = function (id) {
        return $http.get('/hrm/api/v1/payslipOptions/optionInfo');
    };

    DataOp.savePayslipOption = function (data) {
        return $http.post('/hrm/api/v1/payslipOptions/optionInfo/save', data);
    };

    return DataOp;
}]);
