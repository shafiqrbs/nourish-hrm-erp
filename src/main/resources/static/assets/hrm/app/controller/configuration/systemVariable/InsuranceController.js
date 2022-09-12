app.controller("InsuranceController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, TokenService) {

        //Initialization
        $scope.tokenInfo = "";

        function init() {
        }

        init();

        $scope.InsuranceData = [
            {
                "countryName": "American life insurance",
                "displayCode": "CSS10990230",
                "sequence": "1",
                "isDefault": "0",
                "Description": "this is test description"
            },
            {
                "countryName": "Farest islami life insurance",
                "displayCode": "CSS10990231",
                "sequence": "1",
                "isDefault": "0",
                "Description": "this is test description"
            },
            {
                "countryName": "Bima corporation",
                "displayCode": "CSS10990232",
                "sequence": "1",
                "isDefault": "0",
                "Description": "this is test description"
            },
            {
                "countryName": "Popular life insurance",
                "displayCode": "CSS10990233",
                "sequence": "1",
                "isDefault": "0",
                "Description": "this is test description"
            }
        ];

        $scope.InsuranceDataOptions = {
            dataSource: $scope.InsuranceData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "30px"},
                {
                    field: "countryName",
                    title: "Insurance Name",
                    width: "250px"
                },
                {
                    field: "displayCode",
                    title: "Display Code",
                    width: "150px"
                },
                {
                    field: "sequence",
                    title: "Sequence",
                    width: "100px"
                },
                {
                    field: "isDefault",
                    title: "Is Default",
                    width: "80px"
                },
                {
                    field: "Description",
                    title: "Description",
                    width: "350px"
                }
            ]
        };

    });