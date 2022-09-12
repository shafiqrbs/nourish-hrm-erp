'use strict';

app.factory('LeaveEntitlementServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/leavetypes";
    var DataOp = {};

    DataOp.getAllLeaveEntitlement = function () {
        return $http.get(ApiUrl);
    };

    DataOp.getLeaveEntitlementById = function (id) {
        return $http.get(ApiUrl+'/{id}?id='+id);
    };

     DataOp.deleteLeaveEntitlementById = function (id) {
            return $http.delete(ApiUrl+'/{id}?id='+id);
        };

    DataOp.saveLeaveEntitlement = function (data) {
        return $http.post(ApiUrl, data);
    };

    return DataOp;
}]);
