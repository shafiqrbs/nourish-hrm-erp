app.controller("employeeSalaryController",
    function($rootScope, $scope, $http, $location, $timeout, SalaryServices) {

    $scope.employeeSalariesGrid = {
        paginationPageSizes: [25, 50, 75],
        paginationPageSize: 25,
        enableSorting: true,
        columnDefs: [
          {
            name: 'employee.firstName', displayName:'Employee Name', minWidth: 150, width: 250, pinnedLeft:true,
            cellTemplate:
                 '<div class="ui-grid-cell-contents">'+
                     '<a href="/#!/organization/employee/profile/?id={{row.entity.employee.id}}">'+
                         '{{row.entity.employee.surname==null?"":row.entity.employee.surname+" "}}'+
                         '{{row.entity.employee.firstName==null?"":row.entity.employee.firstName +" "}}'+
                         '{{row.entity.employee.lastName==null?"":row.entity.employee.lastName}}'+
                         '{{row.entity.employee.employeeID==null?"":" ("+row.entity.employee.employeeID+")"}}'+
                     '</a>'+
                 '</div>'
          },
          { name: 'employee.department.departmentName', displayName:'Department' },
          { name: 'salaryType.salaryTypeName', displayName:'Salary Type' },
          { name: 'salaryBasicMonthly', displayName:'Basic Salary' },
          { name: 'totalSalaryMonthly', displayName:'Gross Salary' },
          { name: 'status.statusName', displayName:'Approval Status'}
        ]
      };

    function init(){
        SalaryServices.getAllSalary().then(function(resp){
            $scope.employeeSalariesGrid.data = resp.data.content;
            console.log(resp.data.content);
        })
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
    $scope.employeeSalariesFilterBySearchString=function(filter){
        if(filter.searchString!=null && filter.searchString!=""){
        /*
            EmployeeService.getEmployeeSearch(filter.searchBy,filter.searchString).then(function(resp){
                $scope.employeeGrid.data = resp.data.content;
                console.log(resp.data.content);
            });*/
        }
    }

    $scope.reloadAllData=function(){
        init();
    }
});