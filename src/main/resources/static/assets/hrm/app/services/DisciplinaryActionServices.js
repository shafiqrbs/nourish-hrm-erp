'use strict';

app.factory('DisciplinaryActionServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/disciplinaryAction";
    var DataOp = {};

    DataOp.getDisciplinaryActionById = function (id,AccessToken){
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

    DataOp.save = function (disciplinaryAction, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(disciplinaryAction.disciplinaryActionId == undefined){
            return $http.post(ApiUrl + "/save?access_token=" + token, disciplinaryAction, config);
        }
        else{
            return $http.put(ApiUrl + "/update?access_token=" + token, disciplinaryAction, config);
        }
    };

    return DataOp;
}]);

