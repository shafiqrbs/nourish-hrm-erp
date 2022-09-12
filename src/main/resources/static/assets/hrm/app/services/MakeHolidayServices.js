'use strict';

app.factory('MakeHolidayServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/holiday";
    var DataOp = {};

    DataOp.getAllHolidays = function () {
        return $http.get(ApiUrl+'/list');
    };

    DataOp.getHolidayById = function (id) {
        return $http.get(ApiUrl+'/list/?id='+id);
    };

    DataOp.deleteHolidayById = function (id) {
        return $http.delete(ApiUrl+'/delete/?id='+id);
    };

    DataOp.saveHoliday = function (data) {
        return $http.post(ApiUrl+'/save', data);
    };

    return DataOp;
}]);
