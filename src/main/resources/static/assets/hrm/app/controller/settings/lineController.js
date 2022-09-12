app.controller("lineController",
    function($rootScope, $scope, $http, $location, $timeout, LineServices) {

    $scope.lineGrid = {
        paginationPageSizes: [25, 50, 75],
        paginationPageSize: 25,
        enableSorting: true,
        columnDefs: [
          { name: 'lineName', displayName:'Line', width: 160 },
          { name: 'department.departmentName', displayName:'Department', width: 140 },
          { name: 'subDepartment.subDepartmentName', displayName:'Sub Department', width: 140 },
          { name: 'section.sectionName', displayName:'Section', width: 140 },
          { name: 'floor.floorName', displayName:'Floor', width: 140 },
          { name: 'code', displayName:'Code', width: 120 },
          { name: 'order', displayName:'Order', width: 120 },
          { name: 'status', displayName:'Status', minWidth: 120, cellTemplate: '<div class="ui-grid-cell-contents">{{row.entity.status==true?"Active":"Inactive"}}</div>' },
          {
            name: 'action', displayName:'Action', cellClass:'grid-action', headerCellClass:'grid-action', minWidth: 100, width: 120, enableSorting: false, pinnedRight:true, enableColumnMenu: false,
            cellTemplate:
                '<div class="ui-grid-cell-contents">'+
                    '<a href="/#!/admin/settings/line/edit/?id={{row.entity.id}}">'+
                        '<button class="btn btn-primary-outline ks-no-text">'+
                            '<span class="la la-pencil ks-icon"></span>'+
                        '</button>'+
                    '</a>'+
                    '<a href="javascript:void(0);" ng-click="grid.appScope.deleteLine(row.entity.id)">'+
                    '<button class="btn btn-danger-outline ks-no-text">'+
                        '<span class="la la-trash-o ks-icon"></span></button></a>'+
                '</div>'
          }
        ]
      };

    function init(){
        LineServices.getAllLine().then(function(resp){
            $scope.lineGrid.data = resp.data.content;
            console.log(resp.data.content);
        })
    }

    init();

    $scope.deleteLine = function(id){
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
           LineServices.deleteLineById(id).then(function(resp){
               init();
           })
       });
    }
});