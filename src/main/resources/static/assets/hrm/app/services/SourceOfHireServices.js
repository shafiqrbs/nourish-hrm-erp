'use strict';

app.factory('SourceOfHireServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/sourceofhire";
    var DataOp = {};

    DataOp.getAllSourceOfHire = function () {
        return $http.get(ApiUrl);
    };

    DataOp.getSourceOfHireById = function (id) {
        return $http.get(ApiUrl+'/{id}?id='+id);
    };

     DataOp.deleteSourceOfHireById = function (id) {
        return $http.delete(ApiUrl+'/{id}?id='+id);
    };

    DataOp.saveSourceOfHireType = function (data) {
        return $http.post(ApiUrl, data);
    };

    return DataOp;
}]);
