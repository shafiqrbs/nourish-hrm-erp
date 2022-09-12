'use strict';

app.factory('UploadService', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/units";
    var DataOp = {};


    DataOp.saveEmpProfileImage = function (pic, employeeCode) {
        if(!(employeeCode == undefined  && employeeCode == "" && employeeCode == null)) {
            var fd = new FormData();
            fd.append('pic', pic);
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


    DataOp.saveNomineeImage = function (image, employeeCode) {
        if(!(employeeCode == undefined  && employeeCode == "" && employeeCode == null)) {
            var fd = new FormData();
            fd.append('image', image);
            fd.append('employeeCode', employeeCode);

            var config = {
                headers: {'enctype': 'multipart/form-data', 'Content-Type': undefined},
                transformResponse: angular.identity
            };

            return $http.post("/fileupload/nomineeImage", fd, config)
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

    return DataOp;
}]);
