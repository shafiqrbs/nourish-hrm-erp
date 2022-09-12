app.controller("leaveEntitlementController",
    function($rootScope, $scope, $http, $location, $timeout, LeaveEntitlementServices) {

    $scope.leaveEntitlementGrid = {
            paginationPageSizes: [25, 50, 75],
            paginationPageSize: 25,
            enableSorting: true,
            columnDefs: [
              { name: 'leaveTypeName', displayName:'Leave Entitlement Name', minWidth: 200, width: 250 },
              { name: 'paidType', displayName:'Paid Type', minWidth: 150, width: 200 },
              { name: 'status', displayName:'Status', minWidth: 150, cellTemplate: '<div class="ui-grid-cell-contents">{{row.entity.status==true?"Active":"Inactive"}}</div>' },
              {
                name: 'action', displayName:'Action', cellClass:'grid-action', headerCellClass:'grid-action', minWidth: 100, width: 120, enableSorting: false, pinnedRight:true, enableColumnMenu: false,
                cellTemplate:
                    '<div class="ui-grid-cell-contents">'+
                        '<a href="/#!/admin/settings/leave/entitlement/edit/?id={{row.entity.id}}">'+
                            '<button class="btn btn-primary-outline ks-no-text">'+
                                '<span class="la la-pencil ks-icon"></span>'+
                            '</button>'+
                        '</a>'+
                        '<a href="javascript:void(0);" ng-click="grid.appScope.deleteLeaveEntitlement(row.entity.id)">'+
                        '<button class="btn btn-danger-outline ks-no-text">'+
                            '<span class="la la-trash-o ks-icon"></span></button></a>'+
                    '</div>'
              }
            ]
          };

    function init(){
        LeaveEntitlementServices.getAllLeaveEntitlement().then(function(resp){
            $scope.leaveEntitlementGrid.data = resp.data.content;
            console.log(resp.data.content);
        })
    }

    init();

    $scope.deleteLeaveEntitlement = function(id){
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
           LeaveEntitlementServices.deleteLeaveEntitlementById(id).then(function(resp){
               init();
           })
       });
    }
});