<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html ng-app="cloudErpApp">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>CloudHRM</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

    <#--Theme Dependency File-->
    <!-- Bootstrap-->
    <link href="/theme/default/lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!--Common Plugins CSS -->
    <link href="/theme/default/css/plugins/plugins.css" rel="stylesheet" type="text/css">
    <!--fonts-->

    <link href="/theme/default/lib/tempusdominus-datetime-picker/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" type="text/css">
    <link href="/theme/default/lib/line-icons/line-icons.css" rel="stylesheet" type="text/css">
    <link href="/theme/default/lib/font-awesome/css/fontawesome-all.min.css" rel="stylesheet" type="text/css">
    <link href="/theme/default/lib/chartist/chartist.min.css" rel="stylesheet" type="text/css">
    <link href="/theme/default/css/chartist-custom.css" rel="stylesheet" type="text/css">
    <!-- jvectormap -->
    <link href="/theme/default/lib/vector-map/jquery-jvectormap-2.0.2.css" rel="stylesheet" type="text/css">
    <link href="/theme/default/css/picker-custom.css" rel="stylesheet" type="text/css">
    <link href="/theme/default/css/style.css" rel="stylesheet" type="text/css">
    <#--End Theme Dependency File-->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

    <!--
        <link rel="stylesheet" href="/libs/kendo/css/kendo.common-material.min.css" />
        <link rel="stylesheet" href="/libs/kendo/css/kendo.material.min.css" />
        <link rel="stylesheet" href="/libs/kendo/css/kendo.material.mobile.min.css" />
         -->
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2018.1.221/styles/kendo.common-material.min.css"/>
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2018.1.221/styles/kendo.material.min.css"/>
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2018.1.221/styles/kendo.material.mobile.min.css"/>

    <!-- Angularjs flash message -->
    <link rel="stylesheet" href="/libs/angular/css/angular-flash.css" type="text/css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="/assets/global/css/custom.css">

</head>

<body>
<div class="page-wrapper" id="page-wrapper">
        <#include "mainSidebar.ftl" />
    <main class="content">
            <#include "mainHeader.ftl"/>
            <#--<#include "subHeader.ftl" />-->
        <div class="page-content">
            <div class="container-fluid">
                <div class="content-wrapper" ui-view></div>
            </div>
        </div>
        <!-- Main Footer -->
            <#include "mainFooter.ftl" />
    </main><!-- page content end-->
</div><!-- app's main wrapper end -->
<div flash-message="5000"></div>

<!-- REQUIRED JS SCRIPTS -->

<!-- Common plugins -->
<script type="text/javascript" src="/theme/default/js/plugins/plugins.js"></script>
<script type="text/javascript" src="/theme/default/js/appUi-custom.js"></script>



<script type="text/javascript" src="/theme/default/lib/chartjs/dist/chart.min.js"></script>
<script src="/theme/default/lib/vector-map/jquery-jvectormap-2.0.2.min.js"></script>
<script src="/theme/default/lib/vector-map/jquery-jvectormap-world-mill-en.js"></script>



<#--Page or Functionality dependency file-->
<#--<script type="text/javascript" src="/theme/default/lib/fullcalendar/moment.js"></script>-->
<script type="text/javascript" src="/theme/default/lib/tempusdominus-datetime-picker/js/moment.min.js"></script>
<script type="text/javascript" src="/theme/default/lib/tempusdominus-datetime-picker/js/tempusdominus-bootstrap-4.min.js"></script>
<script type="text/javascript" src="/theme/default/js/scripts.js"></script>
<#--<#include "allmodal.ftl" />-->


<#--End theme dependency file-->

<#--Start core files need for all-->
<!-- include angularjs lib -->
<script src="/libs/angular/angular.min.js"></script>
<script src="/libs/angular/angular-ui-router.min.js"></script>
<script src="/libs/angular/angular-animate.js"></script>
<script src="/libs/angular/angular-touch.js"></script>
<script src="/libs/angular/angular-ui-bootstrap/ui-bootstrap-tpls.min.js"></script>
<script src="/libs/angular/angular-flash.js"></script>

<!-- include Kendo lib -->
<script src="/libs/kendo/kendo.all.min.js"></script>

<!-- angularjs custom -->
<script src="/assets/hrm/app/app.js"></script>
<script src="/assets/hrm/app/route/app.route.js"></script>

<!-- Load angular js controllers, services and directives-->

<script src="/assets/hrm/app/services/DateServices.js"></script>

<script src="/assets/hrm/app/controller/account/logoutController.js"></script>

<#-- Employee controllers and Services -->
<script src="/assets/hrm/app/controller/employee/employeeController.js"></script>
<script src="/assets/hrm/app/controller/employee/employeeOthersController.js"></script>
<script src="/assets/hrm/app/controller/employee/EmployeeGridManageController.js"></script>
<script src="/assets/hrm/app/controller/employee/personalManageController.js"></script>
<script src="/assets/hrm/app/controller/employee/skillManageController.js"></script>
<script src="/assets/hrm/app/controller/employee/promotionManageController.js"></script>
<script src="/assets/hrm/app/controller/employee/disciplinaryActionManageController.js"></script>
<script src="/assets/hrm/app/controller/employee/separationManageController.js"></script>
<script src="/assets/hrm/app/controller/employee/transferManageController.js"></script>
<script src="/assets/hrm/app/controller/employee/employeeRuleTagController.js"></script>

<script src="/assets/hrm/app/services/UploadService.js"></script>
<script src="/assets/hrm/app/services/EmployeeService.js"></script>
<script src="/assets/hrm/app/services/EmployeeInfoService.js"></script>
<script src="/assets/hrm/app/services/SkillServices.js"></script>
<script src="/assets/hrm/app/services/PromotionServices.js"></script>
<script src="/assets/hrm/app/services/DisciplinaryActionServices.js"></script>
<script src="/assets/hrm/app/services/SeparationServices.js"></script>
<script src="/assets/hrm/app/services/TransferServices.js"></script>
<#-- Employee controllers and Services -->

<#-- Recruitment controllers and Services -->
<script src="/assets/hrm/app/controller/recruitment/recruitmentManageController.js"></script>
<script src="/assets/hrm/app/services/RecruitmentServices.js"></script>
<#-- Recruitment controllers and Services -->

<#--Shift Controllers and Services-->
<script src="/assets/hrm/app/controller/shift/ShiftPlanController.js"></script>
<script src="/assets/hrm/app/services/shift/ShiftPlanServices.js"></script>
<script src="/assets/hrm/app/controller/shift/ShiftRuleController.js"></script>
<script src="/assets/hrm/app/services/shift/ShiftRuleServices.js"></script>
<script src="/assets/hrm/app/controller/shift/CompanyWorkOfCalendarController.js"></script>
<script src="/assets/hrm/app/services/shift/WorkOffCalendarService.js"></script>
<script src="/assets/hrm/app/controller/shift/ShiftRosteringProcessController.js"></script>
<script src="/assets/hrm/app/services/shift/ShiftRosteringProcessServices.js"></script>
<script src="/assets/hrm/app/controller/shift/ManualShiftAssignmentController.js"></script>
<script src="/assets/hrm/app/services/shift/ManualShiftAssignmentServices.js"></script>

<#-- End Shift Controllers and Services-->

<#-- Payment Controllers and Services-->
<script src="/assets/hrm/app/controller/payment/SalaryHeadController.js"></script>
<script src="/assets/hrm/app/services/SalaryHeadServices.js"></script>
<script src="/assets/hrm/app/controller/payment/SalaryRulesController.js"></script>
<script src="/assets/hrm/app/services/SalaryRulesServices.js"></script>
<script src="/assets/hrm/app/controller/payment/EmployeeSalaryInfoController.js"></script>
<script src="/assets/hrm/app/services/EmployeeSalaryInfoServices.js"></script>
<script src="/assets/hrm/app/controller/payment/EmployeeSalaryProcessController.js"></script>
<script src="/assets/hrm/app/services/EmployeeSalaryProcessServices.js"></script>
<#-- Payment Controllers and Services-->

<#-- Leave Controllers and Services-->
<script src="/assets/hrm/app/controller/leaveManage/leaveYearManageController.js"></script>
<script src="/assets/hrm/app/services/LeaveYearServices.js"></script>
<script src="/assets/hrm/app/controller/leaveManage/leaveRuleManageController.js"></script>
<script src="/assets/hrm/app/services/LeaveRuleServices.js"></script>
<script src="/assets/hrm/app/controller/leaveManage/leaveTransactionInfoManageController.js"></script>
<script src="/assets/hrm/app/services/LeaveTransactionInfoServices.js"></script>
<script src="/assets/hrm/app/services/LeavePolicyInfoServices.js"></script>
<script src="/assets/hrm/app/controller/leaveManage/leavePolicyInfoManageController.js"></script>
<script src="/assets/hrm/app/services/MaternityLeaveTransactionServices.js"></script>
<script src="/assets/hrm/app/controller/leaveManage/maternityLeaveTransactionManageController.js"></script>
<script src="/assets/hrm/app/services/LeaveAllocationInfoServices.js"></script>
<script src="/assets/hrm/app/controller/leaveManage/leaveAllocationInfoManageController.js"></script>
<script src="/assets/hrm/app/services/MaternityLeaveRuleDefinitionServices.js"></script>
<script src="/assets/hrm/app/controller/leaveManage/maternityLeaveRuleDefinitionManageController.js"></script>

<script src="/assets/hrm/app/services/LeaveEndYearProcessServices.js"></script>
<script src="/assets/hrm/app/controller/leaveManage/leaveEndYearProcessController.js"></script>

<#-- Leave Controllers and Services-->

<#-- Bonus Controllers and Services-->
<script src="/assets/hrm/app/controller/bonusManagement/bonusRulesController.js"></script>
<script src="/assets/hrm/app/services/BonusRuleServices.js"></script>
<#-- Bonus Controllers and Services-->

<#-- Attendance Controllers and Services -->
<script type="text/javascript" src="/assets/hrm/app/controller/attendance/PunchMachineController.js"></script>
<script type="text/javascript" src="/assets/hrm/app/controller/attendance/AttendanceUploadController.js"></script>
<script type="text/javascript" src="/assets/hrm/app/controller/attendance/attendanceHistoryController.js"></script>

<script type="text/javascript" src="/assets/hrm/app/controller/attendance/attendanceEntryController.js"></script>
<script src="/assets/hrm/app/services/AttendanceServices.js"></script>
<#-- Attendance Controllers and Services -->

<script src="/assets/hrm/app/controller/workShiftManage/workShiftManageController.js"></script>
<script src="/assets/hrm/app/controller/payroll/paymentManageController.js"></script>
<script src="/assets/hrm/app/controller/overtimeManage/overtimeManageController.js"></script>
<script src="/assets/hrm/app/controller/bonusManagement/bonusManageController.js"></script>
<script src="/assets/hrm/app/controller/signIn/signInController.js"></script>

<script src="/assets/hrm/app/controller/configuration/ConfigurationController.js"></script>

<script src="/assets/hrm/app/controller/configuration/CompanySettingController.js"></script>
<script src="/assets/hrm/app/services/CompanySettingsService.js"></script>

<script src="/assets/hrm/app/controller/configuration/BuildingController.js"></script>
<script src="/assets/hrm/app/services/BuildingService.js"></script>

<script src="/assets/hrm/app/controller/configuration/FloorController.js"></script>
<script src="/assets/hrm/app/services/FloorService.js"></script>

<script src="/assets/hrm/app/controller/configuration/GroupsController.js"></script>
<script src="/assets/hrm/app/services/GroupsService.js"></script>

<script src="/assets/hrm/app/controller/configuration/SubGroupController.js"></script>
<script src="/assets/hrm/app/services/SubGroupService.js"></script>

<script src="/assets/hrm/app/controller/configuration/LineController.js"></script>
<script src="/assets/hrm/app/services/LineService.js"></script>

<script src="/assets/hrm/app/controller/configuration/SectionController.js"></script>
<#--<script src="/assets/hrm/app/services/SectionService.js"></script>-->

<script src="/assets/hrm/app/controller/configuration/SubSectionController.js"></script>
<#--<script src="/assets/hrm/app/services/SubSectionService.js"></script>-->

<script src="/assets/hrm/app/services/DepartmentServices.js"></script>
<script src="/assets/hrm/app/services/UnitServices.js"></script>
<script src="/assets/hrm/app/services/DesignationServices.js"></script>
<script src="/assets/hrm/app/services/SectionServices.js"></script>
<script src="/assets/hrm/app/services/SubSectionServices.js"></script>


<script src="/assets/hrm/app/services/CountryServices.js"></script>
<script src="/assets/hrm/app/services/NationalityServices.js"></script>
<script src="/assets/hrm/app/controller/configuration/systemVariable/CountryController.js"></script>

<script src="/assets/hrm/app/controller/configuration/systemVariable/DivisionController.js"></script>
<script src="/assets/hrm/app/services/DivisionServices.js"></script>

<script src="/assets/hrm/app/controller/configuration/systemVariable/CityController.js"></script>
<script src="/assets/hrm/app/controller/configuration/systemVariable/BankController.js"></script>
<script src="/assets/hrm/app/controller/configuration/systemVariable/InsuranceController.js"></script>

<script src="/assets/hrm/app/controller/configuration/systemVariable/StaffCategoryController.js"></script>
<script src="/assets/hrm/app/services/StaffCategoryServices.js"></script>

<script src="/assets/hrm/app/controller/configuration/systemVariable/DepartmentController.js"></script>

<script src="/assets/hrm/app/controller/configuration/systemVariable/JobLocationController.js"></script>
<script src="/assets/hrm/app/services/JobLocationServices.js"></script>

<script src="/assets/hrm/app/controller/configuration/systemVariable/DesignationController.js"></script>
<script src="/assets/hrm/app/controller/configuration/systemVariable/EmploymentController.js"></script>
<#--<script src="/assets/hrm/app/controller/configuration/systemVariable/DistrictController.js"></script>-->
<script src="/assets/hrm/app/controller/configuration/systemVariable/NationalityController.js"></script>
<script src="/assets/hrm/app/controller/configuration/systemVariable/UnitController.js"></script>

<script src="/assets/hrm/app/controller/configuration/systemVariable/SkillCategoryController.js"></script>
<script src="/assets/hrm/app/services/SkillCategoryServices.js"></script>

<script src="/assets/hrm/app/controller/configuration/systemVariable/GovernmentDesignationController.js"></script>
<script src="/assets/hrm/app/controller/configuration/systemVariable/SkillSetController.js"></script>
<script src="/assets/hrm/app/controller/configuration/systemVariable/DOSController.js"></script>

<script src="/assets/hrm/app/controller/configuration/systemVariable/PositionController.js"></script>
<script src="/assets/hrm/app/services/PositionServices.js"></script>

<script src="/assets/hrm/app/controller/configuration/systemVariable/CostCenterController.js"></script>
<script src="/assets/hrm/app/controller/configuration/systemVariable/BranchController.js"></script>
<script src="/assets/hrm/app/controller/configuration/systemVariable/SkillTypeController.js"></script>
<script src="/assets/hrm/app/controller/configuration/systemVariable/PromotionTypeController.js"></script>

<script src="/assets/hrm/app/services/CountryServices.js"></script>
<script src="/assets/hrm/app/services/CityServices.js"></script>

<script src="/assets/hrm/app/services/FileServices.js"></script>
<script src="/assets/hrm/app/services/PrintServices.js"></script>

<script src="/assets/hrm/app/services/BankInfoServices.js"></script>

<script src="/assets/hrm/app/services/TokenService.js"></script>
<script src="/assets/hrm/app/services/BaseApiUrlService.js"></script>
<script src="/assets/hrm/app/directives/ngEnter.js"></script>
<script src="/assets/hrm/app/directives/ngFiles.js"></script>
<#--<script src="/assets/hrm/app/directives/ngEnter.SubSectionService.js"></script>-->

</body>
</html>