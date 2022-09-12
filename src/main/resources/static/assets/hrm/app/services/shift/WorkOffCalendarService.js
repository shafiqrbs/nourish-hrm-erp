'use strict';

app.factory('WorkOffCalendarService', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/shift";
    var DataOp = {};

  /*  DataOp.getShiftPlanByShiftId = function (ShiftId,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/plan/get?access_token='+AccessToken+"&ShiftId="+ShiftId,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };
*/


    DataOp.save = function (holidays, token) {
        return $http.post(ApiUrl + "/workOffCalendar/saveToTemp?access_token=" + token, holidays);

    };
    DataOp.pushFromTemp = function (holidays, token) {
        return $http.get(ApiUrl + "/workOffCalendar/pushFromTemp?access_token=" + token);

    };

    DataOp.deleteTemp = function ( token) {
        return $http.get(ApiUrl + "/workOffCalendar/deleteFromTemp?access_token=" + token);
    };
    DataOp.getSavedList = function ( token) {
        return $http.get(ApiUrl + "/workOffCalendar/getTempList?access_token=" + token);

    };


    return DataOp;
}]);
