app.controller("salaryReportingController",
    function($rootScope, $scope, $http, $location, $timeout, SalaryReportingServices) {

    $scope.salaryListGrid = {
        paginationPageSizes: [25, 50, 75],
        paginationPageSize: 25,
        enableSorting: true,
        columnDefs: [
          { name: 'employeeBasicInfo.firstName', displayName:'Employee Name' },
          { name: 'employeeBasicInfo.department', displayName:'Department'},
          { name: 'salaryType.salaryTypeName', displayName:'Salary Type' },
          { name: 'salaryBasic', displayName:'Basic' },
          { name: 'totalSalary', displayName:'Total Salary' }
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
        SalaryReportingServices.getAllSalaryReporting().then(function(resp){
            $scope.salaryListGrid.data = resp.data;
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