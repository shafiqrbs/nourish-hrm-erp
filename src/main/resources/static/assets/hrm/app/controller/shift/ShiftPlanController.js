app.controller("ShiftPlanController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, Flash, BaseApiUrlService, TokenService, ShiftPlanServices) {

        //Initialization
        $scope.shiftPlan = {};
        $scope.shiftDDL = {};
        $scope.shiftTypeDDL = {};
        $scope.IsAddNewShiftPlan = true;
        $scope.IsAddNewShiftInput = false;
        $scope.IsAddNewShiftType = true;
        $scope.IsAddNewShiftTypeInput = false;

        function init() {
            getAllShiftForDDL();
            getAllShiftTypeForDDL();
        }

        init();


        $scope.cancel = function(){
            $scope.shiftPlan = {};
        }

        function getAllShiftForDDL(){
            ShiftPlanServices.getAllShift(TokenService.getAccessToken()).then(function (resp) {
                $scope.shiftDDL = resp;
                //alert(JSON.stringify(resp));
            });
        }

        function getAllShiftTypeForDDL(){
            ShiftPlanServices.getAllShiftType(TokenService.getAccessToken()).then(function (resp) {
                $scope.shiftTypeDDL = resp;
                //alert(JSON.stringify(resp));
            });
        }

        $scope.newShiftPlanToggleBtn = function(pButton){
            if(pButton == "New"){
                $scope.IsAddNewShiftPlan = true;
                $scope.IsAddNewShiftInput = false;
            }
            else{
                $scope.IsAddNewShiftInput = true;
                $scope.IsAddNewShiftPlan = false;
            }
        }

        $scope.newShiftTypeToggleBtn = function(pButton){
            if(pButton == "New"){
                $scope.IsAddNewShiftType = true;
                $scope.IsAddNewShiftTypeInput = false;
            }
            else{
                $scope.IsAddNewShiftTypeInput = true;
                $scope.IsAddNewShiftType = false;
            }
        }

        $scope.getShiftPlanInfo = function(pShiftId){
         //   alert(pShiftId);
            if(pShiftId !== undefined && pShiftId !==null && pShiftId !=="") {
                ShiftPlanServices.getShiftPlanByShiftId(pShiftId, TokenService.getAccessToken()).then(function (resp) {
                    $scope.shiftPlan = resp;

                    var todayDate = ($filter('date')(new Date(), "yyyy-MM-dd"));
                    var inTime = todayDate +" "+resp.inTime;
                    var inTimeStartMargin = todayDate +" "+resp.inTimeStartMargin;
                    var absentEndMargin = todayDate +" "+resp.absentEndMargin;
                    var outTime = todayDate +" "+resp.outTime;
                    var outTimeEndMargin = todayDate +" "+resp.outTimeEndMargin;
                    var breakInTime = todayDate +" "+resp.breakInTime;
                    var breakInEndMargin = todayDate +" "+resp.breakInEndMargin;
                    var breakOutTime = todayDate +" "+resp.breakOutTime;

                    $scope.shiftPlan.inTime = new Date(inTime);
                    $scope.shiftPlan.inTimeStartMargin = new Date(inTimeStartMargin);
                    $scope.shiftPlan.absentEndMargin = new Date(absentEndMargin);
                    $scope.shiftPlan.outTime = new Date(outTime);
                    $scope.shiftPlan.outTimeEndMargin = new Date(outTimeEndMargin);
                    $scope.shiftPlan.breakInTime = new Date(breakInTime);
                    $scope.shiftPlan.breakInEndMargin = new Date(breakInEndMargin);
                    $scope.shiftPlan.breakOutTime = new Date(breakOutTime);
                });
            }
            else {
                $scope.shiftPlan = {};
            }
        }

        $scope.saveForm = function(isValid,plan){
            if(isValid){
                //Get only time from Date time
                plan.inTime = $filter('date')(plan.inTime, "hh:mm:ss");
                plan.inTimeStartMargin = $filter('date')(plan.inTime, "hh:mm:ss");
                plan.absentEndMargin = $filter('date')(plan.inTime, "hh:mm:ss");
                plan.outTime = $filter('date')(plan.inTime, "hh:mm:ss");
                plan.outTimeEndMargin = $filter('date')(plan.inTime, "hh:mm:ss");
                plan.breakInTime = $filter('date')(plan.inTime, "hh:mm:ss");
                plan.breakInEndMargin = $filter('date')(plan.inTime, "hh:mm:ss");
                plan.breakOutTime = $filter('date')(plan.inTime, "hh:mm:ss");

                ShiftPlanServices.save(plan,TokenService.getAccessToken()).then(function(resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                    }else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                })
            }
        }

    });