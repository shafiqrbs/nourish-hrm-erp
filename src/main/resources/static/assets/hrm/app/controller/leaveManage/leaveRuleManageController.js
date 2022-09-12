app.controller("leaveRuleManageController",
    function ($rootScope, $scope, $uibModal, $http, $location, $timeout, $filter, Flash,BaseApiUrlService,
        EmployeeInfoService,LeaveRuleServices,TokenService) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl();

        $scope.isDefaultImage = true;

        $scope.LeaveRuleDDL={};
        $scope.leaveRule = {};
        $scope.leaveRule.leaveRuleID = "";

        function init() {
            getAllLeaveRuleNameForDDL();
        }

        init();

        function getAllLeaveRuleNameForDDL(){
            LeaveRuleServices.getAllLeaveRuleName(TokenService.getAccessToken()).then(function (resp) {
                $scope.LeaveRuleDDL = resp;
                $scope.leaveRule.leaveRuleID = resp[0].leaveRuleName;
                $scope.LeaveRuleInformationGridDataSource.read();
            });
        }


        $scope.getLeaveRuleInfo = function(lrLeaveRuleInfo){
         //   alert(pShiftId);
            LeaveRuleServices.getAllLeaveRuleName(lrLeaveRuleInfo,TokenService.getAccessToken()).then(function (resp) {
                $scope.leaveRule = resp;
                console.log(resp);
            });
        }

        $scope.getLeaveRulePolicyInfo = function(){
            $scope.LeaveRuleInformationGridDataSource.read();
        }

        $scope.saveLeaveRuleForm = function(isValid,leaveRule){
            if(isValid){

                LeaveRuleServices.save(leaveRule,TokenService.getAccessToken()).then(function(resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                        $scope.leaveRule = {};
                    }else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                })
            }
        }

        $scope.LeaveRuleInformationGridDataSource = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/leave/leavePolicy/getAll?access_token='+TokenService.getAccessToken();
                    },
                    dataType: "json",
                },
                serverPaging: true,
                serverSorting: true
            },
            error: function (e) {
                if (e.errorThrown.toString() === 'Unauthorized') {
                    alert('Unauthorized Access!');
                    window.location = '/account/login';
                }
            },
            pageSize: 50,
            schema: {
                model: {
                    id: "Id",
                    fields: {
                       disciplinaryActionId: { type: "number", editable: false },
                       disciplinaryActionType: { type: "string" },
                       effectiveDate: { type: "string" },
                       description: { type: "string" }
                    }
                }
            }
        });

        $scope.LeaveRuleInformationDataOptions = {
            dataSource: $scope.LeaveRuleInformationGridDataSource,
            sortable: true,
            selectable:"row",
            change: $scope.LeaveRuleInformationGridDataSelect,
            pageable: true,
            scrollable: true,
            resizeable:true,
            pageable: {
                refresh: true,
                pageSizes: [20, 50, 100, 200],
                //pageSizes: [20, 50, 100, 200, "all"],
                buttonCount: 5,
                messages: {
                    itemsPerPage: "",
                    display: "{0} - {1} of {2} Records"
                }
            },
            dataBound: function() {
                 this.expandRow(this.tbody.find("tr.k-master-row").first());

                var currentWrapperWidth = this.element.parent().width();
                for (var i = 0; i < this.columns.length; i++) {
                    this.autoFitColumn(i);
                }
                var currentTableWidth = this.element.width();
                if(currentWrapperWidth < currentTableWidth)
                    this.element.closest(".k-grid").width(currentWrapperWidth - 2);
            },
            columns: [
                {
                    field: "policyID",
                    title: "Policy ID"
                },
                {
                    field: "leaveType",
                    title: "Leave Type"
                },
                {
                    field: "default",
                    title: "Default",
                    template: '<span>{{(dataItem.default==true?"Yes":"No")}}</span>'
                },
                {
                    field: "leaveCredit",
                    title: "Credit"
                },
                {
                    field: "serviceLengthDependant",
                    title: "Service Length",
                    template: '<span>{{(dataItem.serviceLengthDependant==true?"Yes":"No")}}</span>'
                },
                {
                    field: "fixedDays",
                    title: "Fix Days",
                    template: '<span>{{(dataItem.fixedDays==true?"Yes":"No")}}</span>'
                },
                {
                    field: "carryForwarded",
                    title: "Carry Forward",
                    template: '<span>{{(dataItem.carryForwarded==true?"Yes":"No")}}</span>'
                },
                {
                    field: "consecutiveLimit",
                    title: "Consecutively",
                    template: '<span>{{(dataItem.consecutiveLimit==true?"Yes":"No")}}</span>'
                },
                {
                    field: "leaveCalculationBasis",
                    title: "Calculation"
                },
                {
                    field: "calculateAfter",
                    title: "Calculate"
                },
                {
                    field: "allowPreceedingHolidays",
                    title: "Preceding Heading",
                    template: '<span>{{(dataItem.allowPreceedingHolidays==true?"Yes":"No")}}</span>'
                },
                {
                    field: "allowSucceedingHolidays",
                    title: "Succeeding Heading",
                    template: '<span>{{(dataItem.allowSucceedingHolidays==true?"Yes":"No")}}</span>'
                },
                {
                    field: "workDay",
                    title: "Work Day"
                },
                {
                    field: "calenderType",
                    title: "Calender Type"
                },
                {
                    field: "dayStatus",
                    title: "Day Status"
                },
                {
                    field: "adjustedHour",
                    title: "Adjusted"
                },
                {
                    field: "fYrLVProportionateBasedOnDOJDOC",
                    title: "FYrLVProportionateBase",
                    template: '<span>{{(dataItem.fYrLVProportionateBasedOnDOJDOC==true?"Yes":"No")}}</span>'
                },
                {
                    field: "allowAdvanceLeave",
                    title: "IsAllowAdvance",
                    template: '<span>{{(dataItem.allowAdvanceLeave==true?"Yes":"No")}}</span>'
                },
                {
                    field: "allowOpeningBalance",
                    title: "IsAllowOpening",
                    template: '<span>{{(dataItem.allowOpeningBalance==true?"Yes":"No")}}</span>'
                }
            ]
        };
    });