'use strict';

app.factory('EmployeeSalaryProcessServices', ['$http', function ($http) {

    var ApiUrl = "/hrm/api/v1/salaryProcess";

    var DataOp = {};

    DataOp.get = function (id,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/get?access_token='+AccessToken+"&id="+id,
        }).then(function successCallback(response){
            return response.data;GetHeadType
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.SalaryProcessAndSave = function (fromDate,toDate,data, token) {
        console.log(data);
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        return $http.post(ApiUrl + "/salaryProcessAndSave?access_token=" + token+"&fromDate="+fromDate+"&toDate="+toDate, data, config);
    };

    return DataOp;
}]);

