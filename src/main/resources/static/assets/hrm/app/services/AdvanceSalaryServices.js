'use strict';

app.factory('AdvanceSalaryServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/advanceSalary";
    var DataOp = {};

    DataOp.getAllAdvanceSalary = function () {
        return $http.get(ApiUrl);
    };

    DataOp.getAdvanceSalaryById = function (id) {
        return $http.get(ApiUrl+'/{id}?id='+id);
    };

    DataOp.deleteAdvanceSalaryById = function (id) {
        return $http.delete(ApiUrl+'/{id}?id='+id);
    };

    DataOp.saveAdvanceSalary = function (data) {
        return $http.post(ApiUrl, data);
    };

    return DataOp;
}]);
