'use strict';

app.factory('ShiftPlanServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/shift";
    var DataOp = {};

    DataOp.getShiftPlanByShiftId = function (ShiftId,AccessToken){
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

    DataOp.getAllShift = function (AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/plan/getAllShift?access_token='+AccessToken,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getAllShiftType = function (AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/plan/getAllShiftType?access_token='+AccessToken,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.save = function (shiftPlanInfo, token) {
        return $http.post(ApiUrl + "/plan/save?access_token=" + token, shiftPlanInfo);

    };
    DataOp.manualShiftRosterSave = function (manualShift, token) {
//        console.log(manualShift);
        return $http.post(ApiUrl + "/shift/manualShiftRosterSave?access_token=" + token, manualShift);

    };


    return DataOp;
}]);
