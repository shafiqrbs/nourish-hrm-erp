'use strict';

app.factory('GradeServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/grade";
    var DataOp = {};

    DataOp.getAllGrade = function () {
        return $http.get(ApiUrl);
    };

    DataOp.getGradeById = function (id) {
        return $http.get(ApiUrl+'/{id}?id='+id);
    };

     DataOp.deleteGradeById = function (id) {
            return $http.delete(ApiUrl+'/{id}?id='+id);
        };

    DataOp.saveGrade = function (data) {
        return $http.post(ApiUrl, data);
    };

    return DataOp;
}]);
