app.controller("roleController",
    function($rootScope, $scope, $http, $location, $timeout, RoleServices) {

    $scope.roleGrid = {
            paginationPageSizes: [25, 50, 75],
            paginationPageSize: 25,
            enableSorting: true,
            columnDefs: [
              { name: 'roleName', displayName:'Role', width: 300 },
              { name: 'status', displayName:'Status', minWidth: 300, cellTemplate: '<div class="ui-grid-cell-contents">{{row.entity.status==true?"Active":"Inactive"}}</div>' },
              {
                name: 'action', displayName:'Action', cellClass:'grid-action', headerCellClass:'grid-action', minWidth: 100, width: 120, enableSorting: false, pinnedRight:true, enableColumnMenu: false,
                cellTemplate:
                    '<div class="ui-grid-cell-contents">'+
                        '<a href="/#!/admin/settings/role/edit/?id={{row.entity.id}}">'+
                            '<button class="btn btn-primary-outline ks-no-text">'+
                                '<span class="la la-pencil ks-icon"></span>'+
                            '</button>'+
                        '</a>'+
                        '<a href="javascript:void(0);" ng-click="grid.appScope.deleteRole(row.entity.id)">'+
                        '<button class="btn btn-danger-outline ks-no-text">'+
                            '<span class="la la-trash-o ks-icon"></span></button></a>'+
                    '</div>'
              }
            ]
          };

    function init(){
        RoleServices.getAllRoles().then(function(resp){
            $scope.roleGrid.data = resp.data.content;
            console.log(resp.data.content);
        })
    }

    init();

    $scope.deleteRole = function(id){
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
           RoleServices.deleteRoleById(id).then(function(resp){
               init();
           })
       });
    }
});