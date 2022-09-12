app.controller("employeeInactiveController",
    function($rootScope, $scope, $http, $location, $timeout, EmployeeService) {

    $scope.inactiveEmployeeGrid = {
        paginationPageSizes: [25, 50, 75],
        paginationPageSize: 25,
        enableSorting: true,
        columnDefs: [
          {
            name: 'firstName', displayName:'Employee Name', minWidth: 150, width: 250, pinnedLeft:true,
            cellTemplate:
                 '<div class="ui-grid-cell-contents">'+
                     '<a href="/#!/employees/manage/employee/profile/?id={{row.entity.id}}">'+
                         '{{row.entity.surname==null?"":row.entity.surname+" "}}'+
                         '{{row.entity.firstName==null?"":row.entity.firstName +" "}}'+
                         '{{row.entity.lastName==null?"":row.entity.lastName}}'+
                         '{{row.entity.employeeID==null?"":" ("+row.entity.employeeID+")"}}'+
                     '</a>'+
                 '</div>'
          },
          { name: 'email', displayName:'Email Address', minWidth: 180, width: 220 },
          { name: 'phone', displayName:'Contact No', minWidth: 100, width: 160 },
          { name: 'designation.designationName', displayName:'Designation', minWidth: 100, width: 160 },
          { name: 'department.departmentName', displayName:'Department', minWidth: 100, width: 160 },
          { name: 'employeeType.employeeTypeName', displayName:'Employee Type', minWidth: 100, width: 160 },
          { name: 'role.roleName', displayName:'Role', minWidth: 100, width: 160 },
          { name: 'dateOfJoining', displayName:'Date Of Joining', minWidth: 100, width: 160, type: 'date', cellFilter: 'date:\'dd/MM/yyyy\''}
        ]
      };

    function init(){
        EmployeeService.getAllUsers().then(function(resp){
            $scope.inactiveEmployeeGrid.data = resp.data.content;
            console.log(resp.data.content);
        });
    }

    init();

    $scope.filterBy = [
        {id: '1', name: 'ID'},
        {id: '2', name: 'Name'},
        {id: '3', name: 'Department'},
        {id: '4', name: 'Designation'},
        {id: '5', name: 'Role'}
    ];

    $scope.filter={};
    $scope.employeeFilterBySearchString=function(filter){
        if(filter.searchString!=null && filter.searchString!=""){
            EmployeeService.getEmployeeSearch(filter.searchBy,filter.searchString).then(function(resp){
                $scope.employeeGrid.data = resp.data.content;
                console.log(resp.data.content);
            });
        }
    }

    $scope.reloadAllData=function(){
        init();
    }

    $scope.deleteEmployee = function(id){
       swal({
           title: "System ask!",
           text: "Do you want to delete this?",
           type: "warning",
           showCancelButton: true,
           confirmButtonClass: "btn-danger",
           confirmButtonText: "Ok",
           closeOnConfirm: true
       },
       function(){
           EmployeeService.deleteEmployeeById(id).then(function(resp){
               init();
           });
       });
    }
});