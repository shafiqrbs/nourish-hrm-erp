app.controller("addEditPayslipController",
    function($rootScope, $scope, $http, $location, $timeout, SalaryPaySlipsServices, EmployeeService, SalaryItemServices, CommonServices, SalaryServices) {

   //Initialization
   $scope.employees = {};
   $scope.salary = {};
   $scope.salaryPaySlip = {};
   $scope.salaryPaySlip.isNeededApproval = '1';
   $scope.InvalidSubmit = false;

    function init(){
         EmployeeService.getAllUsersBasicInfo().then(function(resp){
            $scope.employees = resp.data;
            console.log(resp.data);
        });

         SalaryItemServices.getAllSalaryItem().then(function(resp){
            $scope.salaryItems = resp.data.content;
            console.log(resp.data.content);
        });

         CommonServices.getAllSalaryType().then(function(resp){
            $scope.salaryTypes = resp.data.content;
            console.log(resp.data.content);
        });

        CommonServices.getAllMonthlyPayslips().then(function(resp){
            $scope.monthlyPayslipsList = resp.data.content;
            console.log(resp.data.content);
        });
    }

    $scope.searchBy = [
        {id: '1', name: 'ID'},
        {id: '2', name: 'Name'},
        {id: '3', name: 'Department'},
        {id: '4', name: 'Designation'},
        {id: '5', name: 'Role'}
    ];

    init();

    $scope.getSalaryInfoByEmployeeId = function(employeeId){
        $scope.salary = {};
        SalaryServices.getSalaryByEmployeeId(employeeId).then(function(resp){
            $scope.salary = resp.data;
            $scope.salary.isPayslipNeededApproval = '1';
            console.log(JSON.stringify(resp.data));
        })

        $scope.salary.isPayslipNeededApproval = '1';

        init();
    }

    // Save Payslip
    $scope.saveForm = function(isValid,salary){
        if(isValid){
            $scope.salaryPaySlip.basicSalary = salary.salaryBasic;
            $scope.salaryPaySlip.salaryDate = salary.salaryDate;

            if(salary.isNeededApproval==0){
                $scope.salaryPaySlip.isNeededApproval=false;
            }
            else {
                $scope.salaryPaySlip.isNeededApproval=true;
            }

            $scope.salaryPaySlip.employeeBasicInfo = salary.employeeBasicInfo;
            $scope.salaryPaySlip.description = salary.description;
            $scope.salaryPaySlip.additionalNotes = salary.additionalNotes;

            if(salary.isNeededApproval==0){
                $scope.salaryPaySlip.isNeededApproval = false;
            }
            else {
                $scope.salaryPaySlip.isNeededApproval = true;
            }

            $scope.salaryPaySlip.monthlyPayslipSettings = salary.monthlyPayslipSettings;

            $scope.salaryPaySlip.salaryPaySlipDetails = [];
             var orderNum = 1;
             var netAmount = 0;
             angular.forEach($scope.salary.salaryOtherDetails,function(v){
                orderNum++;
                if(v.salaryItemType == 'PCT')
                {
                    netAmount = (salary.salaryBasic * v.amount) / 100
                }
                else
                {
                    netAmount = v.amount;
                }

                $scope.salaryPaySlip.salaryPaySlipDetails.push({
                  "amountType": 'Addition',
                  "id": 0,
                  "itemType": v.salaryItemType,
                  "netAmount": netAmount,
                  "orderNumber": orderNum,
                  "pctAmount": v.amount,
                  "salaryItem": v.salaryItem.salaryItemName
                })
            });

            console.log($scope.salaryPaySlip);

            SalaryPaySlipsServices.saveSalaryPaySlip($scope.salaryPaySlip).then(function(resp){
                //console.log(resp);
                window.location.href = "/#!/payroll/salary/payslips";
            })
        }
        else{
            $scope.InvalidSubmit = true;
        }
    }


    $scope.exitForm = function(){
        window.location.href = "/#!/payroll/salary/payslips";
    }

    // Add Row for Salary Breakdown
        var salaryItemIndex = -1;
        $scope.addBtnSalaryItemText = "(+) Add";
        $scope.tempSalaryOtherDetailsData = {};
        $scope.salary.salaryOtherDetails = [];
        $scope.AddSalaryItem = function(tempSalaryOtherDetailsData){
            console.log(tempSalaryOtherDetailsData);
            //alert(salaryItemIndex);
            if(salaryItemIndex == -1)
            {
                $scope.salary.salaryOtherDetails.push({
                    salaryItem: tempSalaryOtherDetailsData.salaryItem,
                    salaryItemType: tempSalaryOtherDetailsData.itemType,
                    amount: tempSalaryOtherDetailsData.amount,
                    isDefault: false
                });
            }
            else
            {
                $scope.salary.salaryOtherDetails[salaryItemIndex] = {
                    salaryItem: tempSalaryOtherDetailsData.salaryItem,
                    salaryItemType: tempSalaryOtherDetailsData.itemType,
                    amount: tempSalaryOtherDetailsData.amount,
                    isDefault: false
                };

                var newDataList = [];
                angular.forEach($scope.salary.salaryOtherDetails,function(v){
                    newDataList.push(v);
                });

                $scope.salary.salaryOtherDetails=newDataList;

                console.log(JSON.stringify($scope.salary.salaryOtherDetails));

                salaryItemIndex = -1;
            }

            $scope.tempSalaryOtherDetailsData.salaryItem = {};
            $scope.tempSalaryOtherDetailsData.itemType = "";
            $scope.tempSalaryOtherDetailsData.amount = "";

            $scope.addBtnSalaryItemText = "(+) Add";

            //console.log(JSON.stringify($scope.tempEducationData));
        }

        $scope.deleteSalaryOtherDetail = function(index){
            delete $scope.salary.salaryOtherDetails[index];
            var newDataList = [];
            angular.forEach($scope.salary.salaryOtherDetails,function(v){
                newDataList.push(v);
            });

           $scope.salary.salaryOtherDetails=newDataList;
        }

        $scope.editSalaryOtherDetail = function(index){
            $scope.tempSalaryOtherDetailsData.salaryItem = $scope.salary.salaryOtherDetails[index].salaryItem;
            $scope.tempSalaryOtherDetailsData.itemType = $scope.salary.salaryOtherDetails[index].salaryItemType;
            $scope.tempSalaryOtherDetailsData.amount = $scope.salary.salaryOtherDetails[index].amount;

            $scope.addBtnSalaryItemText = "Update";
            salaryItemIndex = index;

            console.log(JSON.stringify($scope.tempSalaryOtherDetailsData));
        }
});