app.controller("addEditFloorController",
    function($rootScope, $scope, $http, $location, $timeout, FloorServices, SectionServices, SubDepartmentServices, DepartmentServices) {

    //Initialization
    $scope.floor = {};
    $scope.floor.status=true;
    $scope.InvalidSubmit = false;
    $scope.departments = {};
    $scope.subDepartments = {};
    $scope.sections = {};
    var searchObject = $location.search();

    function init(){
        DepartmentServices.getAllDepartment().then(function(resp){
            $scope.departments = resp.data.content;
        })
    }

    init();

    function getSubDepartmentListById(id){
        SubDepartmentServices.getSubDepartmentListByDepartmentId(id).then(function(resp){
            $scope.subDepartments = resp.data;
            //console.log(JSON.stringify(resp.data));
        })
    }

    function getSectionListById(id){
        SectionServices.getSectionListBySubDepartmentId(id).then(function(resp){
            $scope.sections = resp.data;
            //console.log(JSON.stringify(resp.data));
        })
    }

    $scope.getSubDepartmentListById = function(id){
        getSubDepartmentListById(id);
    }

    $scope.getSectionListById = function(id){
         getSectionListById(id);
     }


    function editForm(id) {
        FloorServices.getFloorById(id).then(function(resp){
            $scope.floor = resp.data;

            getSubDepartmentListById(resp.data.department.id);
            getSectionListById(resp.data.subDepartment.id);
            //console.log(JSON.stringify(resp.data));
        })
    }

    if (searchObject.id != undefined){
        editForm(searchObject.id);
    }


    // Save Department
    $scope.saveForm = function(isValid,floor){
        if(isValid){
        FloorServices.saveFloor(floor).then(function(resp){
            //console.log(resp);
            //$location.path("/organization/department");
            window.location.href = "/#!/admin/settings/floor";
        });
        }
        else{
            $scope.InvalidSubmit = true;
        }
    }

    $scope.exitForm = function(){
        window.location.href = "/#!/admin/settings/floor";
    }
});