'use strict';

app.factory('FileServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/file";
    var DataOp = {};

    DataOp.uploadAllInitialAttendanceFile = function (AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/uploadAllInitialAttendanceFile?access_token='+AccessToken,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.uploadAttendanceFile = function (id,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/uploadAttendanceFile?access_token='+AccessToken+"&fileRowId="+id,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.savedAllPendingFile = function (AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/savedAllPendingFile?access_token='+AccessToken,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.uploadFileConfirmation = function (id,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/confirmSingleAttendanceFile?access_token='+AccessToken+"&fileRowId="+id,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.deleteAttendanceFile = function (id,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/deleteAttendanceFile?access_token='+AccessToken+"&fileRowId="+id,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    return DataOp;
}]);
