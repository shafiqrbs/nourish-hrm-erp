'use strict';

app.factory('DeductionServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/deductions";
    var DataOp = {};

    DataOp.getAllDeduction = function () {
        return $http.get(ApiUrl);
    };

    DataOp.getDeductionById = function (id) {
        return $http.get(ApiUrl+'/{id}?id='+id);
    };

     DataOp.deleteDeductionById = function (id) {
            return $http.delete(ApiUrl+'/{id}?id='+id);
        };

    DataOp.saveDeduction = function (data) {
        return $http.post(ApiUrl, data);
    };

    return DataOp;
}]);
