app.controller("addEditLineController",
    function($rootScope, $scope, $http, $location, $timeout, LineServices, FloorServices, SectionServices, SubDepartmentServices, DepartmentServices) {

    //Initialization
    $scope.line = {};
    $scope.line.status=true;
    $scope.InvalidSubmit = false;
    $scope.departments = {};
    $scope.subDepartments = {};
    $scope.sections = {};
    $scope.floors = {};
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

    function getFloorListById(id){
        FloorServices.getFloorListBySectionId(id).then(function(resp){
            $scope.floors = resp.data;
            //console.log(JSON.stringify(resp.data));
        })
    }

    $scope.getSubDepartmentListById = function(id){
        getSubDepartmentListById(id);
    }

    $scope.getSectionListById = function(id){
         getSectionListById(id);
     }

    $scope.getFloorListById = function(id){
         getFloorListById(id);
     }


    function editForm(id) {
        LineServices.getLineById(id).then(function(resp){
            $scope.line = resp.data;

             getSubDepartmentListById(resp.data.department.id);
             getSectionListById(resp.data.subDepartment.id);
             getFloorListById(resp.data.section.id);
            //console.log(JSON.stringify(resp.data));
        })
    }

    if (searchObject.id != undefined){
        editForm(searchObject.id);
    }


    // Save Department
    $scope.saveForm = function(isValid,line){
        if(isValid){
        LineServices.saveLine(line).then(function(resp){
            //console.log(resp);
            //$location.path("/organization/department");
            window.location.href = "/#!/admin/settings/line";
        });
        }
        else{
         $scope.InvalidSubmit = true;
        }
    }

    $scope.exitForm = function(){
        window.location.href = "/#!/admin/settings/line";
    }
});