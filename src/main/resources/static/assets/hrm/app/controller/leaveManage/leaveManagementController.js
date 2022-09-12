app.controller("LeaveManagementController",
    function($rootScope, $scope, $http, $location, $timeout) {
        //Initialization
        var urlObject = $location.absUrl().split( '/' );
        $scope.LeaveManagementTab = urlObject[7];
        function init() {

        }

        init();

        $scope.openSelectedTab = function (pageName) {
            $scope.LeaveManagementTab = pageName;
        }

        $scope.LeaveProcessData =[
            {
                 "forwarderCode": "SP-13",
                 "forwarderName": "TEST",
                 "forwarderDef": "B",
                 "recomendorName": "7",
                 "recomendor": "",
                 "approvalCode": "111001",
                 "approvalName": "Test ",
                 "approvalDef": "Demo"
            },
            {
                "forwarderCode": "SP-13",
                "forwarderName": "TEST",
                "forwarderDef": "B",
                "recomendorName": "7",
                "recomendor": "",
                "approvalCode": "111001",
                "approvalName": "Test ",
                "approvalDef": "Demo"
            },
            {
                "forwarderCode": "SP-13",
                "forwarderName": "TEST",
                "forwarderDef": "B",
                "recomendorName": "7",
                "recomendor": "",
                "approvalCode": "111001",
                "approvalName": "Test ",
                "approvalDef": "Demo"
            }];

        $scope.LeavePolicyDefinitionData =[
        {
             "policyID": "LV-11-1",
             "description": "Casual Leave",
             "leaveType": "CL",
             "category": "CL",
             "leaveCreate": "BOY",
             "serviceLen": "",
             "fixed": "",
             "carryForward": "",
             "consecutive": "",
             "calculation": "DOJ",
             "calculate": "0",
             "proceeding": "",
             "succeeding": "",
             "workDay": "EWD",
             "calender": "EC",
             "dayStatus": "",
             "adjust": "0",
             "fYrLVProportionte": "",
             "isAllowAdvance": "",
             "isAllowOpening": ""
        },
        {
             "policyID": "LV-11-1",
             "description": "Casual Leave",
             "leaveType": "CL",
             "category": "CL",
             "leaveCreate": "BOY",
             "serviceLen": "",
             "fixed": "",
             "carryForward": "",
             "consecutive": "",
             "calculation": "DOJ",
             "calculate": "0",
             "proceeding": "",
             "succeeding": "",
             "workDay": "EWD",
             "calender": "EC",
             "dayStatus": "",
             "adjust": "0",
             "fYrLVProportionte": "",
             "isAllowAdvance": "",
             "isAllowOpening": ""
        },
        {
             "policyID": "LV-11-1",
             "description": "Casual Leave",
             "leaveType": "CL",
             "category": "CL",
             "leaveCreate": "BOY",
             "serviceLen": "",
             "fixed": "",
             "carryForward": "",
             "consecutive": "",
             "calculation": "DOJ",
             "calculate": "0",
             "proceeding": "",
             "succeeding": "",
             "workDay": "EWD",
             "calender": "EC",
             "dayStatus": "",
             "adjust": "0",
             "fYrLVProportionte": "",
             "isAllowAdvance": "",
             "isAllowOpening": ""
        }];



        // All Grid
        $scope.LeaveProcessList = {
            dataSource: $scope.LeaveProcessData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
                {
                    field: "forwarderCode",
                    title: "Forwarder Code",
                    width: "100px"
                },
                {
                    field: "forwarderName",
                    title: "Forwarder Name",
                    width: "150px"
                },
                {
                    field: "forwarderDef",
                    title: "Forwarder Def",
                    width: "100px"
                },
                {
                    field: "recomendorName",
                    title: "Recomendor Name",
                    width: "100px"
                },
                {
                    field: "recomendor",
                    title: "Recomendor",
                    width: "100px"
                },
                {
                    field: "approvalCode",
                    title: "Approval Code",
                    width: "100px"
                },
                {
                    field: "approvalName",
                    title: "Approval Name",
                    width: "100px"
                },
                {
                    field: "approvalDef",
                    title: "Approval Def",
                    width: "100px"
                }
            ]
        };

        $scope.LeavePolicyInformationList = {
            dataSource: $scope.LeavePolicyDefinitionData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
                {
                    field: "policyID",
                    title: "policy ID",
                    width: "100px"
                },
                {
                    field: "description",
                    title: "Sescription",
                    width: "100px"
                },
                {
                    field: "leaveType",
                    title: "Leave Type",
                    width: "100px"
                },
                {
                    field: "category",
                    title: "Category",
                    width: "100px"
                },
                {
                    field: "leaveCreate",
                    title: "Leave Create",
                    width: "100px"
                },
                {
                    field: "serviceLen",
                    title: "Service Len",
                    width: "50px"
                },
                {
                    field: "fixed",
                    title: "Fixed",
                    width: "50px"
                },
                {
                    field: "carryForward",
                    title: "Carry Forward",
                    width: "100px"
                }
            ]
        };

         $scope.LDefinedPolicyList = {
             dataSource: $scope.LeaveProcessData,
             sortable: true,
             pageable: true,
             scrollable: true,
             dataBound: function () {
                 this.expandRow(this.tbody.find("tr.k-master-row").first());
             },
             columns: [
                 {selectable: true, width: "50px"},
                 {
                     field: "forwarderCode",
                     title: "Forwarder Code",
                     width: "100px"
                 },
                 {
                     field: "forwarderName",
                     title: "Forwarder Name",
                     width: "150px"
                 },
                 {
                     field: "forwarderDef",
                     title: "Forwarder Def",
                     width: "100px"
                 },
                 {
                     field: "recomendorName",
                     title: "Recomendor Name",
                     width: "100px"
                 },
                 {
                     field: "recomendor",
                     title: "Recomendor",
                     width: "100px"
                 },
                 {
                     field: "approvalCode",
                     title: "Approval Code",
                     width: "100px"
                 },
                 {
                     field: "approvalName",
                     title: "Approval Name",
                     width: "100px"
                 },
                 {
                     field: "approvalDef",
                     title: "Approval Def",
                     width: "100px"
                 }
             ]
         };

         $scope.LeaveAllocationInformationList = {
             dataSource: $scope.LeaveProcessData,
             sortable: true,
             pageable: true,
             scrollable: true,
             dataBound: function () {
                 this.expandRow(this.tbody.find("tr.k-master-row").first());
             },
             columns: [
                 {selectable: true, width: "50px"},
                 {
                     field: "forwarderCode",
                     title: "Forwarder Code",
                     width: "100px"
                 },
                 {
                     field: "forwarderName",
                     title: "Forwarder Name",
                     width: "150px"
                 },
                 {
                     field: "forwarderDef",
                     title: "Forwarder Def",
                     width: "100px"
                 },
                 {
                     field: "recomendorName",
                     title: "Recomendor Name",
                     width: "100px"
                 },
                 {
                     field: "recomendor",
                     title: "Recomendor",
                     width: "100px"
                 },
                 {
                     field: "approvalCode",
                     title: "Approval Code",
                     width: "100px"
                 },
                 {
                     field: "approvalName",
                     title: "Approval Name",
                     width: "100px"
                 },
                 {
                     field: "approvalDef",
                     title: "Approval Def",
                     width: "100px"
                 }
             ]
         };

});