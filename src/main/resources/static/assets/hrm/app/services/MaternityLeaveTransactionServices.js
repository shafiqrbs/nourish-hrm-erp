'use strict';

app.factory('MaternityLeaveTransactionServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/leave";
    var DataOp = {};

    DataOp.getLeaveTransactionInfoById = function (id,AccessToken){
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


    DataOp.save = function (maternityLeaveTransaction, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        if(maternityLeaveTransaction.id == undefined){
            return $http.post(ApiUrl + "/MaternityLeaveTransInfo/save?access_token=" + token, maternityLeaveTransaction, config);
        }
        else{
            return $http.put(ApiUrl + "/MaternityLeaveTransInfo/update?access_token=" + token, maternityLeaveTransaction, config);
        }
    };

    return DataOp;
}]);
