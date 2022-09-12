'use strict';

app.factory('TaxRuleServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/taxRules";
    var DataOp = {};

    DataOp.getAllTaxRules = function () {
        return $http.get(ApiUrl+'/list');
    };

    DataOp.getTaxRuleById = function (id) {
        return $http.get(ApiUrl+'/?id='+id);
    };

     DataOp.deleteTaxRuleById = function (id) {
        return $http.delete(ApiUrl+'/delete?id='+id);
    };

    DataOp.saveTaxRule = function (data) {
        return $http.post(ApiUrl, data);
    };

    return DataOp;
}]);
