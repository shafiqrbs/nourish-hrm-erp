app.controller("makeAllowanceController",
    function($rootScope, $scope, $http, $location, $timeout, SalaryItemServices) {

    $scope.allowanceListViewGrid = {
        paginationPageSizes: [25, 50, 75],
        paginationPageSize: 25,
        enableSorting: true,
        columnDefs: [
          { name: 'salaryItemName', displayName:'Allowance Name', minWidth: 150, width: 200 },
          { name: 'isItemTaxAble', displayName:'Is Taxable', minWidth: 150, width: 180, cellTemplate: '<div class="ui-grid-cell-contents">{{row.entity.isItemTaxAble==true?"Yes":"No"}}</div>' },
          { name: 'amount', displayName:'Amount/PCT', minWidth: 150, width: 180 },
          { name: 'itemType', displayName:'Allowance Type', minWidth: 150, width: 180 },
          { name: 'isActive', displayName:'Status', minWidth: 150, cellTemplate: '<div class="ui-grid-cell-contents">{{row.entity.isActive==true?"Active":"Inactive"}}</div>' },
          {
             name: 'action', displayName:'Action', cellClass:'grid-action', headerCellClass:'grid-action', minWidth: 100, width: 120, enableSorting: false, pinnedRight:true, enableColumnMenu: false,
                   cellTemplate:
                       '<div class="ui-grid-cell-contents">'+
                           '<a href="/#!/admin/settings/payroll/allowance/edit/?id={{row.entity.id}}">'+
                               '<button class="btn btn-primary-outline ks-no-text">'+
                                   '<span class="la la-pencil ks-icon"></span>'+
                               '</button>'+
                           '</a>'+
                           '<a href="javascript:void(0);" ng-click="grid.appScope.deleteAllowance(row.entity.id)">'+
                           '<button class="btn btn-danger-outline ks-no-text">'+
                               '<span class="la la-trash-o ks-icon"></span></button></a>'+
                       '</div>'
          }
        ]
      };

    function init(){
        SalaryItemServices.getAllSalaryItem().then(function(resp){
            $scope.allowanceListViewGrid.data = resp.data.content;
            console.log(resp.data.content);
        })
    }

    init();

    $scope.deleteAllowance = function(id){
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
           SalaryItemServices.deleteSalaryItemById(id).then(function(resp){
               init();
           })
       });
    }
});