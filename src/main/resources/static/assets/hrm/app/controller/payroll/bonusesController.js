app.controller("bonusesController",
    function($rootScope, $scope, $http, $location, $timeout, BonusServices) {

    $scope.bonusListGrid = {
        paginationPageSizes: [25, 50, 75],
        paginationPageSize: 25,
        enableSorting: true,
        columnDefs: [
          {
            name: 'employee.firstName', displayName:'Employee Name', minWidth: 150, width: 250, pinnedLeft:true,
            cellTemplate:
                 '<div class="ui-grid-cell-contents">'+
                     '<a href="/#!/organization/employee/profile/?id={{row.entity.employee.id}}">'+
                         '{{row.entity.employee.surname==null?"":row.entity.employee.surname+" "}}'+
                         '{{row.entity.employee.firstName==null?"":row.entity.employee.firstName +" "}}'+
                         '{{row.entity.employee.lastName==null?"":row.entity.employee.lastName}}'+
                         '{{row.entity.employee.employeeID==null?"":" ("+row.entity.employee.employeeID+")"}}'+
                     '</a>'+
                 '</div>'
          },
          { name: 'bonusTitle', displayName:'Title' },
          { name: 'calendar.date', displayName:'Bonus Date', type: 'date', cellFilter: 'date:\'dd/MM/yyyy\'' },
          { name: 'amount', displayName:'Amount' },
          { name: 'status.statusName', displayName:'Approval Status '},
          {
              name: 'action', displayName:'Action', cellClass:'grid-action', headerCellClass:'grid-action', minWidth: 100, width: 120, enableSorting: false, enableColumnMenu: false,
              cellTemplate:
                  '<div class="ui-grid-cell-contents">'+
                      '<a href="/#!/payroll/bonuses/details/?id={{row.entity.id}}">'+
                         '<button class="btn btn-primary-outline ks-no-text" title="View Details">'+
                            '<span class="la la-navicon ks-icon"></span>'+
                         '</button>'+
                      '</a>'+
                      '<a href="/#!/payroll/bonuses/edit/?id={{row.entity.id}}" ng-if="row.entity.status.statusName!=\'Approved\'">'+
                          '<button class="btn btn-primary-outline ks-no-text">'+
                              '<span class="la la-pencil ks-icon"></span>'+
                          '</button>'+
                      '</a>'+
                      '<a ng-if="row.entity.status.statusName==\'Approved\'">'+
                          '<button class="btn btn-primary-outline ks-no-text disabled">'+
                              '<span class="la la-pencil ks-icon"></span>'+
                          '</button>'+
                      '</a>'+
                      '<a ng-click="grid.appScope.deleteBonus(row.entity.id)" ng-if="row.entity.status.statusName!=\'Approved\'">'+
                          '<button class="btn btn-danger-outline ks-no-text">'+
                              '<span class="la la-trash-o ks-icon"></span>'+
                          '</button>'+
                      '</a>'+
                      '<a ng-if="row.entity.status.statusName==\'Approved\'">'+
                          '<button class="btn btn-danger-outline ks-no-text disabled">'+
                              '<span class="la la-trash-o ks-icon"></span>'+
                          '</button>'+
                      '</a>'+
                  '</div>'
          }
        ]
      };

    function init(){
        BonusServices.getAllBonus().then(function(resp){
            $scope.bonusListGrid.data = resp.data.content;
            console.log(resp.data.content);
        })
    }

    init();

    $scope.filterBy = [
        {id: '1', name: 'ID'},
        {id: '2', name: 'Name'},
        {id: '3', name: 'Department'},
        {id: '4', name: 'Designation'},
        {id: '5', name: 'Role'}
    ];

    $scope.filter={};
    $scope.employeeBonusesFilterBySearchString=function(filter){
        if(filter.searchString!=null && filter.searchString!=""){
        /*
            EmployeeService.getEmployeeSearch(filter.searchBy,filter.searchString).then(function(resp){
                $scope.employeeGrid.data = resp.data.content;
                console.log(resp.data.content);
            });*/
        }
    }

    $scope.deleteBonus = function(id){
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
           BonusServices.deleteBonusById(id).then(function(resp){
               init();
           })
       });
    }

    $scope.reloadAllData=function(){
        init();
    }
});