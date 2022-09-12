'use strict';

app.factory('LoanServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/loan";
    var DataOp = {};

    DataOp.getAllLoan = function () {
        return $http.get(ApiUrl);
    };

    DataOp.getLoanById = function (id) {
        return $http.get(ApiUrl+'/{id}?id='+id);
    };

     DataOp.deleteLoanById = function (id) {
            return $http.delete(ApiUrl+'/{id}?id='+id);
        };

    DataOp.saveLoan = function (data) {
        return $http.post(ApiUrl, data);
    };

    return DataOp;
}]);
