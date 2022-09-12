'use strict';

app.factory('RecruitmentServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/recruitment";

    var DataOp = {};

    DataOp.getCandidateAllInfoByTempCode = function (pEmployeeTempCode,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/generalInfo/get?access_token='+AccessToken+"&pEmployeeTempCode="+pEmployeeTempCode,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getCandidateEmergencyInfoById = function (pEmployeeTempCode,AccessToken){
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/emergencyInfo/get?access_token='+AccessToken+"&pEmployeeTempCode="+pEmployeeTempCode,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getCandidateInterviewCardByTempCodeById = function (pEmployeeTempCode,AccessToken){
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/interviewCard/get?access_token='+AccessToken+"&pEmployeeTempCode="+pEmployeeTempCode,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getNomineeInfoByTempEmpCode = function (pEmployeeTempCode, AccessToken){
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/nominee/get?access_token='+AccessToken+"&pEmployeeTempCode="+pEmployeeTempCode,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getFamilyInfoByTempEmpCode = function (pEmployeeTempCode,AccessToken){
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/family/get?access_token='+AccessToken+"&pEmployeeTempCode="+pEmployeeTempCode,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getAllIEDepartmentSkillMatrixData = function (pEmployeeTempCode,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/skillMatrix/getAll?access_token='+AccessToken+"&pEmployeeTempCode="+pEmployeeTempCode,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.getAllSkillMatrixSection = function(pEmployeeTempCode,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/skillMatrix/section/getAll?access_token='+AccessToken+"&pEmployeeTempCode="+pEmployeeTempCode,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.deleteCandidateSectionDetails = function(pCandidateProcessId,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/skillMatrix/section/details/delete?access_token='+AccessToken+"&pCandidateProcessId="+pCandidateProcessId,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.deleteCandidateSection = function(pCandidateSectionId,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/skillMatrix/section/delete?access_token='+AccessToken+"&pCandidateSectionId="+pCandidateSectionId,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    DataOp.updateSectionProcess = function(pSectionId,pSectionProcessId,pSectionProcessName,AccessToken){
         var promise = $http({
            method: 'GET',
            url: ApiUrl+'/skillMatrix/process/update?access_token='+AccessToken+"&pSectionId="+pSectionId+"&pSectionProcessId="+pSectionProcessId+"&pSectionProcessName="+pSectionProcessName,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };

    /*Appointment Letter services*/
    DataOp.getCandidateAppointLetterInfo = function (pEmployeeTempCode, AccessToken){
        var promise = $http({
            method: 'GET',
            url: ApiUrl+'/candidateDetailsInfo/get?access_token='+AccessToken+"&pEmployeeTempCode="+pEmployeeTempCode,
        }).then(function successCallback(response){
            return response.data;
        }, function errorCallback(response) {
            return response;
        });
        return promise;
    };
    /*End*/

    DataOp.saveCandidateApplicationForm = function(candidateInfo,token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        return $http.post(ApiUrl + "/generalInfo/save?access_token=" + token, candidateInfo, config);
    };


    DataOp.saveEmergency = function(emergencyInfo,token) {
        var config = {
            headers : {
                'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                'Content-Type': "application/json"
            }
        }
        return $http.post(ApiUrl + "/emergencyInfo/save?access_token=" + token, emergencyInfo, config);
    };

    DataOp.saveEducation = function (educationInfo, token) {
        var config = {
            headers : {
                'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                'Content-Type': "application/json"
            }
        }
        return $http.post(ApiUrl + "/educationInfo/save?access_token=" + token, educationInfo, config);
    };
    DataOp.saveQualification = function (qualificationInfo, token) {
        var config = {
            headers : {
                'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                'Content-Type': "application/json"
            }
        }
        return $http.post(ApiUrl + "/professionalQualificationInfo/save?access_token=" + token, qualificationInfo, config);
    };

    DataOp.saveJobHistory = function (historyInfo, token){
        var config = {
            headers : {
                'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                'Content-Type': "application/json"
            }
        }
        return $http.post(ApiUrl + "/employementHistory/save?access_token=" + token, historyInfo, config);
    };
    DataOp.saveLanguage = function (languageInfo, token) {
        var config = {
            headers : {
                'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                'Content-Type': "application/json"
            }
        }
        return $http.post(ApiUrl + "/language/save?access_token=" + token, languageInfo, config);
    };
    DataOp.saveNominee = function (nomineeeInfo, token) {
        var config = {
            headers : {
                'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                'Content-Type': "application/json"
            }
        }
        return $http.post(ApiUrl + "/nominee/save?access_token=" + token, nomineeeInfo, config);
    };
    DataOp.saveFamily = function (familyInfo, token) {
        var config = {
            headers : {
                'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                'Content-Type': "application/json"
            }
        }
        return $http.post(ApiUrl + "/family/save?access_token=" + token, familyInfo, config);
    };



    DataOp.saveInterViewCardForm = function (interviewCard, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }
        return $http.put(ApiUrl + "/interviewCard/update?access_token=" + token, interviewCard, config);
    };

    DataOp.saveSkillMatrixSection = function (skillMatrixSectionDTO, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }
        return $http.post(ApiUrl + "/skillMatrix/section/save?access_token=" + token, skillMatrixSectionDTO, config);
    };

    DataOp.saveSkillMatrixSectionDetails = function (skillMatrixSectionDetailsDTO, token) {
        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }
        return $http.post(ApiUrl + "/skillMatrix/section/details/save?access_token=" + token, skillMatrixSectionDetailsDTO, config);
    };

    DataOp.saveSkillMatrix = function (pEmployeeTempCode,SkillMatrixDTOObj, token) {
        var SkillMatrixDTO = [];
        angular.forEach(SkillMatrixDTOObj,function(v){
            var skillMatrixDetailsDTOS = [];
            angular.forEach(v.skillMatrixDetailsDTOS,function(v2){
                skillMatrixDetailsDTOS.push({
                    skillMatrixResultId:v2.skillMatrixResultId,
                    skillMatrixDetailId:v2.skillMatrixDetailId,
                    candidateSectionDetailId:v2.candidateSectionDetailId,
                    processName:v2.processName,
                    examTarget:v2.examTarget,
                    howMuchCanGet:v2.howMuchCanGet,
                    pscPerSec:v2.pscPerSec,
                    efficiencyPct:v2.efficiencyPct
                });
            });

            SkillMatrixDTO.push({
                sectionId:v.sectionId,
                candidateSectionId:v.candidateSectionId,
                sectionName:v.sectionName,
                skillMatrixDetailsDTOS:skillMatrixDetailsDTOS
            });
        });

        var config = {
             headers : {
                 'Authorization': 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0',
                 'Content-Type': "application/json"
             }
         }

        return $http.post(ApiUrl + "/skillMatrix/save?access_token=" + token+"&pEmployeeTempCode="+pEmployeeTempCode, SkillMatrixDTO, config);
    };

    return DataOp;
}]);
