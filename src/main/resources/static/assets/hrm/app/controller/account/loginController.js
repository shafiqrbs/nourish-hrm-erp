var app = angular.module("cloudErpLoginApp", [
    'ui.router'
]);

app.controller("loginController",
    function($rootScope, $scope, $http, $location, $timeout) {
    /*$scope.email = '';
    $scope.password = '';*/
    $scope.user = {};

    function init(){
    }
    $scope.submitLoginForm = function (user){

        $http({
            method : "POST",
            url: "http://localhost:2222/oauth/token?grant_type=password"+"&username="+user.email+"&password="+user.password,
            /*headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
                'Authorization': "Basic " + btoa('my-trusted-client'+ ":" + 'secret')
            }*/
        }).then(function mySuccess(response) {
        	console.log("In My loginWithOutRedirect Success "+user.email);
            console.log(response);
            window.location.href = "/hr#!/employees/employee/general";
        }, function myError(response) {
        	console.log("In My loginWithOutRedirect Error ");
            console.log(response);
        });


        /*$http.post("/user/loginWithOutRedirect", user)
            .then(function mySuccess(response) {
            	console.log("In loginWithOutRedirect Success "+user.email);
                localStorage.setItem('logged_in', true);
                sessionStorage.setItem('accessToken', response.data.token);
                sessionStorage.setItem("tokenType", response.data.tokenType);
                console.log("==2. In loginWithOutRedirect Success");
                sessionStorage.setItem("refreshToken", response.data.refreshToken);
                sessionStorage.setItem("expiresIn", response.data.expiresIn);
                sessionStorage.setItem("tokenAccessOn", response.data.tokenCreateOn);
                console.log("==3. In loginWithOutRedirect Success "+user.password);
                window.location.href = "/hr#!/employees/employee/general";
//                window.location.href = "/hr#!/";
            }, function myError(response) {
            	console.log("In loginWithOutRedirect Error");
                console.log(response);
            });*/
    }

    init();
});