app.controller("adjustmentController",
    function($rootScope, $scope, $http, $location, $timeout, AdjustmentServices) {

    $scope.adjustmentListGrid = {
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
          { name: 'adjustmentTitle', displayName:'Title' },
          { name: 'adjustmentCalendar.date', displayName:'Adjustment Date', type: 'date', cellFilter: 'date:\'dd/MM/yyyy\'' },
          { name: 'amount', displayName:'Amount' },
          { name: 'status.statusName', displayName:'Approval Status '},
          {
              name: 'action', displayName:'Action', cellClass:'grid-action', headerCellClass:'grid-action', minWidth: 100, width: 120, enableSorting: false, enableColumnMenu: false,
              cellTemplate:
                  '<div class="ui-grid-cell-contents">'+
                      '<a href="/#!/payroll/adjustments/details/?id={{row.entity.id}}">'+
                         '<button class="btn btn-primary-outline ks-no-text" title="View Details">'+
                             '<span class="la la-navicon ks-icon"></span>'+
                         '</button>'+
                      '</a>'+
                      '<a href="/#!/payroll/adjustments/edit/?id={{row.entity.id}}" ng-if="row.entity.status.statusName!=\'Approved\'">'+
                          '<button class="btn btn-primary-outline ks-no-text">'+
                              '<span class="la la-pencil ks-icon"></span>'+
                          '</button>'+
                      '</a>'+
                      '<a ng-if="row.entity.status.statusName==\'Approved\'">'+
                          '<button class="btn btn-primary-outline ks-no-text disabled">'+
                              '<span class="la la-pencil ks-icon"></span>'+
                          '</button>'+
                      '</a>'+
                      '<a ng-click="grid.appScope.deleteAdjustment(row.entity.id)" ng-if="row.entity.status.statusName!=\'Approved\'">'+
                          '<button class="btn btn-danger-outline ks-no-text">'+
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
        AdjustmentServices.getAllAdjustment().then(function(resp){
            $scope.adjustmentListGrid.data = resp.data.content;
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
    $scope.employeeAdjustmentsFilterBySearchString=function(filter){
        if(filter.searchString!=null && filter.searchString!=""){
        /*
            EmployeeService.getEmployeeSearch(filter.searchBy,filter.searchString).then(function(resp){
                $scope.employeeGrid.data = resp.data.content;
                console.log(resp.data.content);
            });*/
        }
    }

    $scope.deleteAdjustment = function(id){
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
           AdjustmentServices.deleteAdjustmentById(id).then(function(resp){
               init();
           })
       });
    }

    $scope.reloadAllData=function(){
        init();
    }
});