app.controller("addEditSectionController",
    function($rootScope, $scope, $http, $location, $timeout, SectionServices, SubDepartmentServices, DepartmentServices) {

    //Initialization
    $scope.section = {};
    $scope.section.status=true;
    $scope.InvalidSubmit = false;
    $scope.departments = {};
    $scope.subDepartments = {};
    var searchObject = $location.search();

    function init(){
        DepartmentServices.getAllDepartment().then(function(resp){
            $scope.departments = resp.data.content;
        })
    }

    init();

    function getSubDepartmentById(id){
        SubDepartmentServices.getSubDepartmentListByDepartmentId(id).then(function(resp){
            $scope.subDepartments = resp.data;
            //console.log(JSON.stringify(resp.data));
        })
    }

    $scope.getSubDepartmentById = function(id){
        getSubDepartmentById(id);
    }


    function editForm(id) {
        SectionServices.getSectionById(id).then(function(resp){
            $scope.section = resp.data;
            getSubDepartmentById(resp.data.department.id);
        })
    }

    if (searchObject.id != undefined){
        editForm(searchObject.id);
    }

    // Save Department
    $scope.saveForm = function(isValid,section){
        if(isValid){
        SectionServices.saveSection(section).then(function(resp){
            //console.log(resp);
            window.location.href = "/#!/admin/settings/section";
        });
        }
        else{
            $scope.InvalidSubmit = true;
        }
    }

    $scope.exitForm = function(){
        window.location.href = "/#!/admin/settings/section";
    }
});