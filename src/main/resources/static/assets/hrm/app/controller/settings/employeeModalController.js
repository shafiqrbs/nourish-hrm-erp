app.controller("employeeModalController",
    function($rootScope, $scope, $uibModalInstance, $http, $location, $timeout, parameters, DepartmentServices, SubDepartmentServices, SectionServices, FloorServices, LineServices) {
    //alert(parameters.departmentId);
    $scope.exitModal = function(){
        $uibModalInstance.close('save');
     }

    $scope.department = {};

    // Save Department
    $scope.saveDepartment = function(department){
        //TODO: validation
        DepartmentServices.saveDepartment(department).then(function(resp){
            $uibModalInstance.close('save');
            $rootScope.$broadcast("modalToDepartmentDataLoad",{deptId:resp.data.id});
        })
    }

    $scope.subDepartment={};
    $scope.subDepartment.department={};
    $scope.subDepartment.department.id = parameters.departmentId;
    // Save Sub Department
    $scope.saveSubDepartment = function(subDepartment){
        console.log(subDepartment);
        //TODO: validation
        SubDepartmentServices.saveSubDepartment(subDepartment).then(function(resp){
            $uibModalInstance.close('save');
            //alert(resp.data.id);
            $rootScope.$broadcast("modalToSubDepartmentDataLoad",{deptId:parameters.departmentId,subDeptId:resp.data.id});
        })
    }

    $scope.section={};
    $scope.section.department={};
    $scope.section.department.id = parameters.departmentId;
    $scope.section.subDepartment={};
    $scope.section.subDepartment.id = parameters.subDepartmentId;
    // Save Sub Department
    $scope.saveSection = function(section){
        console.log(section);
        //TODO: validation
        SectionServices.saveSection(section).then(function(resp){
            $uibModalInstance.close('save');
            //alert(resp.data.id);
            $rootScope.$broadcast("modalToSectionDataLoad",{subDeptId:parameters.subDepartmentId,sectionId:resp.data.id});
        })
    }

    $scope.floor={};
    $scope.floor.department={};
    $scope.floor.department.id = parameters.departmentId;
    $scope.floor.subDepartment={};
    $scope.floor.subDepartment.id = parameters.subDepartmentId;
    $scope.floor.section={};
    $scope.floor.section.id = parameters.sectionId;
    // Save Sub Department
    $scope.saveFloor = function(floor){
        console.log(floor);
        //TODO: validation
        FloorServices.saveFloor(floor).then(function(resp){
            $uibModalInstance.close('save');
            //alert(resp.data.id);
            $rootScope.$broadcast("modalToFloorDataLoad",{secId:parameters.sectionId,floorId:resp.data.id});
        })
    }

    $scope.line={};
    $scope.line.department={};
    $scope.line.department.id = parameters.departmentId;
    $scope.line.subDepartment={};
    $scope.line.subDepartment.id = parameters.subDepartmentId;
    $scope.line.section={};
    $scope.line.section.id = parameters.sectionId;
    $scope.line.floor={};
    $scope.line.floor.id = parameters.floorId;
    // Save Sub Department
    $scope.saveLine = function(line){
        console.log(line);
        //TODO: validation
        LineServices.saveLine(line).then(function(resp){
            $uibModalInstance.close('save');
            //alert(resp.data.id);
            $rootScope.$broadcast("modalToLineDataLoad",{floorId:parameters.floorId,lineId:resp.data.id});
        })
    }
});