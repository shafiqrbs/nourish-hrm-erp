app.controller("subDepartmentController",
    function($rootScope, $scope, $http, $location, $timeout, SubDepartmentServices) {

    $scope.subDepartmentGrid = {
        paginationPageSizes: [25, 50, 75],
        paginationPageSize: 25,
        enableSorting: true,
        columnDefs: [
          { name: 'subDepartmentName', displayName:'Sub Department' },
          { name: 'department.departmentName', displayName:'Department' },
          { name: 'code', displayName:'Code' },
          { name: 'order', displayName:'Order' },
          { name: 'status', displayName:'Status', cellTemplate: '<div class="ui-grid-cell-contents">{{row.entity.status==true?"Active":"Inactive"}}</div>' },
          {
            name: 'action', displayName:'Action', cellClass:'grid-action', headerCellClass:'grid-action', minWidth: 100, width: 120, enableSorting: false, pinnedRight:true, enableColumnMenu: false,
            cellTemplate:
                '<div class="ui-grid-cell-contents">'+
                    '<a href="/#!/admin/settings/subdepartment/edit/?id={{row.entity.id}}">'+
                        '<button class="btn btn-primary-outline ks-no-text">'+
                            '<span class="la la-pencil ks-icon"></span>'+
                        '</button>'+
                    '</a>'+
                    '<a href="javascript:void(0);" ng-click="grid.appScope.deleteSubDepartment(row.entity.id)">'+
                    '<button class="btn btn-danger-outline ks-no-text">'+
                        '<span class="la la-trash-o ks-icon"></span></button></a>'+
                '</div>'
          }
        ]
      };

    function init(){
        SubDepartmentServices.getAllSubDepartment().then(function(resp){
            $scope.subDepartmentGrid.data = resp.data.content;
            console.log(resp.data.content);
        })
    }

    init();

    $scope.deleteSubDepartment = function(id){
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
           SubDepartmentServices.deleteSubDepartmentById(id).then(function(resp){
               init();
           })
       });
    }
});