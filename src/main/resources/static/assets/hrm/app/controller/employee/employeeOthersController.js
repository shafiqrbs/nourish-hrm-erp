app.controller("employeeOthersController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, TokenService) {

        //Initialization
        function init() {
        }

        init();

        $scope.employeeSearchInformationData = [
            {
                "code": "E1A000001",
                "name": "Md.Iqbal Ahmed Faqrul Hasan Russel"
            },
            {
                "code": "E1A000001",
                "name": "Md.Navid"
            },
            {
                "code": "E1A000001",
                "name": "Md.Navid"
            },
            {
                "code": "E1A000001",
                "name": "Md.Navid"
            },
            {
                "code": "E1A000001",
                "name": "Md.Navid"
            },
            {
                "code": "E1A000001",
                "name": "Md.Navid"
            },
            {
                "code": "E1A000001",
                "name": "Md.Navid"
            },
            {
                "code": "E1A000001",
                "name": "Md.Navid"
            },
            {
                "code": "E1A000001",
                "name": "Md.Navid"
            },
            {
                "code": "E1A000001",
                "name": "Md.Navid"
            },
            {
                "code": "E1A000001",
                "name": "Md.Navid"
            },
            {
                "code": "E1A000001",
                "name": "Md.Navid"
            },
            {
                "code": "E1A000001",
                "name": "Md.Navid"
            },
            {
                "code": "E1A000001",
                "name": "Md.Navid"
            },
            {
                "code": "E1A000001",
                "name": "Md.Navid"
            },
            {
                "code": "E1A000001",
                "name": "Md.Navid"
            },
            {
                "code": "E1A000001",
                "name": "Md.Navid"
            },
            {
                "code": "E1A000001",
                "name": "Md.Navid"
            },
        ];


        $scope.employeeSearchInformationGridOptions = {
            dataSource: $scope.employeeSearchInformationData,
            sortable: true,
            pageable: true,
            scrollable: true,
            selectable: false,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {
                    field: "code",
                    title: "Code",
                    width: "120px"
                },
                {
                    field: "name",
                    title: "Name",
                    width: "450px"
                }
            ]
        };

        $scope.employeePublicationInformationData = [
            {
                "title": "title 1",
                "type": "type 1",
                "media": "media 1",
                "date": "date 1",
                "copyRight": "copyRight 1",
                "abstract": "abstract 1",
                "financedBy": "financedBy 1"
            },
            {
                "title": "title 1",
                "type": "type 1",
                "media": "media 1",
                "date": "date 1",
                "copyRight": "copyRight 1",
                "abstract": "abstract 1",
                "financedBy": "financedBy 1"
            }
        ];


        $scope.employeePublicationInformationGridOptions = {
            dataSource: $scope.employeePublicationInformationData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
                {
                    field: "title",
                    title: "Title",
                    width: "200px"
                },
                {
                    field: "type",
                    title: "Type",
                    width: "100px"
                },
                {
                    field: "media",
                    title: "Media",
                    width: "100px"
                },
                {
                    field: "date",
                    title: "Date",
                    width: "100px"
                },
                {
                    field: "copyRight",
                    title: "Copy Right",
                    width: "100px"
                },
                {
                    field: "abstract",
                    title: "Abstract",
                    width: "100px"
                },

                {
                    field: "financedBy",
                    title: "Financed By",
                    width: "150px"
                },
            ]
        };

        $scope.employeeSkillsInformationData = [
            {
                "skillCategory": "skillCategory 1",
                "type": "type 1",
                "description": "description 1",
                "efficiency": "efficiency 1"
            },
            {
                "skillCategory": "skillCategory 1",
                "type": "type 1",
                "description": "description 1",
                "efficiency": "efficiency 1"
            }
        ];


        $scope.employeeSkillsInformationGridOptions = {
            dataSource: $scope.employeeSkillsInformationData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
                {
                    field: "skillCategory",
                    title: "SkillCategory",
                    width: "200px"
                },
                {
                    field: "type",
                    title: "Type",
                    width: "100px"
                },
                {
                    field: "description",
                    title: "Description",
                    width: "100px"
                },
                {
                    field: "efficiency",
                    title: "Efficiency",
                    width: "100px"
                }
            ]
        };

        $scope.employeeTransferInformationData = [
            {
                "location": "location 1",
                "presentLocation": "presentLocation 1",
                "postLocation": "postLocation 1"
            },
        ];


        $scope.employeeTransferInformationGridOptions = {
            dataSource: $scope.employeeTransferInformationData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
                {
                    field: "location",
                    title: "Location",
                    width: "100px"
                },
                {
                    field: "presentLocation",
                    title: "PresentLocation",
                    width: "100px"
                },
                {
                    field: "postLocation",
                    title: "PostLocation",
                    width: "100px"
                },
            ]
        };

        $scope.employeeTravelInformationData = [
            {
                "type": "type 1",
                "location": "location 1",
                "cost": "cost 1",
                "companyBearAmount": "companyBearAmount 1",
                "date": "date 1",
                "totalDay": "totalDay 1"
            },
            {
                "type": "2",
                "location": "location 2",
                "cost": "cost 2",
                "companyBearAmount": "companyBearAmount",
                "date": "",
                "totalDay": "totalDay"
            }
        ];


        $scope.employeeTravelInformationGridOptions = {
            dataSource: $scope.employeeTravelInformationData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
                {
                    field: "type",
                    title: "Type",
                    width: "100px"
                },
                {
                    field: "location",
                    title: "Location",
                    width: "100px"
                },
                {
                    field: "cost",
                    title: "Cost",
                    width: "100px"
                },
                {
                    field: "companyBearAmount",
                    title: "Company Bear Amount",
                    width: "100px"
                },
                {
                    field: "date",
                    title: "Date",
                    width: "100px"
                },

                {
                    field: "totalDay",
                    title: "Total Day",
                    width: "150px"
                },
            ]
        };

        $scope.employeeDisciplinaryActionInformationData = [
            {
                "type": "2",
                "description": "description 2",
                "effectiveDate": "effectiveDate 2",
                "action": "action 2",
                "actionDismissDate": "actionDismissDate 2",
                "effectInSalary": "effectInSalary 2"
            },
            {
                "type": "2",
                "description": "description 2",
                "effectiveDate": "effectiveDate 2",
                "action": "action 2",
                "actionDismissDate": "actionDismissDate 2",
                "effectInSalary": "effectInSalary 2"
            }
        ];


        $scope.employeeDisciplinaryActionInformationGridOptions = {
            dataSource: $scope.employeeDisciplinaryActionInformationData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
                {
                    field: "type",
                    title: "Type",
                    width: "100px"
                },
                {
                    field: "description",
                    title: "Description",
                    width: "100px"
                },
                {
                    field: "effectiveDate",
                    title: "Effective Date",
                    width: "100px"
                },
                {
                    field: "action",
                    title: "Action",
                    width: "100px"
                },
                {
                    field: "actionDismissDate",
                    title: "Action Dismiss Date",
                    width: "100px"
                },

                {
                    field: "effectInSalary",
                    title: "Effect In Salary",
                    width: "100px"
                },
            ]
        };

        $scope.employeeAwardAchievementInformationData = [
            {
                "type": "type 1",
                "effectiveDate": "effectiveDate 1",
                "awardedDate": "awardedDate 1",
                "awardedBy": "awardedBy 1",
                "effectInSalary": "effectInSalary 1",
                "amount": "amount 1"
            },
            {
                "type": "type 1",
                "effectiveDate": "effectiveDate 1",
                "awardedDate": "awardedDate 1",
                "awardedBy": "awardedBy 1",
                "effectInSalary": "effectInSalary 1",
                "amount": "amount 1"
            }
        ];


        $scope.employeeAwardAchievementInformationGridOptions = {
            dataSource: $scope.employeeAwardAchievementInformationData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
                {
                    field: "type",
                    title: "Type",
                    width: "100px"
                },
                {
                    field: "effectiveDate",
                    title: "Effective Date",
                    width: "100px"
                },
                {
                    field: "awardedDate",
                    title: "Awarded Date",
                    width: "100px"
                },
                {
                    field: "awardedBy",
                    title: "Awarded By",
                    width: "100px"
                },
                {
                    field: "effectInSalary",
                    title: "Effect In Salary",
                    width: "100px"
                },

                {
                    field: "amount",
                    title: "Amount",
                    width: "100px"
                },
            ]
        };

        $scope.employeeUtilityInformationData = [
            {
                "utilityTitle": "utilityTitle 1",
                "description": "description 1",
                "cellingValue": "cellingValue 1",
                "actualBill": "actualBill 1",
                "deductibleAmount": "deductibleAmount 1",
            },
            {
                "utilityTitle": "utilityTitle 1",
                "description": "description 1",
                "cellingValue": "cellingValue 1",
                "actualBill": "actualBill 1",
                "deductibleAmount": "deductibleAmount 1",
            }
        ];


        $scope.employeeUtilityInformationGridOptions = {
            dataSource: $scope.employeeUtilityInformationData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
                {
                    field: "utilityTitle",
                    title: "Utility Title",
                    width: "100px"
                },
                {
                    field: "description",
                    title: "Description",
                    width: "100px"
                },
                {
                    field: "cellingValue",
                    title: "Celling Value",
                    width: "100px"
                },
                {
                    field: "actualBill",
                    title: "Actual Bill",
                    width: "100px"
                },
                {
                    field: "deductibleAmount",
                    title: "Deductible Amount",
                    width: "100px"
                },
            ]
        };





    });