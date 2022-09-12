'use strict';

app.service('TokenService', function ($http) {
    this.getToken = function () {
        return $http.post('/user/token');
    };
    this.getSetToken = function () {
        return $http.post('/user/token').then(function (response){
            $rootScope.user = response.data;
            sessionStorage.setItem('accessToken', response.data.token);

            sessionStorage.setItem("tokenType", response.data.tokenType);
            sessionStorage.setItem("refreshToken", response.data.refreshToken);
            sessionStorage.setItem("expiresIn", response.data.expiresIn);
            sessionStorage.setItem("tokenAccessOn", response.data.tokenCreateOn);

            localStorage.setItem('logged_in', true);
        }, function(error){
            console.log(error);
        });
    };

    this.refreshToken = function () {
        return $http.post('/user/refreshToken');
    };

    this.getTokenString = function () {
        return $http.post('/user/token')
        .then(function (response){
            return response.data.token;
         }, function(error){
               return '';
         });
    };

    this.getAccessToken = function () {
        var accessToken = sessionStorage.getItem('accessToken');
        return accessToken;
    };

    this.getHeader = function () {
        var accesstoken = sessionStorage.getItem('accessToken');
        var logged_in = localStorage.getItem('logged_in').toString().trim() === 'false' ? false : true;
        var authHeaders = {};
        if (accesstoken && logged_in) {
            authHeaders.Authorization = 'Bearer ' + accesstoken;
        }
        return authHeaders;
    };

    this.getHeader2 = function () {
        var accesstoken = sessionStorage.getItem('accessToken');
        var logged_in = localStorage.getItem('logged_in').toString().trim() === 'false' ? false : true;
        var authHeaders = {};
        if (accesstoken && logged_in) {
            authHeaders.Authorization = 'Basic bXktdHJ1c3RlZC1jbGllbnQ6c2VjcmV0';
        }
        return authHeaders;
    };
});



