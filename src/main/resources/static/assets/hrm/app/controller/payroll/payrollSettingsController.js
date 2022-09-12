app.controller("payrollSettingsController",
    function($rootScope, $scope, $uibModal, $http, $location, $timeout, $filter, PayrollSettingServices, SalaryItemServices, TaxRuleServices) {

    $scope.isEnabledPerDaySalarySpecificNumberInput = false;
    $scope.payrollStructure = {};
    function getPayrollStructureData(){
        PayrollSettingServices.getPayrollStructure().then(function(resp){
            $scope.payrollStructure = resp.data;
            if(resp.data.autoApproved == true){
                $scope.payrollStructure.autoApproved = "Yes";
            }
            else{
                $scope.payrollStructure.autoApproved = "No";
            }

            if(resp.data.autoPayslipsEmail == true){
                $scope.payrollStructure.autoPayslipsEmail = "Yes";
            }
            else{
                $scope.payrollStructure.autoPayslipsEmail = "No";
            }

            if(resp.data.perDaySalaryAdjustment == "Divide with specific number of day"){
                $scope.isEnabledPerDaySalarySpecificNumberInput = true;
            }
        });
    }

    $scope.KsTxt1Selected = "ks-text-selected";

    // New Employee form Action

    $scope.PayrollStructure = true;
    $scope.selectedTab = "PayrollStructure";
    $scope.openPayrollSettingsForm = function(pageName){
        var pages = ['PayrollStructure','PayslipOption','PayslipItems','TaxRules','AutoDeductions','AutoOvertime'];

        $scope.selectedTab = pageName;

        $scope.PayrollStructure = false;
        $scope.PayrollOption = false;
        $scope.PayslipItems = false;
        $scope.TaxRules = false;
        $scope.AutoDeductions = false;
        $scope.AutoOvertime = false;

        //alert(pages[0]);
        if(pages[0] == pageName){
            $scope.PayrollStructure = true;
        }
        else if(pages[1] == pageName){
            $scope.PayrollOption = true;
        }
        else if(pages[2] == pageName){
            $scope.PayslipItems = true;
        }
        else if(pages[3] == pageName){
            $scope.TaxRules = true;
        }
        else if(pages[4] == pageName){
            $scope.AutoDeductions = true;
        }
        else if(pages[5] == pageName){
            $scope.AutoOvertime = true;
        }
    }

    $scope.PerDaySalaryAdjustmentSpecificNumber = function(value){
        if(value == "Divide with specific number of day"){
            $scope.isEnabledPerDaySalarySpecificNumberInput = true;
        }
        else{
            $scope.isEnabledPerDaySalarySpecificNumberInput = false;
        }
    }

    $scope.savePayrollStructureForm = function(isValid,payrollStructure){
        if(isValid){
            if(payrollStructure.autoApproved == "Yes"){
                payrollStructure.autoApproved = true;
            }
            else{
                payrollStructure.autoApproved = false;
            }

            if(payrollStructure.autoPayslipsEmail == "Yes"){
                payrollStructure.autoPayslipsEmail = true;
            }
            else{
                payrollStructure.autoPayslipsEmail = false;
            }

            PayrollSettingServices.savePayrollStructure(payrollStructure).then(function(resp){
                swal("System says!", "Payroll structure saved.", "success")
                getPayrollStructureData();
            });
        }
    }

    $scope.payrollTypes = [
        {id: '1', name: 'Standard'},
        {id: '2', name: 'Bank'},
        {id: '3', name: 'Cash'},
        {id: '4', name: 'Check'}
    ];

    $scope.paySchedules = [
        {id: '1', name: 'Daily'},
        {id: '2', name: 'Weekly'},
        {id: '3', name: 'Monthly'},
        {id: '4', name: 'Twice a Month'}
    ];

    $scope.currencies = [
        {id: '1', name: 'Bangladesh'},
        {id: '2', name: 'India'},
        {id: '3', name: 'USA'},
        {id: '4', name: 'UK'}
    ];

    $scope.payrollApproved = [
        {id: '1', name: 'Yes'},
        {id: '2', name: 'No'}
    ];

    $scope.autoEmailPayslips = [
        {id: '1', name: 'Yes'},
        {id: '2', name: 'No'}
    ];

    $scope.perDaySalaryAdjustment = [
        {id: '1', name: 'Divide with number of days in the salary month'},
        {id: '2', name: 'Divide with specific number of day'}
    ];

    $scope.perDaySalaryCalculationMethod = [
        {id: '1', name: 'Method: 1 Annual gross salary / 365'},
        {id: '2', name: 'Method: 2 Annual gross salary / 260'},
        {id: '3', name: 'Method: 3 number of salary of the month '}
    ];

    $scope.proRataSalaryCalculationMethod = [
        {id: '1', name: 'Method: 1 Annual gross salary / 365 '},
        {id: '2', name: 'Method: 2 Annual gross salary / 260 '},
        {id: '3', name: 'Method: 3 number of salary of the month '}
    ];

    function getPayslipOptionData(){
        PayrollSettingServices.getPayslipOption().then(function(resp){
            $scope.payslipOption = resp.data;
            if(resp.data.isAddSignatureAreaBottom == true){
                $scope.payslipOption.isAddSignatureAreaBottom = "Yes";
            }
            else{
                $scope.payslipOption.isAddSignatureAreaBottom = "No";
            }

            if(resp.data.isShowDateRange == true){
                $scope.payslipOption.isShowDateRange = "Yes";
            }
            else{
                $scope.payslipOption.isShowDateRange = "No";
            }

        });
    }

    $scope.savePayslipOptionForm = function(isValid,payslipOption){
        if(isValid){
            if(payslipOption.isAddSignatureAreaBottom == "Yes"){
                payslipOption.isAddSignatureAreaBottom = true;
            }
            else{
                payslipOption.isAddSignatureAreaBottom = false;
            }

            if(payslipOption.isShowDateRange == "Yes"){
                payslipOption.isShowDateRange = true;
            }
            else{
                payslipOption.isShowDateRange = false;
            }

            PayrollSettingServices.savePayslipOption(payslipOption).then(function(resp){
                swal("System says!", "Payroll Option saved.", "success");
                getPayslipOptionData();
            });
        }
    }

    $scope.payslipTitles = [
        {id: '1', name: 'Bangladesh'},
        {id: '2', name: 'India'},
        {id: '3', name: 'USA'},
        {id: '4', name: 'UK'}
    ];

    $scope.payslipFormats = [
        {id: '1', name: 'Country Specific Payslip (Bangladesh)'},
        {id: '2', name: 'Country Specific Payslip (USA)'}
    ];

    $scope.changePayslipsStatus = [
        {id: '1', name: 'Admin'},
        {id: '2', name: 'System Administrator'}
    ];

    $scope.isAddSignatureAreaBottoms = [
        {id: '1', name: 'Yes'},
        {id: '2', name: 'No'}
    ];

    $scope.isShowDateRanges = [
        {id: '1', name: 'Yes'},
        {id: '2', name: 'No'}
    ];

    //Payslip Items
    function getAllSalaryItemsData(){
      SalaryItemServices.getAllSalaryItem().then(function(resp){
          $scope.salaryItems = resp.data.content;
      });
    }

    $scope.allowances={};
    $scope.paySlipItemsSaveForm = function(allowances){
        if(allowances.salaryItemName == "" || allowances.salaryItemName == null){
            alert("Allowance title is a mandatory field!");
        }
        else{
            allowances.isActive = true;
            allowances.isDefault = false;
            allowances.isExtraItem = false;

            if(allowances.isItemTaxAble == "Yes"){
                allowances.isItemTaxAble = true;
            }
            else{
                allowances.isItemTaxAble = true;
            }

            SalaryItemServices.saveSalaryItem(allowances).then(function(resp){
                swal("System says!", "Payslip item saved.", "success");
                $scope.allowances={};
                getAllSalaryItemsData();
            });
        }
    };

    $scope.editPayslipItem = function(id){
         SalaryItemServices.getSalaryItemById(id).then(function(resp){
            $scope.allowances = resp.data;

            if(resp.data.isItemTaxAble == true){
                $scope.allowances.isItemTaxAble = "Yes";
            }
            else{
                $scope.allowances.isItemTaxAble = "No";
            }
        });
    };

    $scope.deletePayslipItem = function(id){
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
                getAllSalaryItemsData();
           })
       });
    }

    //Tax Rules
    function getAllTaxRulesData(){
      TaxRuleServices.getAllTaxRules().then(function(resp){
          $scope.taxRules = resp.data.content;
      });
    }

    $scope.taxRulesData={};
    $scope.TaxRuleSaveForm = function(taxRulesData){
        TaxRuleServices.saveTaxRule(taxRulesData).then(function(resp){
            swal("System says!", "Tax Rule saved.", "success");
            $scope.taxRulesData={};
            getAllTaxRulesData();
        });
    };

    $scope.editTaxRule = function(id){
         TaxRuleServices.getTaxRuleById(id).then(function(resp){
            $scope.taxRulesData = resp.data;
        });
    };

    $scope.deleteTaxRule = function(id){
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
           TaxRuleServices.deleteTaxRuleById(id).then(function(resp){
                getAllTaxRulesData();
           })
       });
    }

    function init(){
        getPayrollStructureData();
        getPayslipOptionData();
        getAllSalaryItemsData();
        getAllTaxRulesData();
    }

    init();

});