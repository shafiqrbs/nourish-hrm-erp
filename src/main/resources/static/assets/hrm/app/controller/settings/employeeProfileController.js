app.controller("employeeProfileController",
    function($rootScope, $scope, $uibModal, $http, $location, $timeout, $filter, EmployeeService, DesignationServices, RoleServices, EmployeeTypeServices, SourceOfHireServices, LineServices, FloorServices, SectionServices, SubDepartmentServices, DepartmentServices) {


    function getSubDepartmentListById(id){
        if(id==undefined){
            $scope.subDepartments = {};
            return;
        }

        $scope.departmentId=id;

        SubDepartmentServices.getSubDepartmentListByDepartmentId(id).then(function(resp){
            $scope.subDepartments = resp.data;
            //console.log(JSON.stringify(resp.data));
        })
    }

    function getAllDepartmentData(){
        DepartmentServices.getAllDepartment().then(function(resp){
            $scope.departments = resp.data.content;
        });
    }

    $scope.employee = {};
    function getEmployeeDetailsInformation(id){
        EmployeeService.getEmployeeById(id).then(function(resp){
            $scope.calculateAge($filter('date')(resp.data.dateOfBirth,'yyyy-MM-dd'));
            $scope.employee                 = resp.data;
            $scope.employee.dateOfExit      = $filter('date')(resp.data.dateOfExit,'dd/MM/yyyy');
            $scope.employee.dateOfJoining   = $filter('date')(resp.data.dateOfJoining,'dd/MM/yyyy');
            $scope.employee.dateOfBirth     = $filter('date')(resp.data.dateOfBirth,'dd/MM/yyyy');
            $scope.employee.fromDate        = $filter('date')(resp.data.fromDate,'dd/MM/yyyy');
            $scope.employee.toDate          = $filter('date')(resp.data.toDate,'dd/MM/yyyy');
        })
    }

    function init(){
        var id = getQueryVariable();
        getEmployeeDetailsInformation(id);
    }

    init();

    // Employee Profile page
    $scope.selectedTab = "PersonalInfo";
    $scope.selectedContent = "PersonalInfo";
    $scope.openEmployeeProfilePage = function(pageName){
        $scope.selectedTab = pageName;
        $scope.selectedContent = pageName;
    }

     var formType = "New";
    $scope.save = function(){

    }

    $scope.degrees = [
        {id: '1', name: 'SSC'},
        {id: '2', name: 'HSC'},
        {id: '3', name: 'Graduation'}
    ];

    function getQueryVariable() {
        var query = $location.absUrl();
        if(query.indexOf('?') != -1)
        {
            var vars = query.split('?');
            var pair = vars[1].split('=');
            return pair[1];
        }
        return 0;
    }


    //calculate age
    $scope.calculateAge = function(dateofBirth){
        if(dateofBirth == "" || dateofBirth == null)
        {
            $scope.age = 0;
        }
        else{
            var currentYear = new Date().getFullYear();
            var dateString = dateofBirth.split('-');
            var seletedYear = dateString[0]
            var age  =  (currentYear - seletedYear);
            $scope.age = age;
        }
    }

});