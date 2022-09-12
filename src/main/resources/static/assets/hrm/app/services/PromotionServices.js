'use strict';

app.factory('PromotionServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/promotion";
    var DataOp = {};

    DataOp.findAllPromotionByEmployeeCode = function (AccessToken) {
        var promise = $http({
            method: 'GET',
        }).then(function successCallback(response) {
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getPromotionById = function (id,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/get?access_token='+AccessToken+"&id="+id,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.save = function (promotion, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(promotion.promotionId == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, promotion, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, promotion, config);
        }
    };

    return DataOp;
}]);

