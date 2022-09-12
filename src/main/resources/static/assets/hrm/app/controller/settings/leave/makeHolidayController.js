app.controller("makeHolidayController",
    function($rootScope, $scope, $http, $location, $timeout, MakeHolidayServices) {

    $scope.holidayListViewGrid = {
        paginationPageSizes: [25, 50, 75],
        paginationPageSize: 25,
        enableSorting: true,
        columnDefs: [
          { name: 'calendar.date', displayName:'Holiday Date', minWidth: 150, width: 200 },
          { name: 'holidayName', displayName:'Holiday Name', minWidth: 150, width: 200 },
          { name: 'description', displayName:'Description', minWidth: 150, width: 250 },
          { name: 'status', displayName:'Status', minWidth: 150, cellTemplate: '<div class="ui-grid-cell-contents">{{row.entity.status==true?"Active":"Inactive"}}</div>' },
          {
             name: 'action', displayName:'Action', cellClass:'grid-action', headerCellClass:'grid-action', minWidth: 100, width: 120, enableSorting: false, pinnedRight:true, enableColumnMenu: false,
                   cellTemplate:
                       '<div class="ui-grid-cell-contents">'+
                           '<a href="/#!/admin/settings/leave/holiday/edit/?id={{row.entity.id}}">'+
                               '<button class="btn btn-primary-outline ks-no-text">'+
                                   '<span class="la la-pencil ks-icon"></span>'+
                               '</button>'+
                           '</a>'+
                           '<a href="javascript:void(0);" ng-click="grid.appScope.deleteHoliday(row.entity.id)">'+
                           '<button class="btn btn-danger-outline ks-no-text">'+
                               '<span class="la la-trash-o ks-icon"></span></button></a>'+
                       '</div>'
                 }
        ]
      };

    function init(){
        MakeHolidayServices.getAllHolidays().then(function(resp){
            $scope.holidayListViewGrid.data = resp.data.content;
            console.log(resp.data.content);
        })
    }

    init();

    $scope.deleteHoliday = function(id){
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
           MakeHolidayServices.deleteHolidayById(id).then(function(resp){
               init();
           })
       });
    }
});