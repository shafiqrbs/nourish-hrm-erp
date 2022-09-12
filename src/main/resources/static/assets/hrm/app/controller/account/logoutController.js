app.controller("logoutController",
    function($rootScope, $scope, $http, $location, $timeout) {
    $scope.email = '';
    $scope.password = '';

    function init(){
    }


    $scope.logout = function(){
        sessionStorage.clear();
        sessionStorage.setItem('accessToken', '');
        localStorage.setItem('logged_in', false);

        $http.post('/user/logout')
            .then(function (response){
                console.log(response);
            }, function(error){
                console.log(response);
            });
        window.location.href = "/auth/login";
    }

    init();
});