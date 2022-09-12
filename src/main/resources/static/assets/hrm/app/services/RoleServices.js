'use strict';

app.factory('RoleServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/roles";
    var DataOp = {};

    DataOp.getAllRoles = function () {
        return $http.get(ApiUrl);
    };

    DataOp.getRoleById = function (id) {
        return $http.get(ApiUrl+'/{id}?id='+id);
    };

     DataOp.deleteRoleById = function (id) {
            return $http.delete(ApiUrl+'/{id}?id='+id);
        };

    DataOp.saveRole = function (data) {
        return $http.post(ApiUrl, data);
    };

    return DataOp;
}]);
