app.controller("sectionController",
    function($rootScope, $scope, $http, $location, $timeout, SectionServices) {

    $scope.sectionGrid = {
        paginationPageSizes: [25, 50, 75],
        paginationPageSize: 25,
        enableSorting: true,
        columnDefs: [
          { name: 'sectionName', displayName:'Section', width: 200 },
          { name: 'department.departmentName', displayName:'Department', width: 180 },
          { name: 'subDepartment.subDepartmentName', displayName:'Sub Department', width: 180 },
          { name: 'code', displayName:'Code', width: 180 },
          { name: 'order', displayName:'Order', width: 180 },
          { name: 'status', displayName:'Status', minWidth: 180, cellTemplate: '<div class="ui-grid-cell-contents">{{row.entity.status==true?"Active":"Inactive"}}</div>' },
          {
            name: 'action', displayName:'Action', cellClass:'grid-action', headerCellClass:'grid-action', minWidth: 100, width: 120, enableSorting: false, pinnedRight:true, enableColumnMenu: false,
            cellTemplate:
                '<div class="ui-grid-cell-contents">'+
                    '<a href="/#!/admin/settings/section/edit/?id={{row.entity.id}}">'+
                        '<button class="btn btn-primary-outline ks-no-text">'+
                            '<span class="la la-pencil ks-icon"></span>'+
                        '</button>'+
                    '</a>'+
                    '<a href="javascript:void(0);" ng-click="grid.appScope.deleteSection(row.entity.id)">'+
                    '<button class="btn btn-danger-outline ks-no-text">'+
                        '<span class="la la-trash-o ks-icon"></span></button></a>'+
                '</div>'
          }
        ]
      };

    function init(){
        SectionServices.getAllSection().then(function(resp){
            $scope.sectionGrid.data = resp.data.content;
            console.log(resp.data.content);
        })
    }

    init();

    $scope.deleteSection = function(id){
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
           SectionServices.deleteSectionById(id).then(function(resp){
               init();
           })
       });
    }
});