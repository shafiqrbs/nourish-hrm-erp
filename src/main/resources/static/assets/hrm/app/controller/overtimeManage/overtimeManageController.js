app.controller("overtimeManageController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, TokenService) {

        //Initialization
        var urlObject = $location.absUrl().split( '/' );
        $scope.OvertimeTab = urlObject[7];
        function init() {
        }

        init();

        $scope.openOvertimeTab = function (pageName) {
            $scope.OvertimeTab = pageName;
        }

        $scope.shiftRosterDetailData = [
            {
                "shiftID": "SP-13",
                "shiftType": "DAY",
                "alias": "B",
                "days": "7",
                "upIcon": "",
                "downIcon": ""
            },
            {
                "shiftID": "SP-13",
                "shiftType": "DAY",
                "alias": "B",
                "days": "7",
                "upIcon": "",
                "downIcon": ""
            },
            {
                "shiftID": "SP-13",
                "shiftType": "DAY",
                "alias": "B",
                "days": "7",
                "upIcon": "",
                "downIcon": ""
            },
        ];


        $scope.shiftRosterDetailGridOptions = {
            dataSource: $scope.shiftRosterDetailData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
                {
                    field: "shiftID",
                    title: "Shift ID",
                    width: "100px"
                },
                {
                    field: "shiftType",
                    title: "Shift Type",
                    width: "150px"
                },
                {
                    field: "alias",
                    title: "Alias",
                    width: "100px"
                },
                {
                    field: "days",
                    title: "Days",
                    width: "100px"
                },
                {
                    field: "upIcon",
                    title: "",
                    width: "50px"
                },
                {
                    field: "downIcon",
                    title: "",
                    width: "50px"
                },
            ]
        };

        $scope.shiftRosterRulesData = [
            {
                "shiftRuleCode": "Security(Day)",
                "description": "Security(Day)"
            },
            {
                "shiftRuleCode": "Security(Morning)",
                "description": "Security(Morning)"
            },
            {
                "shiftRuleCode": "Security(Night)",
                "description": "Security(Night)"
            },
        ];


        $scope.shiftRosterRulesGridOptions = {
            dataSource: $scope.shiftRosterRulesData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
                {
                    field: "shiftRuleCode",
                    title: "Shift Rule Code",
                    width: "200px"
                },
                {
                    field: "description",
                    title: "Description",
                    width: "200px"
                },
            ]
        };

        $scope.employeeInformationData = [
            {
                "code": "E1A000001",
                "punchCard": "00000026",
                "name": "Md.Navid"
            },
            {
                "code": "E1A000001",
                "punchCard": "00000026",
                "name": "Md.Navid"
            },
            {
                "code": "E1A000001",
                "punchCard": "00000026",
                "name": "Md.Navid"
            },
        ];


        $scope.employeeInformationGridOptions = {
            dataSource: $scope.employeeInformationData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
                {
                    field: "code",
                    title: "Code",
                    width: "200px"
                },
                {
                    field: "punchCard",
                    title: "Punch Card",
                    width: "200px"
                },
                {
                    field: "name",
                    title: "Name",
                    width: "200px"
                },
            ]
        };

    });