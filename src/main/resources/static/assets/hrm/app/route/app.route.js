'use strict';

app.config(function($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise('/');
    //cfpLoadingBarProvider.latencyThreshold = 100;


    $stateProvider
        .state('dashboard', {
            url: '/',
            templateUrl: '/dashboard'
        })

        .state('configuration', {
            url: '/configurations/:part1/:part2',
            templateUrl: function(urlAttr){
                return "configurations/"+urlAttr.part1+"/"+urlAttr.part2;
            }
        })

        .state('recruitDemoApplication', {
            url: '/recruitment',
            templateUrl: function(urlAttr){
                return "/recruitment";
            }
        })

        .state('recruitDemoApplication.demoApplication', {
            url: '/demo/application',
            templateUrl: function(urlAttr){
                return "recruitment/demo/application";
            }
        })

        .state('recruitApplication', {
            url: '/recruitment',
            templateUrl: function(urlAttr){
                return "/recruitment";
            }
        })

        .state('recruitApplication.application', {
            url: '/application',
            templateUrl: function(urlAttr){
                return "recruitment/application";
            }
        })

        .state('recruitApplication.application.form', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "recruitment/"+urlAttr.part1;
            }
        })

        .state('recruitIC', {
            url: '/recruitment',
            templateUrl: function(urlAttr){
                return  "/recruitment";
            }
        })

        .state('recruitIC.interviewCard', {
            url: '/interviewCard',
            templateUrl: function(urlAttr){
                return "recruitment/interviewCard";
            }
        })

        .state('recruitApp', {
            url: '/recruitment',
            templateUrl: function(urlAttr){
                return  "/recruitment";
            }
        })

        .state('recruitApp.application', {
            url: '/application',
            templateUrl: function(urlAttr){
                return "recruitment/application";
            }
        })

        .state('recruitIE', {
            url: '/recruitment',
            templateUrl: function(urlAttr){
                return  "/recruitment";
            }
        })

        .state('recruitIE.ieDepartment', {
            url: '/ieDepartment',
            templateUrl: function(urlAttr){
                return "recruitment/ieDepartment";
            }
        })

        .state('recruitDD', {
            url: '/recruitment',
            templateUrl: function(urlAttr){
                return  "/recruitment";
            }
        })

        .state('recruitDD.doctorDepartment', {
            url: '/doctorDepartment/:part1',
            templateUrl: function(urlAttr){
                return "recruitment/doctorDepartment/"+urlAttr.part1;
            }
        })

        .state('recruitHD', {
            url: '/recruitment',
            templateUrl: function(urlAttr){
                return  "/recruitment";
            }
        })

        .state('recruitHD.hrDepartment', {
            url: '/hrDepartment/:part1',
            templateUrl: function(urlAttr){
                return "recruitment/hrDepartment/"+urlAttr.part1;
            }
        })

        .state('employees', {
            url: '/employees/employee',
            templateUrl: function(urlAttr){
                return  "/employees/employee/";
            }
        })

        .state('employees.employee', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "employees/"+urlAttr.part1;
            }
        })

        .state('employeeListing', {
            url: '/employees/listing',
            templateUrl: function(urlAttr){
                return  "/employees/listing";
            }
        })

        .state('employeeOthers', {
            url: '/employeeOthers/:part1',
            templateUrl: function(urlAttr){
                return "employeeOthers/"+urlAttr.part1;
            }
        })

        .state('incrementInfoBulk', {
            url: '/employeeOthers/incrementInfo',
            templateUrl: function(urlAttr){
                return "employeeOthers/incrementInfo";
            }
        })

        .state('incrementInfoBulk.manageIncrementInfoBulk', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "employeeOthers/"+urlAttr.part1;
            }
        })

        .state('userAuthentication', {
            url: '/userAuthentication/manage/:part1',
            templateUrl: function(urlAttr){
                return "userAuthentication/manage/"+urlAttr.part1;
            }
        })

        .state('leaveManage', {
            url: '/leave/manage/:part1',
            templateUrl: function(urlAttr){
                return "leave/manage/"+urlAttr.part1;
            }
        })

        .state('leaveEncashmentProcessManage', {
            url: '/leave/manage/leaveEncashmentProcess',
            templateUrl: function(urlAttr){
                return "leave/manage/leaveEncashmentProcess";
            }
        })

        .state('leaveEncashmentProcessManage.leaveEncashmentProcess', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "leave/manage/"+urlAttr.part1;
            }
        })

        .state('leaveTransactionManage', {
            url: '/leave/manage/leaveTransaction',
            templateUrl: function(urlAttr){
                return "leave/manage/leaveTransaction";
            }
        })

        .state('leaveTransactionManage.leaveTransaction', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "leave/manage/"+urlAttr.part1;
            }
        })

        .state('leaveTransactionNewManage', {
            url: '/leave/manage/leaveTransactionNew',
            templateUrl: function(urlAttr){
                return "leave/manage/leaveTransactionNew";
            }
        })

        .state('leaveTransactionNewManage.leaveTransactionNew', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "leave/manage/"+urlAttr.part1;
            }
        })

        .state('leavePolicyDefinitionManage', {
            url: '/leave/manage/leavePolicyDefinition',
            templateUrl: function(urlAttr){
                return "leave/manage/leavePolicyDefinition";
            }
        })

        .state('leavePolicyDefinitionManage.leavePolicyDefinition', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "leave/manage/"+urlAttr.part1;
            }
        })

        .state('leaveYearEndProcessManage', {
            url: '/leave/manage/leaveYearEndProcess',
            templateUrl: function(urlAttr){
                return "leave/manage/leaveYearEndProcess";
            }
        })

        .state('leaveYearEndProcessManage.leaveYearEndProcess', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "leave/manage/"+urlAttr.part1;
            }
        })

        .state('workShiftManage', {
            url: '/workShift/manage/:part1',
            templateUrl: function(urlAttr){
                return "workShift/manage/"+urlAttr.part1;
            }
        })

        .state('shiftRoasterManage', {
            url: '/workShift/manage/shiftRoster',
            templateUrl: function(urlAttr){
                return "workShift/manage/shiftRoster";
            }
        })

        .state('shiftRoasterManage.shiftRoaster', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "workShift/manage/"+urlAttr.part1;
            }
        })

        .state('shiftRoasterProcessManage', {
            url: '/workShift/manage/shiftRosterProcess',
            templateUrl: function(urlAttr){
                return "workShift/manage/shiftRosterProcess";
            }
        })

        .state('shiftRoasterProcessManage.shiftRoasterProcess', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "workShift/manage/"+urlAttr.part1;
            }
        })

        .state('holidayCalendar', {
            url: '/workShift/manage/holidayCalendar',
            templateUrl: function(urlAttr){
                return "workShift/manage/holidayCalendar";
            }
        })

        .state('holidayCalendar.manageHolidayCalendar', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "workShift/manage/"+urlAttr.part1;
            }
        })

        .state('companyHolidayCalendar', {
            url: '/workShift/manage/companyHolidayCal',
            templateUrl: function(urlAttr){
                return "workShift/manage/companyHolidayCal";
            }
        })

        .state('companyHolidayCalendar.manageCompanyHolidayCal', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "workShift/manage/"+urlAttr.part1;
            }
        })

        .state('compensatoryOffEntryManage', {
            url: '/workShift/manage/compensatoryOffEntry',
            templateUrl: function(urlAttr){
                return "workShift/manage/compensatoryOffEntry";
            }
        })

        .state('compensatoryOffEntryManage.compensatoryOffEntry', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "workShift/manage/"+urlAttr.part1;
            }
        })

        .state('attendanceManage', {
            url: '/attendance/manage/:part1',
            templateUrl: function(urlAttr){
                return "attendance/manage/"+urlAttr.part1;
            }
        })

        .state('paymentManage', {
            url: '/payment/manage/:part1',
            templateUrl: function(urlAttr){
                return "payment/manage/"+urlAttr.part1;
            }
        })

        .state('salaryRuleManage', {
            url: '/payment/manage/salaryRule',
            templateUrl: function(urlAttr){
                return "payment/manage/salaryRule";
            }
        })

        .state('salaryRuleManage.salaryRule', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "payment/manage/"+urlAttr.part1;
            }
        })

        .state('attendancePaymentRuleManage', {
            url: '/payment/manage/attendancePaymentRule',
            templateUrl: function(urlAttr){
                return "payment/manage/attendancePaymentRule";
            }
        })

        .state('attendancePaymentRuleManage.attendancePaymentRule', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "payment/manage/"+urlAttr.part1;
            }
        })

        .state('overtimeManage', {
            url: '/overtime/manage/:part1',
            templateUrl: function(urlAttr){
                return "overtime/manage/"+urlAttr.part1;
            }
        })

        .state('bonusManage', {
            url: '/bonus/manage/:part1',
            templateUrl: function(urlAttr){
                return "bonus/manage/"+urlAttr.part1;
            }
        })

        .state('bonusProcessManage', {
            url: '/bonus/manage/bonusProcess',
            templateUrl: function(urlAttr){
                return "bonus/manage/bonusProcess";
            }
        })

        .state('bonusProcessManage.bonusProcess', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "bonus/manage/"+urlAttr.part1;
            }
        })


        .state('finalSettlement', {
            url: '/finalSettlement/:part1',
            templateUrl: function(urlAttr){
                return "finalSettlement/"+urlAttr.part1;
            }
        })

        .state('smsEmail', {
            url: '/smsEmail/:part1',
            templateUrl: function(urlAttr){
                return "smsEmail/"+urlAttr.part1;
            }
        })

        .state('reportManage', {
            url: '/report/manage/:part1',
            templateUrl: function(urlAttr){
                return "report/manage/"+urlAttr.part1;
            }
        })

        .state('signInManage', {
            url: '/signIn/manage/:part1',
            templateUrl: function(urlAttr){
                return "signIn/manage/"+urlAttr.part1;
            }
        })

        .state('overTimeAssignmentManage', {
            url: '/signIn/manage/overTimeAssignment',
            templateUrl: function(urlAttr){
                return "signIn/manage/overTimeAssignment";
            }
        })

        .state('overTimeAssignmentManage.overTimeAssignment', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "signIn/manage/"+urlAttr.part1;
            }
        })

        .state('attendanceProcessManage', {
            url: '/signIn/manage/attendanceProcess',
            templateUrl: function(urlAttr){
                return "signIn/manage/attendanceProcess";
            }
        })

        .state('attendanceProcessManage.attendanceProcess', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "signIn/manage/"+urlAttr.part1;
            }
        })

        .state('separationApprovalManage', {
            url: '/signIn/manage/separationApproval',
            templateUrl: function(urlAttr){
                return "signIn/manage/separationApproval";
            }
        })

        .state('separationApprovalManage.separationApproval', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "signIn/manage/"+urlAttr.part1;
            }
        })

        .state('incrementInformationApprovalBulkManage', {
            url: '/signIn/manage/incrementInformationApprovalBulk',
            templateUrl: function(urlAttr){
                return "signIn/manage/incrementInformationApprovalBulk";
            }
        })

        .state('incrementInformationApprovalBulkManage.incrementInformationApprovalBulk', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "signIn/manage/"+urlAttr.part1;
            }
        })

        .state('salaryProcessApprovalManage', {
            url: '/signIn/manage/salaryProcessApproval',
            templateUrl: function(urlAttr){
                return "signIn/manage/salaryProcessApproval";
            }
        })

        .state('salaryProcessApprovalManage.salaryProcessApproval', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "signIn/manage/"+urlAttr.part1;
            }
        })

        .state('leaveTransactionApprovalNewManage', {
            url: '/signIn/manage/leaveTransactionApprovalNew',
            templateUrl: function(urlAttr){
                return "signIn/manage/leaveTransactionApprovalNew";
            }
        })

        .state('leaveTransactionApprovalNewManage.leaveTransactionApprovalNew', {
            url: '/:part1',
            templateUrl: function(urlAttr){
                return "signIn/manage/"+urlAttr.part1;
            }
        })
});