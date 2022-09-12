'use strict';

app.factory('CommissionServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/commission";
    var DataOp = {};

    DataOp.getAllCommission = function () {
        return $http.get(ApiUrl);
    };

    DataOp.getCommissionById = function (id) {
        return $http.get(ApiUrl+'/{id}?id='+id);
    };

     DataOp.deleteCommissionById = function (id) {
            return $http.delete(ApiUrl+'/{id}?id='+id);
        };

    DataOp.saveCommission = function (data) {
        return $http.post(ApiUrl, data);
    };

    return DataOp;
}]);
