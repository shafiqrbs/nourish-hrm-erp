'use strict';

app.factory('ProvidentFundServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/providentFund";
    var DataOp = {};

    DataOp.getAllProvidentFund = function () {
        return $http.get(ApiUrl);
    };

    DataOp.getProvidentFundById = function (id) {
        return $http.get(ApiUrl+'/{id}?id='+id);
    };

     DataOp.deleteProvidentFundById = function (id) {
            return $http.delete(ApiUrl+'/{id}?id='+id);
        };

    DataOp.saveProvidentFund = function (data) {
        return $http.post(ApiUrl, data);
    };

    return DataOp;
}]);
