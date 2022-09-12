'use strict';

app.factory('ApplyLeaveServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/leavemanagements";
    var DataOp = {};

    DataOp.getAllApplyLeaveByMonth = function (id,startDate,endDate) {
        return $http.get(ApiUrl+'/list/?id='+id+'&startDate='+startDate+'&endDate='+endDate);
    };

    DataOp.getApplyLeaveById = function (id) {
        return $http.get(ApiUrl+'/{id}?id='+id);
    };

     DataOp.deleteApplyLeaveById = function (id) {
        return $http.delete(ApiUrl+'/{id}?id='+id);
    };

    DataOp.getAppliedLeaveCalendarList = function (employeeId,startDate,endDate) {
        return $http.get(ApiUrl+'/calendar/?id='+employeeId+'&startDate='+startDate+'&endDate='+endDate);
    };

    DataOp.saveApplyLeave = function (data) {
        return $http.post(ApiUrl, data);
    };

    DataOp.approveLeave = function (leaveId) {
        return $http.get(ApiUrl+'/approve/?id='+leaveId);
    };

    DataOp.rejectLeave = function (leaveId) {
        return $http.get(ApiUrl+'/reject/?id='+leaveId);
    };

    return DataOp;
}]);
