'use strict';

app.factory('EmployeeSalaryInfoServices', ['$http', function ($http) {

    var ApiUrl = "/hrm/api/v1/employeeSalaryInfo";

    var DataOp = {};

    DataOp.getEmployeeGrossSalary = function (AccessToken,salaryRuleCode,employeeCode){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/getEmployeeGrossSalary?access_token='+AccessToken+'&pSalaryRuleCode='+salaryRuleCode+'&pEmployeeCode='+employeeCode,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.SaveOrUpdate = function (data, token) {
        console.log(data);
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }
         return $http.post(ApiUrl + "/save?access_token=" + token, data, config);
    };

    return DataOp;
}]);

