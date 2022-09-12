'use strict';

app.factory('SubDepartmentServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/subdepartments";
    var DataOp = {};

    DataOp.getAllSubDepartment = function () {
        return $http.get(ApiUrl);
    };

    DataOp.getSubDepartmentById = function (id) {
        return $http.get(ApiUrl+'/{id}?id='+id);
    };

    DataOp.getSubDepartmentListByDepartmentId = function (id) {
        try {
            return $http.get(ApiUrl+'/findAllByDepartmentId?departmentId='+id);
        }
        catch(err){
            return {};
        }
    };

     DataOp.deleteSubDepartmentById = function (id) {
            return $http.delete(ApiUrl+'/{id}?id='+id);
        };

    DataOp.saveSubDepartment = function (data) {
        return $http.post(ApiUrl, data);
    };

    return DataOp;
}]);
