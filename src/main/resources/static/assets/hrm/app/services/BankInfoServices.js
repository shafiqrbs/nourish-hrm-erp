'use strict';

app.factory('BankInfoServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/bankInfo";
    var DataOp = {};

    DataOp.getAllBankInfo = function (AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/getAllBankInfo?access_token='+AccessToken,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    return DataOp;
}]);

