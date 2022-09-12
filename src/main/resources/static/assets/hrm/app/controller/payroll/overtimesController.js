app.controller("overtimesController",
    function($rootScope, $scope, $http, $location, $timeout, DepartmentServices) {

    $scope.salaryListGrid = {
        paginationPageSizes: [25, 50, 75],
        paginationPageSize: 25,
        enableSorting: true,
        columnDefs: [
          { name: 'EmployeeName', displayName:'Employee Name' },
          { name: 'Title', displayName:'Title' },
          { name: 'Amount', displayName:'Amount' },
          { name: 'ApprovalStatus', displayName:'Approval Status ',cellTemplate: '<div class="ui-grid-cell-contents">{{row.entity.status==true?"Active":"Inactive"}}</div>'},
          {
            name: 'action', displayName:'Action', cellClass:'grid-action', headerCellClass:'grid-action', minWidth: 100, width: 120, enableSorting: false, pinnedRight:true, enableColumnMenu: false,
            cellTemplate:
                '<div class="ui-grid-cell-contents">'+
                    '<a href="/#!/leavemanage/holidays/list/edit/?id={{row.entity.id}}">'+
                        '<button class="btn btn-primary-outline ks-no-text">'+
                            '<span class="la la-pencil ks-icon"></span>'+
                        '</button>'+
                    '</a>'+
                    '<a href="javascript:void(0);" ng-click="grid.appScope.deleteDepartment(row.entity.id)">'+
                    '<button class="btn btn-danger-outline ks-no-text">'+
                        '<span class="la la-trash-o ks-icon"></span></button></a>'+
                '</div>'
          }
        ]
      };

    function init(){
        DepartmentServices.getAllDepartment().then(function(resp){
            $scope.departmentGrid.data = resp.data.content;
            console.log(resp.data.content);
        })
    }


    init();

    $scope.deleteDepartment = function(id){
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
           DepartmentServices.deleteDepartmentById(id).then(function(resp){
               init();
           })
       });
    }
});