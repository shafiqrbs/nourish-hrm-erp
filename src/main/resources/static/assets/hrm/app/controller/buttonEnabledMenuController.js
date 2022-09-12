app.controller("buttonEnabledMenuController",
    function($rootScope, $scope, $http, $location, $timeout) {

    //Leave Menu Initialization
    $scope.leaveView = true;
    $scope.leaveBalance = false;
    $scope.leaveHoliday = false;
    $scope.leaveSettings = false;

    //Attendance Menu Initialization
    $scope.AttendanceView = true;
    $scope.AttendanceTimeChangeReq = false;

    //Organization Menu Initialization
    $scope.employee = true;
    $scope.department = false;
    $scope.designation = false;
    $scope.role = false;
    $scope.employeeType = false;
    $scope.sourceOfMedia = false;

    $scope.menuEnabledDisabled = function(menuType,link){


        if(menuType == "leave manage")
        {
            if(link == "leave view")
            {
                $scope.leaveView = true;
                $scope.leaveBalance = false;
                $scope.leaveHoliday = false;
                $scope.leaveSettings = false;
            }
            else if(link == "leave balance")
            {
                $scope.leaveView = false;
                $scope.leaveBalance = true;
                $scope.leaveHoliday = false;
                $scope.leaveSettings = false;
            }
            else if(link == "holiday")
            {
                $scope.leaveView = false;
                $scope.leaveBalance = false;
                $scope.leaveHoliday = true;
                $scope.leaveSettings = false;
            }
            else if(link == "setting")
            {
                $scope.leaveView = false;
                $scope.leaveBalance = false;
                $scope.leaveHoliday = false;
                $scope.leaveSettings = true;
            }
        }
        else if(menuType == "attendance")
        {
            alert("called");
        }
        else if(menuType == "organization")
        {
            if(link == "employee")
            {
                $scope.employee = true;
                $scope.department = false;
                $scope.subdepartment = false;
                $scope.section = false;
                $scope.floor = false;
                $scope.line = false;
                $scope.designation = false;
                $scope.role = false;
                $scope.employeeType = false;
                $scope.sourceOfMedia = false;
            }
            else if(link == "department")
            {
                $scope.employee = false;
                $scope.department = true;
                $scope.subdepartment = false;
                $scope.section = false;
                $scope.floor = false;
                $scope.line = false;
                $scope.designation = false;
                $scope.role = false;
                $scope.employeeType = false;
                $scope.sourceOfMedia = false;
            }
            else if(link == "subdepartment")
            {
                $scope.employee = false;
                $scope.department = false;
                $scope.subdepartment = true;
                $scope.section = false;
                $scope.floor = false;
                $scope.line = false;
                $scope.designation = false;
                $scope.role = false;
                $scope.employeeType = false;
                $scope.sourceOfMedia = false;
            }
            else if(link == "section")
            {
                $scope.employee = false;
                $scope.department = false;
                $scope.subdepartment = false;
                $scope.section = true;
                $scope.floor = false;
                $scope.line = false;
                $scope.designation = false;
                $scope.role = false;
                $scope.employeeType = false;
                $scope.sourceOfMedia = false;
            }
            else if(link == "floor")
            {
                $scope.employee = false;
                $scope.department = false;
                $scope.subdepartment = false;
                $scope.section = false;
                $scope.floor = true;
                $scope.line = false;
                $scope.designation = false;
                $scope.role = false;
                $scope.employeeType = false;
                $scope.sourceOfMedia = false;
            }
            else if(link == "line")
            {
                $scope.employee = false;
                $scope.department = false;
                $scope.subdepartment = false;
                $scope.section = false;
                $scope.floor = false;
                $scope.line = true;
                $scope.designation = false;
                $scope.role = false;
                $scope.employeeType = false;
                $scope.sourceOfMedia = false;
            }
            else if(link == "designation")
            {
                $scope.employee = false;
                $scope.department = false;
                $scope.subdepartment = false;
                $scope.section = false;
                $scope.floor = false;
                $scope.line = false;
                $scope.designation = true;
                $scope.role = false;
                $scope.employeeType = false;
                $scope.sourceOfMedia = false;
            }
            else if(link == "role")
            {
                $scope.employee = false;
                $scope.department = false;
                $scope.subdepartment = false;
                $scope.section = false;
                $scope.floor = false;
                $scope.line = false;
                $scope.designation = false;
                $scope.role = true;
                $scope.employeeType = false;
                $scope.sourceOfMedia = false;
            }
            else if(link == "employee type")
            {
                $scope.employee = false;
                $scope.department = false;
                $scope.subdepartment = false;
                $scope.section = false;
                $scope.floor = false;
                $scope.line = false;
                $scope.designation = false;
                $scope.role = false;
                $scope.employeeType = true;
                $scope.sourceOfMedia = false;
            }
            else if(link == "source of media")
            {
                $scope.employee = false;
                $scope.department = false;
                $scope.subdepartment = false;
                $scope.section = false;
                $scope.floor = false;
                $scope.line = false;
                $scope.designation = false;
                $scope.role = false;
                $scope.employeeType = false;
                $scope.sourceOfMedia = true;
            }
        }
        else if(menuType == "payroll")
        {
            if(link == "dashboard")
            {
                $scope.PayrollDashboard = true;
                $scope.PayrollSalary = false;
                $scope.PayrollPayslips = false;
                $scope.PayrollStructure = false;
                $scope.PayrollHourlyWages = false;
                $scope.PayrollDeductions = false;
                $scope.PayrollBonuses = false;
                $scope.PayrollCommissions = false;
                $scope.PayrollAdjustments = false;
                $scope.PayrollReimbursements = false;
                $scope.PayrollOvertimes = false;
                $scope.PayrollProvidentFunds = false;
                $scope.PayrollAdvanceSalary = false;
                $scope.PayrollLoans = false;
                $scope.PayrollInsurance = false;
            }
            else if(link == "salary")
            {
                $scope.PayrollDashboard = false;
                $scope.PayrollSalary = true;
                $scope.PayrollPayslips = false;
                $scope.PayrollStructure = false;
                $scope.PayrollHourlyWages = false;
                $scope.PayrollDeductions = false;
                $scope.PayrollBonuses = false;
                $scope.PayrollCommissions = false;
                $scope.PayrollAdjustments = false;
                $scope.PayrollReimbursements = false;
                $scope.PayrollOvertimes = false;
                $scope.PayrollProvidentFunds = false;
                $scope.PayrollAdvanceSalary = false;
                $scope.PayrollLoans = false;
                $scope.PayrollInsurance = false;
            }
            else if(link == "payslips")
            {
                $scope.PayrollDashboard = false;
                $scope.PayrollSalary = false;
                $scope.PayrollPayslips = true;
                $scope.PayrollStructure = false;
                $scope.PayrollHourlyWages = false;
                $scope.PayrollDeductions = false;
                $scope.PayrollBonuses = false;
                $scope.PayrollCommissions = false;
                $scope.PayrollAdjustments = false;
                $scope.PayrollReimbursements = false;
                $scope.PayrollOvertimes = false;
                $scope.PayrollProvidentFunds = false;
                $scope.PayrollAdvanceSalary = false;
                $scope.PayrollLoans = false;
                $scope.PayrollInsurance = false;
            }
            else if(link == "settings")
            {
                $scope.PayrollDashboard = false;
                $scope.PayrollSalary = false;
                $scope.PayrollStructure = true;
                $scope.PayrollPayslips = false;
                $scope.PayrollHourlyWages = false;
                $scope.PayrollDeductions = false;
                $scope.PayrollBonuses = false;
                $scope.PayrollCommissions = false;
                $scope.PayrollAdjustments = false;
                $scope.PayrollReimbursements = false;
                $scope.PayrollOvertimes = false;
                $scope.PayrollProvidentFunds = false;
                $scope.PayrollAdvanceSalary = false;
                $scope.PayrollLoans = false;
                $scope.PayrollInsurance = false;
            }
            else if(link == "hourlywages")
            {
                $scope.PayrollDashboard = false;
                $scope.PayrollSalary = false;
                $scope.PayrollStructure = false;
                $scope.PayrollPayslips = false;
                $scope.PayrollHourlyWages = true;
                $scope.PayrollDeductions = false;
                $scope.PayrollBonuses = false;
                $scope.PayrollCommissions = false;
                $scope.PayrollAdjustments = false;
                $scope.PayrollReimbursements = false;
                $scope.PayrollOvertimes = false;
                $scope.PayrollProvidentFunds = false;
                $scope.PayrollAdvanceSalary = false;
                $scope.PayrollLoans = false;
                $scope.PayrollInsurance = false;
            }
            else if(link == "deductions")
            {
                $scope.PayrollDashboard = false;
                $scope.PayrollSalary = false;
                $scope.PayrollStructure = false;
                $scope.PayrollPayslips = false;
                $scope.PayrollHourlyWages = false;
                $scope.PayrollDeductions = true;
                $scope.PayrollBonuses = false;
                $scope.PayrollCommissions = false;
                $scope.PayrollAdjustments = false;
                $scope.PayrollReimbursements = false;
                $scope.PayrollOvertimes = false;
                $scope.PayrollProvidentFunds = false;
                $scope.PayrollAdvanceSalary = false;
                $scope.PayrollLoans = false;
                $scope.PayrollInsurance = false;
            }
            else if(link == "bonuses")
            {
                $scope.PayrollDashboard = false;
                $scope.PayrollSalary = false;
                $scope.PayrollStructure = false;
                $scope.PayrollPayslips = false;
                $scope.PayrollHourlyWages = false;
                $scope.PayrollDeductions = false;
                $scope.PayrollBonuses = true;
                $scope.PayrollCommissions = false;
                $scope.PayrollAdjustments = false;
                $scope.PayrollReimbursements = false;
                $scope.PayrollOvertimes = false;
                $scope.PayrollProvidentFunds = false;
                $scope.PayrollAdvanceSalary = false;
                $scope.PayrollLoans = false;
                $scope.PayrollInsurance = false;
            }
            else if(link == "commissions")
            {
                $scope.PayrollDashboard = false;
                $scope.PayrollSalary = false;
                $scope.PayrollStructure = false;
                $scope.PayrollPayslips = false;
                $scope.PayrollHourlyWages = false;
                $scope.PayrollDeductions = false;
                $scope.PayrollBonuses = false;
                $scope.PayrollCommissions = true;
                $scope.PayrollAdjustments = false;
                $scope.PayrollReimbursements = false;
                $scope.PayrollOvertimes = false;
                $scope.PayrollProvidentFunds = false;
                $scope.PayrollAdvanceSalary = false;
                $scope.PayrollLoans = false;
                $scope.PayrollInsurance = false;
            }
            else if(link == "adjustments")
            {
                $scope.PayrollDashboard = false;
                $scope.PayrollSalary = false;
                $scope.PayrollStructure = false;
                $scope.PayrollPayslips = false;
                $scope.PayrollHourlyWages = false;
                $scope.PayrollDeductions = false;
                $scope.PayrollBonuses = false;
                $scope.PayrollCommissions = false;
                $scope.PayrollAdjustments = true;
                $scope.PayrollReimbursements = false;
                $scope.PayrollOvertimes = false;
                $scope.PayrollProvidentFunds = false;
                $scope.PayrollAdvanceSalary = false;
                $scope.PayrollLoans = false;
                $scope.PayrollInsurance = false;
            }
            else if(link == "reimbursements")
            {
                $scope.PayrollDashboard = false;
                $scope.PayrollSalary = false;
                $scope.PayrollStructure = false;
                $scope.PayrollPayslips = false;
                $scope.PayrollHourlyWages = false;
                $scope.PayrollDeductions = false;
                $scope.PayrollBonuses = false;
                $scope.PayrollCommissions = false;
                $scope.PayrollAdjustments = false;
                $scope.PayrollReimbursements = true;
                $scope.PayrollOvertimes = false;
                $scope.PayrollProvidentFunds = false;
                $scope.PayrollAdvanceSalary = false;
                $scope.PayrollLoans = false;
                $scope.PayrollInsurance = false;
            }
            else if(link == "overtimes")
            {
                $scope.PayrollDashboard = false;
                $scope.PayrollSalary = false;
                $scope.PayrollStructure = false;
                $scope.PayrollPayslips = false;
                $scope.PayrollHourlyWages = false;
                $scope.PayrollDeductions = false;
                $scope.PayrollBonuses = false;
                $scope.PayrollCommissions = false;
                $scope.PayrollAdjustments = false;
                $scope.PayrollReimbursements = false;
                $scope.PayrollOvertimes = true;
                $scope.PayrollProvidentFunds = false;
                $scope.PayrollAdvanceSalary = false;
                $scope.PayrollLoans = false;
                $scope.PayrollInsurance = false;
            }
            else if(link == "providentfunds")
            {
                $scope.PayrollDashboard = false;
                $scope.PayrollSalary = false;
                $scope.PayrollStructure = false;
                $scope.PayrollPayslips = false;
                $scope.PayrollHourlyWages = false;
                $scope.PayrollDeductions = false;
                $scope.PayrollBonuses = false;
                $scope.PayrollCommissions = false;
                $scope.PayrollAdjustments = false;
                $scope.PayrollReimbursements = false;
                $scope.PayrollOvertimes = false;
                $scope.PayrollProvidentFunds = true;
                $scope.PayrollAdvanceSalary = false;
                $scope.PayrollLoans = false;
                $scope.PayrollInsurance = false;
            }
            else if(link == "advancesalary")
            {
                $scope.PayrollDashboard = false;
                $scope.PayrollSalary = false;
                $scope.PayrollStructure = false;
                $scope.PayrollPayslips = false;
                $scope.PayrollHourlyWages = false;
                $scope.PayrollDeductions = false;
                $scope.PayrollBonuses = false;
                $scope.PayrollCommissions = false;
                $scope.PayrollAdjustments = false;
                $scope.PayrollReimbursements = false;
                $scope.PayrollOvertimes = false;
                $scope.PayrollProvidentFunds = false;
                $scope.PayrollAdvanceSalary = true;
                $scope.PayrollLoans = false;
                $scope.PayrollInsurance = false;
            }
            else if(link == "loans")
            {
                $scope.PayrollDashboard = false;
                $scope.PayrollSalary = false;
                $scope.PayrollStructure = false;
                $scope.PayrollPayslips = false;
                $scope.PayrollHourlyWages = false;
                $scope.PayrollDeductions = false;
                $scope.PayrollBonuses = false;
                $scope.PayrollCommissions = false;
                $scope.PayrollAdjustments = false;
                $scope.PayrollReimbursements = false;
                $scope.PayrollOvertimes = false;
                $scope.PayrollProvidentFunds = false;
                $scope.PayrollAdvanceSalary = false;
                $scope.PayrollLoans = true;
                $scope.PayrollInsurance = false;
            }
            else if(link == "insurance")
            {
                $scope.PayrollDashboard = false;
                $scope.PayrollSalary = false;
                $scope.PayrollStructure = false;
                $scope.PayrollPayslips = false;
                $scope.PayrollHourlyWages = false;
                $scope.PayrollDeductions = false;
                $scope.PayrollBonuses = false;
                $scope.PayrollCommissions = false;
                $scope.PayrollAdjustments = false;
                $scope.PayrollReimbursements = false;
                $scope.PayrollOvertimes = false;
                $scope.PayrollProvidentFunds = false;
                $scope.PayrollAdvanceSalary = false;
                $scope.PayrollLoans = false;
                $scope.PayrollInsurance = true;
            }
        }
        else if(menuType == "reporting")
        {
            if(link == "dashboard")
            {
                $scope.ReportingDashboard = true;
                $scope.ReportingEmployee = false;
                $scope.ReportingAttendence = false;
                $scope.ReportingLeave = false;
                $scope.ReportingSalary = false;
                $scope.ReportingPayroll = false;
            }
             if(link == "employee")
            {
                $scope.ReportingDashboard = false;
                $scope.ReportingEmployee = true;
                $scope.ReportingAttendence = false;
                $scope.ReportingLeave = false;
                $scope.ReportingSalary = false;
                $scope.ReportingPayroll = false;
            }
            else if(link == "attendence")
            {

                $scope.ReportingDashboard = false;
                $scope.ReportingEmployee = false;
                $scope.ReportingAttendence = true;
                $scope.ReportingLeave = false;
                $scope.ReportingSalary = false;
                $scope.ReportingPayroll = false;
            }
             else if(link == "leave")
            {
                $scope.ReportingDashboard = false;
                $scope.ReportingEmployee = false;
                $scope.ReportingAttendence = false;
                $scope.ReportingLeave = true;
                $scope.ReportingSalary = false;
                $scope.ReportingPayroll = false;
            }
             else if(link == "salary")
            {
                $scope.ReportingDashboard = false;
                $scope.ReportingEmployee = false;
                $scope.ReportingAttendence = false;
                $scope.ReportingLeave = false;
                $scope.ReportingSalary = true;
                $scope.ReportingPayroll = false;
            }
             else if(link == "payroll")
            {
                $scope.ReportingDashboard = false;
                $scope.ReportingEmployee = false;
                $scope.ReportingAttendence = false;
                $scope.ReportingLeave = false;
                $scope.ReportingSalary = false;
                $scope.ReportingPayroll = true;
            }

        }
    }

});