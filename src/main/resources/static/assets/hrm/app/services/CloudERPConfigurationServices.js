'use strict';

app.factory('CloudERPConfigurationServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/cloudERPConfigurations";
    var DataOp = {};

    DataOp.getAllConfiguration = function () {
        return $http.get(ApiUrl);
    };

    DataOp.getConfigurationId = function (id) {
        return $http.get(ApiUrl+'/{id}?id='+id);
    };

    DataOp.getConfigurationKey = function (pConfigurationKey) {
        return $http.get(ApiUrl+'/configurationKey?pConfigurationKey='+pConfigurationKey);
    };

     DataOp.deleteConfigurationById = function (id) {
            return $http.delete(ApiUrl+'/{id}?id='+id);
        };

    DataOp.saveConfiguration = function (data) {
        return $http.post(ApiUrl, data);
    };

    return DataOp;
}]);
