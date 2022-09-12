'use strict';

app.factory('CompanySettingsService', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/companySettings";
    var DataOp = {};

    DataOp.getAllCompanySettings = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/findAllCompanySettings?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getCompanySettingById = function (id,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/findOneCompanySetting?access_token='+AccessToken+"&id="+id,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.save = function (companySettings, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(companySettings.id == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, companySettings, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, companySettings, config);
        }
    };

    DataOp.statusUpdateById = function (isActive,id,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/statusUpdateById?access_token='+AccessToken+"&isActive="+isActive+"&id="+id,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.deleteRecordById = function (id,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/isDeleteStatusUpdateById?access_token='+AccessToken+"&id="+id,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    return DataOp;
}]);


