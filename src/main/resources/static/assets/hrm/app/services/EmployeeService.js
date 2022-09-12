'use strict';

app.factory('EmployeeService', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/employees";

    var DataOp = {};

    DataOp.getAllUsers = function () {
        return $http.get(ApiUrl);
    };

    DataOp.getToken = function () {
        return $http.post('/user/token');
    };

    DataOp.getEmployeeGeneralInfoById = function (pEmployeeCode,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/generalInfo/get?access_token='+AccessToken+"&pEmployeeCode="+pEmployeeCode,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getEmployeeOfficeInfoById = function (pEmployeeCode,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/officialInfo/get?access_token='+AccessToken+"&pEmployeeCode="+pEmployeeCode,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getEmployeeRuleInfoById = function (pEmployeeCode,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/ruleInfo/get?access_token='+AccessToken+"&pEmployeeCode="+pEmployeeCode,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getEmployeeEmergencyInfoById = function (pEmployeeCode,AccessToken){
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/emergencyInfo/get?access_token='+AccessToken+"&pEmployeeCode="+pEmployeeCode,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };
  /*  DataOp.getOneEmployeeEmergencyInfoById = function (Id,AccessToken){
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/emergencyInfo/get?access_token='+AccessToken+"&Id="+Id,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };*/

    DataOp.getEmployeeEducationalInfoById = function (pEmployeeCode,AccessToken){
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/educationInfo/getAll?access_token='+AccessToken+"&pEmployeeCode="+pEmployeeCode,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getOneEmployeeEducationalInfoById = function (Id,AccessToken){
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/educationInfo/get?access_token='+AccessToken+"&Id="+Id,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getEmployeePQualificationInfoById = function (pEmployeeCode,AccessToken){
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/professionalQualificationInfo/getAll?access_token='+AccessToken+"&pEmployeeCode="+pEmployeeCode,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getOneEmployeePQualificationInfoById = function (Id,AccessToken){
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/professionalQualificationInfo/get?access_token='+AccessToken+"&Id="+Id,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getEmployeeHistoryById = function (pEmployeeCode,AccessToken){
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/employementHistory/getAll?access_token='+AccessToken+"&pEmployeeCode="+pEmployeeCode,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getOneEmployeeHistoryById = function (Id,AccessToken){
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/employementHistory/get?access_token='+AccessToken+"&Id="+Id,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getLanguageById = function (pEmployeeCode,AccessToken){
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/language/getAll?access_token='+AccessToken+"&pEmployeeCode="+pEmployeeCode,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };
    DataOp.getOneLanguageById = function (Id,AccessToken){
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/language/get?access_token='+AccessToken+"&Id="+Id,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };


    DataOp.getNomineeInfoByEmpCode = function (pEmployeeCode,AccessToken){
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/nominee/get?access_token='+AccessToken+"&pEmployeeCode="+pEmployeeCode,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };


    DataOp.getFamilyInfoByEmpCode = function (pEmployeeCode,AccessToken){
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/family/get?access_token='+AccessToken+"&pEmployeeCode="+pEmployeeCode,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };


    DataOp.saveEmployeeImage = function (file, employeeCode) {
        if(!(employeeCode == undefined  && employeeCode == "" && employeeCode == null)) {
            var fd = new FormData();
            fd.append('file', file);
            fd.append('employeeCode', employeeCode);

            var config = {
                headers: {'enctype': 'multipart/form-data', 'Content-Type': undefined},
                transformResponse: angular.identity
            };

            return $http.post("/fileupload/empimage", fd, config)
                .then(
                    function(success){
                        console.log(success);
                    },
                    function (error) {
                        console.log(error);
                    }
                );
        }
    };


    DataOp.saveProfileAndSignImg = function (profileImg, signImg, employeeCode) {
        if(!(employeeCode == undefined  && employeeCode == "" && employeeCode == null)) {
            var fd = new FormData();
            fd.append('profilePic', profileImg);
            fd.append('signPic', signImg);
            fd.append('employeeCode', employeeCode);

            var config = {
                headers: {'enctype': 'multipart/form-data', 'Content-Type': undefined},
                transformResponse: angular.identity
            };

            return $http.post("/fileupload/images", fd, config)
                .then(
                    function(success){
                   //     console.log(success);
                    },
                    function (error) {
                        console.log(error);
                    }
                );
        }
    };


    DataOp.saveGeneralInfo = function (employeeGeneralInfo, token) {
        return $http.post(ApiUrl + "/generalInfo/save?access_token=" + token, employeeGeneralInfo);
    };

    DataOp.saveOfficialEmployee = function (employeeOfficialInfo, token) {
        return $http.post(ApiUrl + "/officialInfo/save?access_token=" + token, employeeOfficialInfo);
    };

    DataOp.saveRuleEmployee = function (employeeRuleInfo, token) {
       
        return $http.post(ApiUrl + "/ruleInfo/save?access_token=" + token, employeeRuleInfo);
    };

    DataOp.saveEmergencyEmployee = function (empEmergencyInfo, token) {
        console.log(empEmergencyInfo);
        return $http.post(ApiUrl + "/emergencyInfo/save?access_token=" + token, empEmergencyInfo);
    };

    DataOp.saveEducationEmployee = function (empEducationInfo, token) {
        console.log(empEducationInfo);
        return $http.post(ApiUrl + "/educationInfo/save?access_token=" + token, empEducationInfo);
    };

    DataOp.saveQualificationEmployee = function (employeeQualificationInfo, token) {
        console.log(employeeQualificationInfo);
        return $http.post(ApiUrl + "/professionalQualificationInfo/save?access_token=" + token, employeeQualificationInfo);
    };

    DataOp.saveLanguageEmployee = function (languageInfo, token) {
        console.log(languageInfo);
        return $http.post(ApiUrl + "/language/save?access_token=" + token, languageInfo);
    };

    DataOp.saveNomineeEmployee = function (employeeNomineeeInfo, token) {
        return $http.post(ApiUrl + "/nominee/save?access_token=" + token, employeeNomineeeInfo);
    };

    DataOp.saveFamilyEmployee = function (empFamilyInfo, token) {
        return $http.post(ApiUrl + "/family/save?access_token=" + token, empFamilyInfo);
    };

    DataOp.saveHistoryEmployee = function (empHistoryInfo, token){
        return $http.post(ApiUrl + "/employementHistory/save?access_token=" + token, empHistoryInfo);
    };

     DataOp.deleteEmployeeById = function (EmployeeCode, token) {
        return $http.delete(ApiUrl+'/{EmployeeCode}?EmployeeCode='+EmployeeCode);
    };

    return DataOp;
}]);
