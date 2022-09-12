app.controller("ConfigurationController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, TokenService) {

        //Initialization
        $scope.tokenInfo = "";

        function init() {
        /*
            TokenService.getToken()
                .then(function (response){
                    $scope.tokenInfo = response.data.token;
                    //alert($scope.tokenInfo);
                    //alert(JSON.stringify($scope.tokenInfo));
                }, function(error){
                    console.log(error);
                });
            */
        }

        init();

        $scope.cancel = function () {
            alert('Canceled');
        }
        $scope.deleteConfig = function () {
            alert('Delete');
        }


        // $scope.CompanylInfoData2 = [
        //     {
        //         "companyName": "Cloud Software Solution Ltd.",
        //     }
        // ];
        //
        // $scope.CompanylInfoDataOptions2 = {
        //     dataSource: $scope.CompanylInfoData,
        //     sortable: true,
        //     pageable: true,
        //     scrollable: true,
        //     dataBound: function () {
        //         this.expandRow(this.tbody.find("tr.k-master-row").first());
        //     },
        //     columns: [
        //         {selectable: true, width: "30px"},
        //         {
        //             field: "companyName",
        //             title: "Company Name",
        //             width: "250px"
        //         }
        //     ]
        // };


        $scope.CompanylInfoData = [
            {
                "companyName": "Cloud Software Solution Ltd.",
                "companyID": "CSS10990230",
                "companyLogo": "/images/logo",
                "companyAddress": "House 687-689, Flat 2A, Road 10 , Avenue 6, Mirpur DOHS",
                "companyCity": "Dhaka",
                "companyState": "Dhaka",
                "companyZip": "1216",
                "companyCountry": "Bangladesh",
                "companyPhone": "01677296190",
                "contactName": "Niamul Hasan",
                "contactDesignation": "CEO",
                "contactPhone": "01712888380",
                "contactEmail": "niamul111@gmail.com",
                "contactLinkedin": "https://www.linkedin.com/in/niamulhasan/",
                "contactFacebook": "https://www.facebook.com/md.niamulhasan",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "companyName": "Cloud Software Solution Ltd.",
                "companyID": "CSS10990230",
                "companyLogo": "/images/logo",
                "companyAddress": "House 687-689, Flat 2A, Road 10 , Avenue 6, Mirpur DOHS",
                "companyCity": "Dhaka",
                "companyState": "Dhaka",
                "companyZip": "1216",
                "companyCountry": "Bangladesh",
                "companyPhone": "01677296190",
                "contactName": "Niamul Hasan",
                "contactDesignation": "CEO",
                "contactPhone": "01712888380",
                "contactEmail": "niamul111@gmail.com",
                "contactLinkedin": "https://www.linkedin.com/in/niamulhasan/",
                "contactFacebook": "https://www.facebook.com/md.niamulhasan",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "companyName": "Cloud Software Solution Ltd.",
                "companyID": "CSS10990230",
                "companyLogo": "/images/logo",
                "companyAddress": "House 687-689, Flat 2A, Road 10 , Avenue 6, Mirpur DOHS",
                "companyCity": "Dhaka",
                "companyState": "Dhaka",
                "companyZip": "1216",
                "companyCountry": "Bangladesh",
                "companyPhone": "01677296190",
                "contactName": "Niamul Hasan",
                "contactDesignation": "CEO",
                "contactPhone": "01712888380",
                "contactEmail": "niamul111@gmail.com",
                "contactLinkedin": "https://www.linkedin.com/in/niamulhasan/",
                "contactFacebook": "https://www.facebook.com/md.niamulhasan",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "companyName": "Cloud Software Solution Ltd.",
                "companyID": "CSS10990230",
                "companyLogo": "/images/logo",
                "companyAddress": "House 687-689, Flat 2A, Road 10 , Avenue 6, Mirpur DOHS",
                "companyCity": "Dhaka",
                "companyState": "Dhaka",
                "companyZip": "1216",
                "companyCountry": "Bangladesh",
                "companyPhone": "01677296190",
                "contactName": "Niamul Hasan",
                "contactDesignation": "CEO",
                "contactPhone": "01712888380",
                "contactEmail": "niamul111@gmail.com",
                "contactLinkedin": "https://www.linkedin.com/in/niamulhasan/",
                "contactFacebook": "https://www.facebook.com/md.niamulhasan",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "companyName": "Cloud Software Solution Ltd.",
                "companyID": "CSS10990230",
                "companyLogo": "/images/logo",
                "companyAddress": "House 687-689, Flat 2A, Road 10 , Avenue 6, Mirpur DOHS",
                "companyCity": "Dhaka",
                "companyState": "Dhaka",
                "companyZip": "1216",
                "companyCountry": "Bangladesh",
                "companyPhone": "01677296190",
                "contactName": "Niamul Hasan",
                "contactDesignation": "CEO",
                "contactPhone": "01712888380",
                "contactEmail": "niamul111@gmail.com",
                "contactLinkedin": "https://www.linkedin.com/in/niamulhasan/",
                "contactFacebook": "https://www.facebook.com/md.niamulhasan",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "companyName": "Cloud Software Solution Ltd.",
                "companyID": "CSS10990230",
                "companyLogo": "/images/logo",
                "companyAddress": "House 687-689, Flat 2A, Road 10 , Avenue 6, Mirpur DOHS",
                "companyCity": "Dhaka",
                "companyState": "Dhaka",
                "companyZip": "1216",
                "companyCountry": "Bangladesh",
                "companyPhone": "01677296190",
                "contactName": "Niamul Hasan",
                "contactDesignation": "CEO",
                "contactPhone": "01712888380",
                "contactEmail": "niamul111@gmail.com",
                "contactLinkedin": "https://www.linkedin.com/in/niamulhasan/",
                "contactFacebook": "https://www.facebook.com/md.niamulhasan",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "companyName": "Cloud Software Solution Ltd.",
                "companyID": "CSS10990230",
                "companyLogo": "/images/logo",
                "companyAddress": "House 687-689, Flat 2A, Road 10 , Avenue 6, Mirpur DOHS",
                "companyCity": "Dhaka",
                "companyState": "Dhaka",
                "companyZip": "1216",
                "companyCountry": "Bangladesh",
                "companyPhone": "01677296190",
                "contactName": "Niamul Hasan",
                "contactDesignation": "CEO",
                "contactPhone": "01712888380",
                "contactEmail": "niamul111@gmail.com",
                "contactLinkedin": "https://www.linkedin.com/in/niamulhasan/",
                "contactFacebook": "https://www.facebook.com/md.niamulhasan",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "companyName": "Cloud Software Solution Ltd.",
                "companyID": "CSS10990230",
                "companyLogo": "/images/logo",
                "companyAddress": "House 687-689, Flat 2A, Road 10 , Avenue 6, Mirpur DOHS",
                "companyCity": "Dhaka",
                "companyState": "Dhaka",
                "companyZip": "1216",
                "companyCountry": "Bangladesh",
                "companyPhone": "01677296190",
                "contactName": "Niamul Hasan",
                "contactDesignation": "CEO",
                "contactPhone": "01712888380",
                "contactEmail": "niamul111@gmail.com",
                "contactLinkedin": "https://www.linkedin.com/in/niamulhasan/",
                "contactFacebook": "https://www.facebook.com/md.niamulhasan",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "companyName": "Cloud Software Solution Ltd.",
                "companyID": "CSS10990230",
                "companyLogo": "/images/logo",
                "companyAddress": "House 687-689, Flat 2A, Road 10 , Avenue 6, Mirpur DOHS",
                "companyCity": "Dhaka",
                "companyState": "Dhaka",
                "companyZip": "1216",
                "companyCountry": "Bangladesh",
                "companyPhone": "01677296190",
                "contactName": "Niamul Hasan",
                "contactDesignation": "CEO",
                "contactPhone": "01712888380",
                "contactEmail": "niamul111@gmail.com",
                "contactLinkedin": "https://www.linkedin.com/in/niamulhasan/",
                "contactFacebook": "https://www.facebook.com/md.niamulhasan",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "companyName": "Cloud Software Solution Ltd.",
                "companyID": "CSS10990230",
                "companyLogo": "/images/logo",
                "companyAddress": "House 687-689, Flat 2A, Road 10 , Avenue 6, Mirpur DOHS",
                "companyCity": "Dhaka",
                "companyState": "Dhaka",
                "companyZip": "1216",
                "companyCountry": "Bangladesh",
                "companyPhone": "01677296190",
                "contactName": "Niamul Hasan",
                "contactDesignation": "CEO",
                "contactPhone": "01712888380",
                "contactEmail": "niamul111@gmail.com",
                "contactLinkedin": "https://www.linkedin.com/in/niamulhasan/",
                "contactFacebook": "https://www.facebook.com/md.niamulhasan",
                "Sequence": "01",
                "isDefault": "0"
            }
        ];




        $scope.CompanylInfoDataOptions = {
            dataSource: $scope.CompanylInfoData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "30px"},
                {
                    field: "companyName",
                    title: "Company Name",
                    width: "250px"
                },
                {
                    field: "companyID",
                    title: "Company ID",
                    width: "150px"
                },
                {
                    field: "companyLogo",
                    title: "Company Logo",
                    width: "250px"
                },
                {
                    field: "companyAddress",
                    title: "Company Address",
                    width: "450px"
                },
                {
                    field: "companyCity",
                    title: "Company City",
                    width: "150px"
                },
                {
                    field: "companyState",
                    title: "Company State",
                    width: "150px"
                },
                {
                    field: "companyZip",
                    title: "Zip",
                    width: "150px"
                },
                {
                    field: "companyCountry",
                    title: "Country",
                    width: "200px"
                },
                {
                    field: "companyPhone",
                    title: "Company Phone",
                    width: "150px"
                },
                {
                    field: "contactName",
                    title: "Contact Name",
                    width: "250px"
                },
                {
                    field: "contactDesignation",
                    title: "Designation",
                    width: "150px"
                },
                {
                    field: "contactPhone",
                    title: "Company ID",
                    width: "180px"
                },
                {
                    field: "contactEmail",
                    title: "Contact Email",
                    width: "180px"
                },
                {
                    field: "contactLinkedin",
                    title: "Linkedin URL",
                    width: "350px"
                },
                {
                    field: "contactFacebook",
                    title: "Facebook URL",
                    width: "350px"
                },
                {
                    field: "Sequence",
                    title: "Sequence",
                    width: "80px"
                },
                {
                    field: "isDefault",
                    title: "Is Default",
                    width: "80px"
                }
            ]
        };


        $scope.CompanylBuildingData = [
            {
                "buildingName": "Main Building",
                "buildingCode": "CSS12345",
                "Company": "Cloud Software Solution Ltd.",
                "Branch": "Dhaka",
                "address": "House 687-689, Flat 2A, Road 10 , Avenue 6, Mirpur DOHS",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "buildingName": "Main Building",
                "buildingCode": "CSS12345",
                "Company": "Cloud Software Solution Ltd.",
                "Branch": "Dhaka",
                "address": "House 687-689, Flat 2A, Road 10 , Avenue 6, Mirpur DOHS",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "buildingName": "Main Building",
                "buildingCode": "CSS12345",
                "Company": "Cloud Software Solution Ltd.",
                "Branch": "Dhaka",
                "address": "House 687-689, Flat 2A, Road 10 , Avenue 6, Mirpur DOHS",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "buildingName": "Main Building",
                "buildingCode": "CSS12345",
                "Company": "Cloud Software Solution Ltd.",
                "Branch": "Dhaka",
                "address": "House 687-689, Flat 2A, Road 10 , Avenue 6, Mirpur DOHS",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "buildingName": "Main Building",
                "buildingCode": "CSS12345",
                "Company": "Cloud Software Solution Ltd.",
                "Branch": "Dhaka",
                "address": "House 687-689, Flat 2A, Road 10 , Avenue 6, Mirpur DOHS",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "buildingName": "Main Building",
                "buildingCode": "CSS12345",
                "Company": "Cloud Software Solution Ltd.",
                "Branch": "Dhaka",
                "address": "House 687-689, Flat 2A, Road 10 , Avenue 6, Mirpur DOHS",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "buildingName": "Main Building",
                "buildingCode": "CSS12345",
                "Company": "Cloud Software Solution Ltd.",
                "Branch": "Dhaka",
                "address": "House 687-689, Flat 2A, Road 10 , Avenue 6, Mirpur DOHS",
                "Sequence": "01",
                "isDefault": "0"
            }
        ];

        $scope.CompanyBuildingOptions = {
            dataSource: $scope.CompanyBuildingData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "30px"},
                {
                    field: "buildingName",
                    title: "Building Name",
                    width: "250px"
                },
                {
                    field: "buildingCode",
                    title: "Building Code",
                    width: "180px"
                },
                {
                    field: "Company",
                    title: "Company Name",
                    width: "250px"
                },
                {
                    field: "Branch",
                    title: "Branch",
                    width: "180px"
                },
                {
                    field: "address",
                    title: "Address",
                    width: "450px"
                },
                {
                    field: "Sequence",
                    title: "Sequence",
                    width: "80px"
                },
                {
                    field: "isDefault",
                    title: "Is Default",
                    width: "80px"
                }
            ]
        };

        $scope.CompanyFloorData = [
            {
                "floorName": "First Floor",
                "floorCode": "css102986",
                "building": "Main Building",
                "buildingCode": "css9459378",
                "notes": "Beside Petro Bangla",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "floorName": "First Floor",
                "floorCode": "css102986",
                "building": "Main Building",
                "buildingCode": "css9459378",
                "notes": "Beside Petro Bangla",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "floorName": "First Floor",
                "floorCode": "css102986",
                "building": "Main Building",
                "buildingCode": "css9459378",
                "notes": "Beside Petro Bangla",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "floorName": "First Floor",
                "floorCode": "css102986",
                "building": "Main Building",
                "buildingCode": "css9459378",
                "notes": "Beside Petro Bangla",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "floorName": "First Floor",
                "floorCode": "css102986",
                "building": "Main Building",
                "buildingCode": "css9459378",
                "notes": "Beside Petro Bangla",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "floorName": "First Floor",
                "floorCode": "css102986",
                "building": "Main Building",
                "buildingCode": "css9459378",
                "notes": "Beside Petro Bangla",
                "Sequence": "01",
                "isDefault": "0"
            }
        ];

        $scope.CompanyFloorOptions = {
            dataSource: $scope.CompanyFloorData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "30px"},
                {
                    field: "floorName",
                    title: "Floor Name",
                    width: "250px"
                },
                {
                    field: "floorCode",
                    title: "Floor Code",
                    width: "180px"
                },
                {
                    field: "building",
                    title: "Building",
                    width: "250px"
                },
                {
                    field: "buildingCode",
                    title: "Building Code",
                    width: "180px"
                },
                {
                    field: "notes",
                    title: "Notes",
                    width: "450px"
                },
                {
                    field: "Sequence",
                    title: "Sequence",
                    width: "80px"
                },
                {
                    field: "isDefault",
                    title: "Is Default",
                    width: "80px"
                }
            ]
        };

        $scope.CompanyLineData = [
            {
                "lineName": "Line A",
                "lineCode": "css129878",
                "building": "Main Building",
                "floor": "First Floor",
                "notes": "Floor Having 400 Staff",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "lineName": "Line A",
                "lineCode": "css129878",
                "building": "Main Building",
                "floor": "First Floor",
                "notes": "Floor Having 400 Staff",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "lineName": "Line A",
                "lineCode": "css129878",
                "building": "Main Building",
                "floor": "First Floor",
                "notes": "Floor Having 400 Staff",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "lineName": "Line A",
                "lineCode": "css129878",
                "building": "Main Building",
                "floor": "First Floor",
                "notes": "Floor Having 400 Staff",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "lineName": "Line A",
                "lineCode": "css129878",
                "building": "Main Building",
                "floor": "First Floor",
                "notes": "Floor Having 400 Staff",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "lineName": "Line A",
                "lineCode": "css129878",
                "building": "Main Building",
                "floor": "First Floor",
                "notes": "Floor Having 400 Staff",
                "Sequence": "01",
                "isDefault": "0"
            }
        ];

        $scope.CompanyLineOptions = {
            dataSource: $scope.CompanyLineData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
                {
                    field: "lineName",
                    title: "Line Name",
                    width: "250px"
                },
                {
                    field: "lineCode",
                    title: "Line Code",
                    width: "180px"
                },
                {
                    field: "building",
                    title: "Building",
                    width: "250px"
                },
                {
                    field: "floor",
                    title: "Floor",
                    width: "180px"
                },
                {
                    field: "notes",
                    title: "Notes",
                    width: "450px"
                },
                {
                    field: "Sequence",
                    title: "Sequence",
                    width: "80px"
                },
                {
                    field: "isDefault",
                    title: "Is Default",
                    width: "80px"
                }
            ]
        };


        $scope.CompanySectionData = [
            {
                "sectionName": "Accounts",
                "sectionCode": "css374657",
                "company": "Cloud Software Solution Ltd.",
                "brance": "Main Branch",
                "notes": "Demo Notes",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "sectionName": "Accounts",
                "sectionCode": "css374657",
                "company": "Cloud Software Solution Ltd.",
                "brance": "Main Branch",
                "notes": "Demo Notes",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "sectionName": "Accounts",
                "sectionCode": "css374657",
                "company": "Cloud Software Solution Ltd.",
                "brance": "Main Branch",
                "notes": "Demo Notes",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "sectionName": "Accounts",
                "sectionCode": "css374657",
                "company": "Cloud Software Solution Ltd.",
                "brance": "Main Branch",
                "notes": "Demo Notes",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "sectionName": "Accounts",
                "sectionCode": "css374657",
                "company": "Cloud Software Solution Ltd.",
                "brance": "Main Branch",
                "notes": "Demo Notes",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "sectionName": "Accounts",
                "sectionCode": "css374657",
                "company": "Cloud Software Solution Ltd.",
                "brance": "Main Branch",
                "notes": "Demo Notes",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "sectionName": "Accounts",
                "sectionCode": "css374657",
                "company": "Cloud Software Solution Ltd.",
                "brance": "Main Branch",
                "notes": "Demo Notes",
                "Sequence": "01",
                "isDefault": "0"
            }
        ];

        $scope.CompanySectionOptions = {
            dataSource: $scope.CompanySectionData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "30px"},
                {
                    field: "sectionName",
                    title: "Section Name",
                    width: "250px"
                },
                {
                    field: "sectionCode",
                    title: "Section Code",
                    width: "180px"
                },
                {
                    field: "company",
                    title: "Company",
                    width: "250px"
                },
                {
                    field: "brance",
                    title: "Brance",
                    width: "250px"
                },
                {
                    field: "notes",
                    title: "Notes",
                    width: "450px"
                },
                {
                    field: "Sequence",
                    title: "Sequence",
                    width: "80px"
                },
                {
                    field: "isDefault",
                    title: "Is Default",
                    width: "80px"
                }
            ]
        };

        $scope.CompanySubSectionData = [
            {
                "subSectionName": "Hr Account",
                "subSectionCode": "css23456",
                "sectionName": "HR",
                "sectionCode": "css450669",
                "notes": "Hr Management Sub Section",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "subSectionName": "Hr Account",
                "subSectionCode": "css23456",
                "sectionName": "HR",
                "sectionCode": "css450669",
                "notes": "Hr Management Sub Section",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "subSectionName": "Hr Account",
                "subSectionCode": "css23456",
                "sectionName": "HR",
                "sectionCode": "css450669",
                "notes": "Hr Management Sub Section",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "subSectionName": "Hr Account",
                "subSectionCode": "css23456",
                "sectionName": "HR",
                "sectionCode": "css450669",
                "notes": "Hr Management Sub Section",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "subSectionName": "Hr Account",
                "subSectionCode": "css23456",
                "sectionName": "HR",
                "sectionCode": "css450669",
                "notes": "Hr Management Sub Section",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "subSectionName": "Hr Account",
                "subSectionCode": "css23456",
                "sectionName": "HR",
                "sectionCode": "css450669",
                "notes": "Hr Management Sub Section",
                "Sequence": "01",
                "isDefault": "0"
            }
        ];

        $scope.CompanySubSectionOptions = {
            dataSource: $scope.CompanySubSectionData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "30px"},
                {
                    field: "subSectionName",
                    title: "Sub Section Name",
                    width: "250px"
                },
                {
                    field: "subSectionCode",
                    title: "Sub Section Code",
                    width: "180px"
                },
                {
                    field: "sectionName",
                    title: "Section Name",
                    width: "250px"
                },
                {
                    field: "sectionCode",
                    title: "Section Code",
                    width: "250px"
                },
                {
                    field: "notes",
                    title: "Notes",
                    width: "450px"
                },
                {
                    field: "Sequence",
                    title: "Sequence",
                    width: "80px"
                },
                {
                    field: "isDefault",
                    title: "Is Default",
                    width: "80px"
                }
            ]
        };

        $scope.CompanyGroupData = [
            {
                "groupName": "Senior Staff",
                "groupCode": "css123450",
                "company": "Cloud Software Solution ltd.",
                "branch": "Main Branch",
                "notes": "All Old Staff who are with the company more than 20 years",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "groupName": "Senior Staff",
                "groupCode": "css123450",
                "company": "Cloud Software Solution ltd.",
                "branch": "Main Branch",
                "notes": "All Old Staff who are with the company more than 20 years",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "groupName": "Senior Staff",
                "groupCode": "css123450",
                "company": "Cloud Software Solution ltd.",
                "branch": "Main Branch",
                "notes": "All Old Staff who are with the company more than 20 years",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "groupName": "Senior Staff",
                "groupCode": "css123450",
                "company": "Cloud Software Solution ltd.",
                "branch": "Main Branch",
                "notes": "All Old Staff who are with the company more than 20 years",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "groupName": "Senior Staff",
                "groupCode": "css123450",
                "company": "Cloud Software Solution ltd.",
                "branch": "Main Branch",
                "notes": "All Old Staff who are with the company more than 20 years",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "groupName": "Senior Staff",
                "groupCode": "css123450",
                "company": "Cloud Software Solution ltd.",
                "branch": "Main Branch",
                "notes": "All Old Staff who are with the company more than 20 years",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "groupName": "Senior Staff",
                "groupCode": "css123450",
                "company": "Cloud Software Solution ltd.",
                "branch": "Main Branch",
                "notes": "All Old Staff who are with the company more than 20 years",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "groupName": "Senior Staff",
                "groupCode": "css123450",
                "company": "Cloud Software Solution ltd.",
                "branch": "Main Branch",
                "notes": "All Old Staff who are with the company more than 20 years",
                "Sequence": "01",
                "isDefault": "0"
            }
        ];

        $scope.CompanyGroupOptions = {
            dataSource: $scope.CompanyGroupData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "30px"},
                {
                    field: "groupName",
                    title: "Group Name",
                    width: "250px"
                },
                {
                    field: "groupCode",
                    title: "Group Code",
                    width: "180px"
                },
                {
                    field: "company",
                    title: "Company",
                    width: "350px"
                },
                {
                    field: "branch",
                    title: "Branch",
                    width: "200px"
                },
                {
                    field: "notes",
                    title: "Notes",
                    width: "450px"
                },
                {
                    field: "Sequence",
                    title: "Sequence",
                    width: "80px"
                },
                {
                    field: "isDefault",
                    title: "Is Default",
                    width: "80px"
                }
            ]
        };

        $scope.CompanySubGroupData = [
            {
                "subGroupName": "Senior Advisor",
                "subGroupCode": "css123456.",
                "GroupName": "Senior Staff",
                "GroupCode": "css123450",
                "notes": "Cloud Software Solution Ltd staff who always advice for company betterment",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "subGroupName": "Senior Advisor",
                "subGroupCode": "css123456.",
                "GroupName": "Senior Staff",
                "GroupCode": "css123450",
                "notes": "Cloud Software Solution Ltd staff who always advice for company betterment",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "subGroupName": "Senior Advisor",
                "subGroupCode": "css123456.",
                "GroupName": "Senior Staff",
                "GroupCode": "css123450",
                "notes": "Cloud Software Solution Ltd staff who always advice for company betterment",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "subGroupName": "Senior Advisor",
                "subGroupCode": "css123456.",
                "GroupName": "Senior Staff",
                "GroupCode": "css123450",
                "notes": "Cloud Software Solution Ltd staff who always advice for company betterment",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "subGroupName": "Senior Advisor",
                "subGroupCode": "css123456.",
                "GroupName": "Senior Staff",
                "GroupCode": "css123450",
                "notes": "Cloud Software Solution Ltd staff who always advice for company betterment",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "subGroupName": "Senior Advisor",
                "subGroupCode": "css123456.",
                "GroupName": "Senior Staff",
                "GroupCode": "css123450",
                "notes": "Cloud Software Solution Ltd staff who always advice for company betterment",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "subGroupName": "Senior Advisor",
                "subGroupCode": "css123456.",
                "GroupName": "Senior Staff",
                "GroupCode": "css123450",
                "notes": "Cloud Software Solution Ltd staff who always advice for company betterment",
                "Sequence": "01",
                "isDefault": "0"
            },
            {
                "subGroupName": "Senior Advisor",
                "subGroupCode": "css123456.",
                "GroupName": "Senior Staff",
                "GroupCode": "css123450",
                "notes": "Cloud Software Solution Ltd staff who always advice for company betterment",
                "Sequence": "01",
                "isDefault": "0"
            }

        ];

        $scope.CompanySubGroupOptions = {
            dataSource: $scope.CompanySubGroupData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "30px"},
                {
                    field: "subGroupName",
                    title: "Sub Group Name",
                    width: "250px"
                },
                {
                    field: "subGroupCode",
                    title: "Sub Group Code",
                    width: "180px"
                },
                {
                    field: "GroupName",
                    title: "Group Name",
                    width: "250px"
                },
                {
                    field: "GroupCode",
                    title: "Group Code",
                    width: "250px"
                },
                {
                    field: "notes",
                    title: "Notes",
                    width: "450px"
                },
                {
                    field: "Sequence",
                    title: "Sequence",
                    width: "80px"
                },
                {
                    field: "isDefault",
                    title: "Is Default",
                    width: "80px"
                }

            ]
        };


        // $scope.CompanylInfoData2 = [
        //     {
        //         "companyName": "Cloud Software Solution Ltd.",
        //     }
        // ];
        //
        // $scope.CompanylInfoDataOptions2 = {
        //     dataSource: $scope.CompanylInfoData,
        //     sortable: true,
        //     pageable: true,
        //     scrollable: true,
        //     dataBound: function () {
        //         this.expandRow(this.tbody.find("tr.k-master-row").first());
        //     },
        //     columns: [
        //         {selectable: true, width: "30px"},
        //         {
        //             field: "companyName",
        //             title: "Company Name",
        //             width: "250px"
        //         }
        //     ]
        // };




    });