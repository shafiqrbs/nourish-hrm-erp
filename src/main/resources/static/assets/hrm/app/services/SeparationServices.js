'use strict';

app.factory('SeparationServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/separation";
    var DataOp = {};

    DataOp.getSeparationById = function (id,AccessToken){
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

    DataOp.save = function (separation, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(separation.separationId == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, separation, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, separation, config);
        }
    };

    return DataOp;
}]);

