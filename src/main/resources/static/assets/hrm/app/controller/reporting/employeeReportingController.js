app.controller("employeeReportingController",
    function($rootScope, $scope, $http, $location, $timeout, EmployeesReportingServices) {

    $scope.employeeListGrid = {
        paginationPageSizes: [25, 50, 75],
        paginationPageSize: 25,
        enableSorting: true,
        columnDefs: [
          { name: 'employeeID', displayName:'Employee ID', minWidth: 100, width: 180, pinnedLeft:true },
          { name: 'firstName', displayName:'Employee Name', minWidth: 100, width: 200, pinnedLeft:true },
          { name: 'email', displayName:'Email ID', minWidth: 100, width: 200, pinnedLeft:true },
          { name: 'gender', displayName:'Gender', minWidth: 50, width: 150 },
          { name: 'designation', displayName:'Designation', minWidth: 100, width: 150 },
          { name: 'role', displayName:'Role', minWidth: 100, width: 150 },
          { name: 'department', displayName:'Department', minWidth: 100, width: 150 },
          { name: 'dateOfJoining', displayName:'Date of joining', minWidth: 100, width: 200 }
        ],
        exporterLinkLabel: 'get your csv here',
        exporterPdfDefaultStyle: {fontSize: 9},
        exporterPdfTableStyle: {margin: [30, 30, 30, 30]},
        exporterPdfTableHeaderStyle: {fontSize: 10, bold: true, italics: true, color: 'red'},
        exporterPdfOrientation: 'portrait',
        exporterPdfPageSize: 'LETTER',
        exporterPdfMaxGridWidth: 500,
        onRegisterApi: function(gridApi){
          $scope.gridApi = gridApi;
        }
      };

    function init(){
        EmployeesReportingServices.getAllEmployeesReporting().then(function(resp){
            $scope.employeeListGrid.data = resp.data;
            console.log(resp.data);
        })
    }

    init();

    $scope.exportToExcel = function(){
        $scope.gridApi.exporter.csvExport('all', 'all', 'csv');
      };

      $scope.exportToPDF = function(){
        $scope.gridApi.exporter.pdfExport('all', 'all', 'pdf');
      };
});