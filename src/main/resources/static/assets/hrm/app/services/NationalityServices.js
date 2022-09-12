'use strict';

app.factory('NationalityServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/nationality";
    var DataOp = {};

    DataOp.getAllNationality = function (AccessToken) {
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/getAllNationality?access_token='+AccessToken,
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    return DataOp;
}]);

