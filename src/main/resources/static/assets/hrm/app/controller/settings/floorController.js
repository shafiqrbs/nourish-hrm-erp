app.controller("floorController",
    function($rootScope, $scope, $http, $location, $timeout, FloorServices) {

    $scope.floorGrid = {
        paginationPageSizes: [25, 50, 75],
        paginationPageSize: 25,
        enableSorting: true,
        columnDefs: [
          { name: 'floorName', displayName:'Floor', width: 180 },
          { name: 'department.departmentName', displayName:'Department', width: 150 },
          { name: 'subDepartment.subDepartmentName', displayName:'Sub Department', width: 150 },
          { name: 'section.sectionName', displayName:'Section', width: 150 },
          { name: 'code', displayName:'Code', width: 130 },
          { name: 'order', displayName:'Order', width: 130 },
          { name: 'status', displayName:'Status', minWidth: 130, cellTemplate: '<div class="ui-grid-cell-contents">{{row.entity.status==true?"Active":"Inactive"}}</div>' },
          {
            name: 'action', displayName:'Action', cellClass:'grid-action', headerCellClass:'grid-action', minWidth: 100, width: 120, enableSorting: false, pinnedRight:true, enableColumnMenu: false,
            cellTemplate:
                '<div class="ui-grid-cell-contents">'+
                    '<a href="/#!/admin/settings/floor/edit/?id={{row.entity.id}}">'+
                        '<button class="btn btn-primary-outline ks-no-text">'+
                            '<span class="la la-pencil ks-icon"></span>'+
                        '</button>'+
                    '</a>'+
                    '<a href="javascript:void(0);" ng-click="grid.appScope.deleteFloor(row.entity.id)">'+
                    '<button class="btn btn-danger-outline ks-no-text">'+
                        '<span class="la la-trash-o ks-icon"></span></button></a>'+
                '</div>'
          }
        ]
      };

    function init(){
        FloorServices.getAllFloor().then(function(resp){
            $scope.floorGrid.data = resp.data.content;
            console.log(resp.data.content);
        })
    }

    init();

    $scope.deleteFloor = function(id){
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
           FloorServices.deleteFloorById(id).then(function(resp){
               init();
           })
       });
    }
});