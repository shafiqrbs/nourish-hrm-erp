app.controller("paymentManageController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, TokenService) {

        //Initialization
        var urlObject = $location.absUrl().split( '/' );
        $scope.PaymentManageTab = urlObject[7];
        function init() {
        }

        init();

        $scope.openPaymentManageTab = function (pageName) {
            $scope.PaymentManageTab = pageName;
        }

        $scope.employeeInformationData = [
            {
                "code": "E1A000001",
                "description": "-",
                "type": "D",
                "disburse": "-",
                "perquisite": "-",
                "salaryHeadShortName": "-"
            },
        ];


        $scope.headTypeInformationGridOptions = {
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
                    title: "CODE",
                    width: "200px"
                },
                {
                    field: "description",
                    title: "DESCRIPTION",
                    width: "200px"
                },
                {
                    field: "type",
                    title: "TYPe",
                    width: "100px"
                },
                {
                    field: "disburse",
                    title: "Disburse",
                    width: "100px"
                },
                {
                    field: "perquisite",
                    title: "Perquisite",
                    width: "100px"
                },
                {
                    field: "salaryHeadShortName",
                    title: "Salary Head Short Name",
                    width: "200px"
                },
                {
                    field: "",
                    title: "",
                    width: "50px"
                },
                {
                    field: "",
                    title: "",
                    width: "50px"
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