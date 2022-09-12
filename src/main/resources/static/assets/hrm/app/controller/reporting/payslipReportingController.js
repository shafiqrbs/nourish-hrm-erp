app.controller("payslipReportingController",
    function($rootScope, $scope, $http, $location, $timeout, PaySlipsReportingServices) {

    $scope.payslipListGrid = {
        paginationPageSizes: [25, 50, 75],
        paginationPageSize: 25,
        enableSorting: true,
        columnDefs: [
          { name: 'employeeBasicInfo.firstName', displayName:'Employee Name' },
          { name: 'salaryDate', displayName:'Salary Date'},
          { name: 'payslipTypeName', displayName:'Payslip Type Name' },
          { name: 'basicSalary', displayName:'Basic' },
          { name: 'totalSalary', displayName:'Total Salary' },
          { name: 'isPaid', displayName:'Is Paid' }
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
        PaySlipsReportingServices.getAllPaySlipsReporting().then(function(resp){
            $scope.payslipListGrid.data = resp.data;
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