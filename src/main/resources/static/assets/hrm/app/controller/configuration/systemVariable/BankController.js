app.controller("BankController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, TokenService) {

        //Initialization
        $scope.tokenInfo = "";

        function init() {
        }

        init();


        $scope.BankData = [
            {
                "countryName": "Sonali Bank",
                "displayCode": "CSS10990230",
                "sequence": "1",
                "isDefault": "0",
                "Description": "this is test description"
            },
            {
                "countryName": "Jamuna Bank",
                "displayCode": "CSS10990231",
                "sequence": "1",
                "isDefault": "0",
                "Description": "this is test description"
            },
            {
                "countryName": "Brac Bank",
                "displayCode": "CSS10990232",
                "sequence": "1",
                "isDefault": "0",
                "Description": "this is test description"
            },
            {
                "countryName": "City Bank",
                "displayCode": "CSS10990233",
                "sequence": "1",
                "isDefault": "0",
                "Description": "this is test description"
            }
        ];

        $scope.BankDataOptions = {
            dataSource: $scope.BankData,
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
                    title: "Bank Name",
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