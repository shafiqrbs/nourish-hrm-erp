app.controller("loansController",
    function($rootScope, $scope, $http, $location, $timeout, LoanServices) {

    $scope.loanListGrid = {
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
          { name: 'loanTitle', displayName:'Title', minWidth: 100, width: 200 },
          { name: 'calendar.date', displayName:'Date', type: 'date', cellFilter: 'date:\'dd/MM/yyyy\'' },
          { name: 'amount', displayName:'Loan' },
          { name: 'deductionPerMonth', displayName:'Deduction Per Month', minWidth: 100, width: 180 },
          { name: 'remainingLoan', displayName:'Remaining' },
          { name: 'status.statusName', displayName:'Status '},
          {
            name: 'action', displayName:'Action', cellClass:'grid-action', headerCellClass:'grid-action', minWidth: 100, width: 120, enableSorting: false, enableColumnMenu: false,
            cellTemplate:
                '<div class="ui-grid-cell-contents">'+
                    '<a href="/#!/payroll/loans/details/?id={{row.entity.id}}">'+
                       '<button class="btn btn-primary-outline ks-no-text" title="View Details">'+
                           '<span class="la la-navicon ks-icon"></span>'+
                       '</button>'+
                    '</a>'+
                    '<a href="/#!/payroll/loans/edit/?id={{row.entity.id}}" ng-if="row.entity.status.statusName!=\'Approved\'">'+
                        '<button class="btn btn-primary-outline ks-no-text" title="Edit">'+
                            '<span class="la la-pencil ks-icon"></span>'+
                        '</button>'+
                    '</a>'+
                    '<a ng-if="row.entity.status.statusName==\'Approved\'">'+
                        '<button class="btn btn-primary-outline ks-no-text disabled">'+
                            '<span class="la la-pencil ks-icon"></span>'+
                        '</button>'+
                    '</a>'+
                    '<a ng-click="grid.appScope.deleteLoan(row.entity.id)" ng-if="row.entity.status.statusName!=\'Approved\'">'+
                        '<button class="btn btn-danger-outline ks-no-text" title="Delete">'+
                            '<span class="la la-trash-o ks-icon"></span>'+
                        '</button>'+
                    '</a>'+
                    '<a ng-if="row.entity.status.statusName==\'Approved\'">'+
                        '<button class="btn btn-danger-outline ks-no-text disabled">'+
                            '<span class="la la-trash-o ks-icon"></span>'+
                        '</button>'+
                    '</a>'+
                '</div>'
          }
        ]
      };

    function init(){
        LoanServices.getAllLoan().then(function(resp){
            $scope.loanListGrid.data = resp.data.content;
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
    $scope.employeeLoansFilterBySearchString=function(filter){
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