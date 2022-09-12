app.controller("leaveAllocationController",
    function($rootScope, $scope, $http, $location, $timeout, LeaveAllocationServices) {

    $scope.LeaveAllocationGrid = {
            paginationPageSizes: [25, 50, 75],
            paginationPageSize: 25,
            enableSorting: true,
            columnDefs: [
              { name: 'leaveYear', displayName:'Leave Year', minWidth: 150, width: 200 },
              { name: 'leaveType.leaveTypeName', displayName:'Leave Entitlement', minWidth: 150, width: 180 },
              { name: 'leaveType.paidType', displayName:'Paid Type', minWidth: 100, width: 120 },
              { name: 'permittedUnit', displayName:'Leave Allocation', minWidth: 100, width: 150 },
              { name: 'unitName', displayName:'Unit Name', minWidth: 100, width: 120 },
              { name: 'status', displayName:'Status', minWidth: 100, cellTemplate: '<div class="ui-grid-cell-contents">{{row.entity.status==true?"Active":"Inactive"}}</div>' },
              {
                name: 'action', displayName:'Action', cellClass:'grid-action', headerCellClass:'grid-action', minWidth: 100, width: 120, enableSorting: false, pinnedRight:true, enableColumnMenu: false,
                cellTemplate:
                    '<div class="ui-grid-cell-contents">'+
                        '<a href="/#!/admin/settings/leave/allocation/edit/?id={{row.entity.id}}">'+
                            '<button class="btn btn-primary-outline ks-no-text">'+
                                '<span class="la la-pencil ks-icon"></span>'+
                            '</button>'+
                        '</a>'+
                        '<a href="javascript:void(0);" ng-click="grid.appScope.deleteAssignLeave(row.entity.id)">'+
                        '<button class="btn btn-danger-outline ks-no-text">'+
                            '<span class="la la-trash-o ks-icon"></span></button></a>'+
                    '</div>'
              }
            ]
          };

    function init(){
        LeaveAllocationServices.getAllAssignLeave().then(function(resp){
            $scope.LeaveAllocationGrid.data = resp.data.content;
            $scope.totalRecords = resp.data.numberOfElements;
            console.log(resp.data.content);
        })
    }


    init();

    $scope.deleteAssignLeave = function(id){
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
           LeaveAllocationServices.deleteAssignLeaveById(id).then(function(resp){
               init();
           });
       });
    }
});