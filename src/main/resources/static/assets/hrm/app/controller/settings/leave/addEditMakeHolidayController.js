app.controller("addEditMakeHolidayController",
    function($rootScope, $scope, $http, $location, $timeout, MakeHolidayServices) {

    //Initialization
    $scope.holiday = {};
    $scope.holiday.status=true;
    $scope.InvalidSubmit = false;
    var searchObject = $location.search();

    function editForm(id) {
        MakeHolidayServices.getHolidayById(id).then(function(resp){
            $scope.holiday = resp.data;
            //console.log(JSON.stringify(resp.data));
        })
    }

    if (searchObject.id != undefined){
        editForm(searchObject.id);
    }

    // Save Make holiday
    $scope.saveForm = function(isValid,holiday){
        if(isValid){
            MakeHolidayServices.saveHoliday(holiday).then(function(resp){
                window.location.href = "/#!/admin/settings/leave/holiday";
            });
        }
        else{
            $scope.InvalidSubmit = true;
        }
    }

    $scope.exitForm = function(){
        window.location.href = "/#!/admin/settings/leave/holiday";
    }
});