app.controller("sideNavBarMenuController",
    function($rootScope, $scope, $http, $location, $timeout) {

   $scope.link = function(nameOption){
       var selectedMenu = angular.element(document.querySelector('#' + nameOption));
       var isActive = angular.element(".ks-active");
       isActive.removeClass('ks-active');
       selectedMenu.addClass('ks-active');
   }

});