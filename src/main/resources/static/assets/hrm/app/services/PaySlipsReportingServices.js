'use strict';

app.factory('PaySlipsReportingServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/salaryPaySlips/reporting?monthlyPayslipName=October%202017";
        var DataOp = {};

        /*DataOp.getAllPaySlipsReporting= function (monthlyPayslipName) {
            return $http.get(ApiUrl+'/?monthlyPayslipName='+monthlyPayslipName);
        };*/

        DataOp.getAllPaySlipsReporting = function () {
                return $http.get(ApiUrl);
            };


        return DataOp;
 }]);
