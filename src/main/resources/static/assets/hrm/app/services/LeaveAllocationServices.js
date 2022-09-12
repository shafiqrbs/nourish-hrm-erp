'use strict';

app.factory('LeaveAllocationServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/permittedleaves";
    var DataOp = {};

    DataOp.getAllAssignLeave = function () {
        return $http.get(ApiUrl);
    };

    DataOp.getAssignLeaveById = function (id) {
        return $http.get(ApiUrl+'/{id}?id='+id);
    };

     DataOp.deleteAssignLeaveById = function (id) {
        return $http.delete(ApiUrl+'/{id}?id='+id);
    };

    DataOp.saveAssignLeave = function (data) {
        return $http.post(ApiUrl, data);
    };

    return DataOp;
}]);
