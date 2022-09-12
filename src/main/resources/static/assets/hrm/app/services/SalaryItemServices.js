'use strict';

app.factory('SalaryItemServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/salaryItem";
    var DataOp = {};

    DataOp.getAllSalaryItem = function () {
        return $http.get(ApiUrl+'/list');
    };

    DataOp.getAllActiveSalaryItem = function () {
        return $http.get(ApiUrl+'/active/list');
    };

    DataOp.getSalaryItemById = function (id) {
        return $http.get(ApiUrl+'/?id='+id);
    };

     DataOp.deleteSalaryItemById = function (id) {
        return $http.delete(ApiUrl+'/delete?id='+id);
    };

    DataOp.saveSalaryItem = function (data) {
        return $http.post(ApiUrl, data);
    };

    return DataOp;
}]);
