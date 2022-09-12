app.controller("unitsController",
    function($rootScope, $scope, $http, $location, $timeout, UnitServices) {

    $scope.unitsGrid = {
        paginationPageSizes: [25, 50, 75],
        paginationPageSize: 25,
        enableSorting: true,
        columnDefs: [
          { name: 'unitName', displayName:'Unit Name', width: 220 },
          { name: 'code', displayName:'Code', width: 200 },
          { name: 'order', displayName:'Order', width: 200 },
          { name: 'status', displayName:'Status', minWidth: 180, cellTemplate: '<div class="ui-grid-cell-contents">{{row.entity.status==true?"Active":"Inactive"}}</div>' },
          {
            name: 'action', displayName:'Action', cellClass:'grid-action', headerCellClass:'grid-action', minWidth: 100, width: 120, enableSorting: false, pinnedRight:true, enableColumnMenu: false,
            cellTemplate:
                '<div class="ui-grid-cell-contents">'+
                    '<a href="/#!/admin/settings/units/edit/?id={{row.entity.id}}">'+
                        '<button class="btn btn-primary-outline ks-no-text">'+
                            '<span class="la la-pencil ks-icon"></span>'+
                        '</button>'+
                    '</a>'+
                    '<a href="javascript:void(0);" ng-click="grid.appScope.deleteUnit(row.entity.id)">'+
                    '<button class="btn btn-danger-outline ks-no-text">'+
                        '<span class="la la-trash-o ks-icon"></span></button></a>'+
                '</div>'
          }
        ]
      };

    function init(){
        UnitServices.getAllUnits().then(function(resp){
            $scope.unitsGrid.data = resp.data.content;
            console.log(resp.data.content);
        })
    }

    init();

    $scope.deleteUnit = function(id){
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
           UnitServices.deleteUnitById(id).then(function(resp){
               init();
           })
       });
    }
});