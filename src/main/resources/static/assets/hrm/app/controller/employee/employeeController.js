app.controller("employeeController",
    function ($rootScope, $scope, $uibModal, $http, $location, $timeout, $filter, EmployeeService, TokenService) {

        //Initialization
        var urlObject = $location.absUrl().split( '/' );
        $scope.employee = {};
        $scope.employeeGeneralInfo = {};
        $scope.EmployeeTab = urlObject[6];
        $rootScope.user =[];

        function init() {
        
            TokenService.getToken()
                .then(function (response){
                    $rootScope.user = response.data;
                    sessionStorage.setItem('accessToken', response.data.token);
                    localStorage.setItem('logged_in', true);
                }, function(error){
                    console.log(error);
                });
        }

        init();



        //Open Department Modal
        $scope.Building = function(){
            $scope.modalInstance = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                templateUrl: '/configurations/systemVariable/department',
                controller :'employeeModalController',
                controllerAs: '$ctrl',
                size: 'lg',
                resolve: {
                    parameters:{}
                }
            });
        }

        //Open Building Modal
        $scope.Building = function(){
            $scope.modalInstance = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                templateUrl: '/configurations/basicInfo/building',
                controller :'BuildingController',
                controllerAs: '$ctrl',
                size: 'lg',
                resolve: {
                    parameters:{}
                }
            });
        }

        $scope.openEmployeeForm = function (pageName) {
            $scope.EmployeeTab = pageName;
        }
        $scope.openEmployeeTab = function (pageName) {
                    $scope.EmployeeTab = pageName;
                }

        $scope.cancel = function () {
            alert('Canceled');
        }
        $scope.deleteEmployee = function () {
            alert('Delete');
        }

        $scope.sameAsPresent = function(same_As_Present){
            if(same_As_Present){
                $scope.employeeGeneralInfo.permanentAddress = $scope.employeeGeneralInfo.presentAddress;
                $scope.employeeGeneralInfo.permanentPS= $scope.employeeGeneralInfo.presentPS;
                $scope.employeeGeneralInfo.permanentZipCode = $scope.employeeGeneralInfo.presentZipCode;
                $scope.employeeGeneralInfo.permanentCountry = $scope.employeeGeneralInfo.presentCountry;
                $scope.employeeGeneralInfo.pernanentDistrict = $scope.employeeGeneralInfo.presentDistrict;
            }else{
                $scope.employeeGeneralInfo.permanentAddress = '';
                $scope.employeeGeneralInfo.permanentPS= '';
                $scope.employeeGeneralInfo.permanentZipCode = '';
                $scope.employeeGeneralInfo.permanentCountry = '';
                $scope.employeeGeneralInfo.pernanentDistrict = '';
            }
        }

       // Save Employee Official
       $scope.saveForm = function (isValid, employeeOfficeInfo) {
           employeeOfficeInfo.EmployeeCode = $scope.EmployeeCode;
           EmployeeService.saveOfficialEmployee(employeeOfficeInfo, $rootScope.user.token)
           .then(function (resp) {
                          console.log(resp);
                      }, function(error){
                          console.log(error);
                      });
      }

      // Save Employee Rule
      $scope.saveRuleForm = function (isValid, employeeRuleInfo) {
           employeeRuleInfo.EmployeeCode = $scope.EmployeeCode;
          EmployeeService.saveRuleEmployee(employeeRuleInfo, $rootScope.user.token)
          .then(function (resp) {
                          console.log(resp);
                      }, function(error){
                          console.log(error);
                      });

      }
      // Save Emergency Info
      $scope.saveEmergencyForm = function (isValid, empEmergencyInfo) {
           empEmergencyInfo.EmployeeCode = $scope.EmployeeCode;
          EmployeeService.saveEmergencyEmployee(empEmergencyInfo, $rootScope.user.token)
          .then(function (resp) {
                          console.log(resp);
                      }, function(error){
                          console.log(error);
                      });
      }
      // Save Education Info
      $scope.saveEducationForm = function (isValid, empEducationInfo) {
           empEducationInfo.EmployeeCode = $scope.EmployeeCode;
          EmployeeService.saveEducationEmployee(empEducationInfo, $rootScope.user.token)
          .then(function (resp) {
                          console.log(resp);
                      }, function(error){
                          console.log(error);
                      });
      }
      // Save Education Info
      $scope.saveQualificationForm = function (isValid, employeeQualificationInfo) {
           employeeQualificationInfo.EmployeeCode = $scope.EmployeeCode;
          EmployeeService.saveQualificationEmployee(employeeQualificationInfo, $rootScope.user.token)
          .then(function (resp) {
                          console.log(resp);
                      }, function(error){
                          console.log(error);
                      });
      }

       $scope.saveFamilyForm = function (isValid,empFamilyInfo){
           empFamilyInfo.EmployeeCode = $scope.EmployeeCode;
           EmployeeService.saveFamilyEmployee(empFamilyInfo, $rootScope.user.token)
           .then(function (resp) {
                                  console.log(resp);
                              }, function(error){
                                  console.log(error);
                              });
      }

       $scope.saveHistoryForm = function (isValid,empHistoryInfo){
           empFamilyInfo.EmployeeCode = $scope.EmployeeCode;
           EmployeeService.saveHistoryEmployee(empHistoryInfo, $rootScope.user.token)
           .then(function (resp) {
                                 console.log(resp);
                             }, function(error){
                                 console.log(error);
                             });
       }


        $scope.getEmployeeByCode = function (EmployeeCode) {
            EmployeeService.getEmployeeById(EmployeeCode, TokenService.getAccessToken()).then(function(resp){
               $scope.employeeGeneralInfo = resp;
            });
        }

        $scope.data = [
            {
                "FirstName": "Sohag",
                "LastName": "Ahmed",
                "Country": "Bangladesh",
                "City": "Dhaka",
                "Title": "This is test"
            }
        ]

        $scope.mainGridOptions = {
            dataSource: $scope.data,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [{
                field: "FirstName",
                title: "First Name",
                width: "120px"
            }, {
                field: "LastName",
                title: "Last Name",
                width: "120px"
            }, {
                field: "Country",
                width: "120px"
            }, {
                field: "City",
                width: "120px"
            }, {
                field: "Title"
            }]
        };

        $scope.educationalInfoData = [
            {
                "typeOfEducation": "Graduation",
                "instituteName": "KU",
                "majorSubject": "CSE",
                "ExamRoll": "1089882",
                "registrationNo": "38677456",
                "educationCountry": "Bangladesh",
                "passingYear": "2009",
                "result": "3.75"
            },
            {
                "typeOfEducation": "Graduation",
                "instituteName": "KU",
                "majorSubject": "CSE",
                "ExamRoll": "1089882",
                "registrationNo": "38677456",
                "educationCountry": "Bangladesh",
                "passingYear": "2009",
                "result": "3.75"
            },
            {
                "typeOfEducation": "Graduation",
                "instituteName": "KU",
                "majorSubject": "CSE",
                "ExamRoll": "1089882",
                "registrationNo": "38677456",
                "educationCountry": "Bangladesh",
                "passingYear": "2009",
                "result": "3.75"
            },
            {
                "typeOfEducation": "Graduation",
                "instituteName": "KU",
                "majorSubject": "CSE",
                "ExamRoll": "1089882",
                "registrationNo": "38677456",
                "educationCountry": "Bangladesh",
                "passingYear": "2009",
                "result": "3.75"
            },
            {
                "typeOfEducation": "Graduation",
                "instituteName": "KU",
                "majorSubject": "CSE",
                "ExamRoll": "1089882",
                "registrationNo": "38677456",
                "educationCountry": "Bangladesh",
                "passingYear": "2009",
                "result": "3.75"
            },
            {
                "typeOfEducation": "Graduation",
                "instituteName": "KU",
                "majorSubject": "CSE",
                "ExamRoll": "1089882",
                "registrationNo": "38677456",
                "educationCountry": "Bangladesh",
                "passingYear": "2009",
                "result": "3.75"
            },
        ];


        $scope.educationalGridOptions = {
            dataSource: $scope.educationalInfoData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
                {
                    field: "typeOfEducation",
                    title: "Type Of Education",
                    width: "150px"
                },
                {
                    field: "instituteName",
                    title: "Institute Name",
                    width: "380px"
                },
                {
                    field: "majorSubject",
                    title: "Major Subject",
                    width: "250px"
                },
                {
                    field: "ExamRoll",
                    title: "Examination Roll",
                    width: "150px"
                },
                {
                    field: "registrationNo",
                    title: "Registration No.",
                    width: "150px"
                },
                {
                    field: "educationCountry",
                    title: "Country",
                    width: "150px"
                },
                {
                    field: "passingYear",
                    title: "Passing Year",
                    width: "120px"
                },
                {
                    field: "result",
                    title: "Result",
                    width: "120px"
                }
            ]
        };


        //Rule Info Tab Bank Information

        $scope.BankInfoData = [
            {
                "bankName": "The City Bank",
                "branchName": "Pollabi Branch",
                "accountName": "Niamul Hasan",
                "accountNumber": "1012045887100",
            },
            {
                "bankName": "The City Bank",
                "branchName": "Pollabi Branch",
                "accountName": "Niamul Hasan",
                "accountNumber": "1012045887100",
            },
            {
                "bankName": "The City Bank",
                "branchName": "Pollabi Branch",
                "accountName": "Niamul Hasan",
                "accountNumber": "1012045887100",
            },
            {
                "bankName": "The City Bank",
                "branchName": "Pollabi Branch",
                "accountName": "Niamul Hasan",
                "accountNumber": "1012045887100",
            }

        ];

        $scope.BankinfoGridOptions = {
            dataSource: $scope.BankInfoData,
            sortable: true,
            pageable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
                {
                    field: "bankName",
                    title: "Bank Name",
                    width: "120px"
                },
                {
                    field: "branchName",
                    title: "Branch Name",
                    width: "120px"
                },
                {
                    field: "accountName",
                    title: "Account Name",
                    width: "120px"
                },
                {
                    field: "accountNumber",
                    title: "Account No.",
                    width: "120px"
                }
            ]
        };


        //    Emergency Contact

        $scope.EmergencyContactData = [
            {
                "emergencyContactName": "Raisul Islam",
                "emcontactAddress": "House 687-689 , Flat 1A/2A, Road 32, Avenue 6 , Mirpur DOHS",
                "contactRelationship": "Brother",
                "EmcontactPhone": "01677296190",
                "EmcontactEmail": "niamul111@gmail.com",
            },
            {
                "emergencyContactName": "Raisul Islam",
                "emcontactAddress": "House 687-689 , Flat 1A/2A, Road 32, Avenue 6 , Mirpur DOHS",
                "contactRelationship": "Brother",
                "EmcontactPhone": "01677296190",
                "EmcontactEmail": "niamul111@gmail.com",
            },
            {
                "emergencyContactName": "Raisul Islam",
                "emcontactAddress": "House 687-689 , Flat 1A/2A, Road 32, Avenue 6 , Mirpur DOHS",
                "contactRelationship": "Brother",
                "EmcontactPhone": "01677296190",
                "EmcontactEmail": "niamul111@gmail.com",
            },
            {
                "emergencyContactName": "Raisul Islam",
                "emcontactAddress": "House 687-689 , Flat 1A/2A, Road 32, Avenue 6 , Mirpur DOHS",
                "contactRelationship": "Brother",
                "EmcontactPhone": "01677296190",
                "EmcontactEmail": "niamul111@gmail.com",
            },
            {
                "emergencyContactName": "Raisul Islam",
                "emcontactAddress": "House 687-689 , Flat 1A/2A, Road 32, Avenue 6 , Mirpur DOHS",
                "contactRelationship": "Brother",
                "EmcontactPhone": "01677296190",
                "EmcontactEmail": "niamul111@gmail.com",
            },

        ];


        $scope.EmergencyContactOptions = {
            dataSource: $scope.EmergencyContactData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
                {
                    field: "emergencyContactName",
                    title: "Contact Name",
                    width: "90px"
                },
                {
                    field: "emcontactAddress",
                    title: "Address",
                    width: "350px"
                },
                {
                    field: "contactRelationship",
                    title: "Relationship",
                    width: "100px"
                },
                {
                    field: "EmcontactPhone",
                    title: "Phone",
                    width: "120px"
                },
                {
                    field: "EmcontactEmail",
                    title: "Email",
                    width: "200px"
                }
            ]
        };


        //Professional Qualification

        $scope.ProfessionalQualificationData = [
            {
                "certifactionName": "AWS DevOps Engineer",
                "certifactionNo": "aws1267890m0",
                "courseDuration": "6 Months",
                "issuedBy": "Amzone",
                "vendorCountry": "USA",
                "certifiedDate": "01/12/2016",
                "expiryDate": "01/12/2019",
                "notes": "I have achived top performence award among all participent",
            },
            {
                "certifactionName": "AWS DevOps Engineer",
                "certifactionNo": "aws1267890m0",
                "courseDuration": "6 Months",
                "issuedBy": "Amzone",
                "vendorCountry": "USA",
                "certifiedDate": "01/12/2016",
                "expiryDate": "01/12/2019",
                "notes": "I have achived top performence award among all participent",
            },
            {
                "certifactionName": "AWS DevOps Engineer",
                "certifactionNo": "aws1267890m0",
                "courseDuration": "6 Months",
                "issuedBy": "Amzone",
                "vendorCountry": "USA",
                "certifiedDate": "01/12/2016",
                "expiryDate": "01/12/2019",
                "notes": "I have achived top performence award among all participent",
            },
            {
                "certifactionName": "AWS DevOps Engineer",
                "certifactionNo": "aws1267890m0",
                "courseDuration": "6 Months",
                "issuedBy": "Amzone",
                "vendorCountry": "USA",
                "certifiedDate": "01/12/2016",
                "expiryDate": "01/12/2019",
                "notes": "I have achived top performence award among all participent",
            },
            {
                "certifactionName": "AWS DevOps Engineer",
                "certifactionNo": "aws1267890m0",
                "courseDuration": "6 Months",
                "issuedBy": "Amzone",
                "vendorCountry": "USA",
                "certifiedDate": "01/12/2016",
                "expiryDate": "01/12/2019",
                "notes": "I have achived top performence award among all participent",
            },
            {
                "certifactionName": "AWS DevOps Engineer",
                "certifactionNo": "aws1267890m0",
                "courseDuration": "6 Months",
                "issuedBy": "Amzone",
                "vendorCountry": "USA",
                "certifiedDate": "01/12/2016",
                "expiryDate": "01/12/2019",
                "notes": "I have achived top performence award among all participent",
            },
            {
                "certifactionName": "AWS DevOps Engineer",
                "certifactionNo": "aws1267890m0",
                "courseDuration": "6 Months",
                "issuedBy": "Amzone",
                "vendorCountry": "USA",
                "certifiedDate": "01/12/2016",
                "expiryDate": "01/12/2019",
                "notes": "I have achived top performence award among all participent",
            }

        ];

        $scope.ProfessionalQualificationOptions = {
            dataSource: $scope.ProfessionalQualificationData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
                {
                    field: "certifactionName",
                    title: "Certifaction Name",
                    width: "250px"
                },
                {
                    field: "certifactionNo",
                    title: "Certifaction No.",
                    width: "180px"
                },
                {
                    field: "courseDuration",
                    title: "Course Duration",
                    width: "130px"
                },
                {
                    field: "issuedBy",
                    title: "Issued By",
                    width: "180px"
                },
                {
                    field: "vendorCountry",
                    title: "Vendor Country",
                    width: "150px"
                },
                {
                    field: "certifiedDate",
                    title: "Certified Date",
                    width: "120px"
                },
                {
                    field: "expiryDate",
                    title: "Expiry Date",
                    width: "120px"
                },
                {
                    field: "notes",
                    title: "Notes",
                    width: "650px"
                }
            ]
        };

        // Work Experience

        $scope.PreviousWorkExperienceData = [
            {
                "companyName": "Cloud Software Solution Ltd.",
                "Designation": "Senior Software Engineer",
                "locationCountry": "Bangladesh",
                "locCity": "Dhaka",
                "address": "House 687-689 , Flat 1A/2A, Road 32, Avenue 6 , Mirpur DOHS",
                "startDate": "01/12/2016",
                "endDate": "01/12/2019",
                "startingSalary": "75000",
                "closingSalary": "185000",
                "SalCurrency": "BDT",
                "phone": "01677296190",
                "resignCause": "Looking for better opurtunity",
                "jobResponsibility": "Maintain ERP Software Features and Add Customer required function and new features",
            },
            {
                "companyName": "Cloud Software Solution Ltd.",
                "Designation": "Senior Software Engineer",
                "locationCountry": "Bangladesh",
                "locCity": "Dhaka",
                "address": "House 687-689 , Flat 1A/2A, Road 32, Avenue 6 , Mirpur DOHS",
                "startDate": "01/12/2016",
                "endDate": "01/12/2019",
                "startingSalary": "75000",
                "closingSalary": "185000",
                "SalCurrency": "BDT",
                "phone": "01677296190",
                "resignCause": "Looking for better opurtunity",
                "jobResponsibility": "Maintain ERP Software Features and Add Customer required function and new features",
            },
            {
                "companyName": "Cloud Software Solution Ltd.",
                "Designation": "Senior Software Engineer",
                "locationCountry": "Bangladesh",
                "locCity": "Dhaka",
                "address": "House 687-689 , Flat 1A/2A, Road 32, Avenue 6 , Mirpur DOHS",
                "startDate": "01/12/2016",
                "endDate": "01/12/2019",
                "startingSalary": "75000",
                "closingSalary": "185000",
                "SalCurrency": "BDT",
                "phone": "01677296190",
                "resignCause": "Looking for better opurtunity",
                "jobResponsibility": "Maintain ERP Software Features and Add Customer required function and new features",
            },
            {
                "companyName": "Cloud Software Solution Ltd.",
                "Designation": "Senior Software Engineer",
                "locationCountry": "Bangladesh",
                "locCity": "Dhaka",
                "address": "House 687-689 , Flat 1A/2A, Road 32, Avenue 6 , Mirpur DOHS",
                "startDate": "01/12/2016",
                "endDate": "01/12/2019",
                "startingSalary": "75000",
                "closingSalary": "185000",
                "SalCurrency": "BDT",
                "phone": "01677296190",
                "resignCause": "Looking for better opurtunity",
                "jobResponsibility": "Maintain ERP Software Features and Add Customer required function and new features",
            },
            {
                "companyName": "Cloud Software Solution Ltd.",
                "Designation": "Senior Software Engineer",
                "locationCountry": "Bangladesh",
                "locCity": "Dhaka",
                "address": "House 687-689 , Flat 1A/2A, Road 32, Avenue 6 , Mirpur DOHS",
                "startDate": "01/12/2016",
                "endDate": "01/12/2019",
                "startingSalary": "75000",
                "closingSalary": "185000",
                "SalCurrency": "BDT",
                "phone": "01677296190",
                "resignCause": "Looking for better opurtunity",
                "jobResponsibility": "Maintain ERP Software Features and Add Customer required function and new features",
            },
            {
                "companyName": "Cloud Software Solution Ltd.",
                "Designation": "Senior Software Engineer",
                "locationCountry": "Bangladesh",
                "locCity": "Dhaka",
                "address": "House 687-689 , Flat 1A/2A, Road 32, Avenue 6 , Mirpur DOHS",
                "startDate": "01/12/2016",
                "endDate": "01/12/2019",
                "startingSalary": "75000",
                "closingSalary": "185000",
                "SalCurrency": "BDT",
                "phone": "01677296190",
                "resignCause": "Looking for better opurtunity",
                "jobResponsibility": "Maintain ERP Software Features and Add Customer required function and new features",
            },
            {
                "companyName": "Cloud Software Solution Ltd.",
                "Designation": "Senior Software Engineer",
                "locationCountry": "Bangladesh",
                "locCity": "Dhaka",
                "address": "House 687-689 , Flat 1A/2A, Road 32, Avenue 6 , Mirpur DOHS",
                "startDate": "01/12/2016",
                "endDate": "01/12/2019",
                "startingSalary": "75000",
                "closingSalary": "185000",
                "SalCurrency": "BDT",
                "phone": "01677296190",
                "resignCause": "Looking for better opurtunity",
                "jobResponsibility": "Maintain ERP Software Features and Add Customer required function and new features",
            }
        ];

        $scope.PreviousWorkExperienceOptions = {
            dataSource: $scope.PreviousWorkExperienceData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
                {
                    field: "companyName",
                    title: "Company Name",
                    width: "280px"
                },
                {
                    field: "Designation",
                    title: "Designation",
                    width: "250px"
                },
                {
                    field: "locationCountry",
                    title: "Location Country",
                    width: "180px"
                },
                {
                    field: "locCity",
                    title: "City",
                    width: "180px"
                },
                {
                    field: "address",
                    title: "Address",
                    width: "500px"
                },
                {
                    field: "startDate",
                    title: "Start Date",
                    width: "120px"
                },
                {
                    field: "endDate",
                    title: "End Date",
                    width: "120px"
                },
                {
                    field: "startingSalary",
                    title: "Starting Salary",
                    width: "120px"
                },
                {
                    field: "closingSalary",
                    title: "Closing Salary",
                    width: "120px"
                },
                {
                    field: "SalCurrency",
                    title: "Select Currency",
                    width: "120px"
                },
                {
                    field: "phone",
                    title: "Phone",
                    width: "120px"
                },
                {
                    field: "resignCause",
                    title: "Resign Cause",
                    width: "350px"
                },
                {
                    field: "jobResponsibility",
                    title: "Job Responsibility",
                    width: "650px"
                }
            ]
        };


    //Language

        $scope.LanguageProficiencyData = [
            {
                "languageName": "English",
                "listening": "7",
                "reading": "6.5",
                "writing": "7.5",
                "speaking": "8.5",
                "notes": "I also can speak american and british accent if there any client to need speak"
            },
            {
                "languageName": "English",
                "listening": "7",
                "reading": "6.5",
                "writing": "7.5",
                "speaking": "8.5",
                "notes": "I also can speak american and british accent if there any client to need speak"
            },
            {
                "languageName": "English",
                "listening": "7",
                "reading": "6.5",
                "writing": "7.5",
                "speaking": "8.5",
                "notes": "I also can speak american and british accent if there any client to need speak"
            },
            {
                "languageName": "English",
                "listening": "7",
                "reading": "6.5",
                "writing": "7.5",
                "speaking": "8.5",
                "notes": "I also can speak american and british accent if there any client to need speak"
            },
            {
                "languageName": "English",
                "listening": "7",
                "reading": "6.5",
                "writing": "7.5",
                "speaking": "8.5",
                "notes": "I also can speak american and british accent if there any client to need speak"
            },
            {
                "languageName": "English",
                "listening": "7",
                "reading": "6.5",
                "writing": "7.5",
                "speaking": "8.5",
                "notes": "I also can speak american and british accent if there any client to need speak"
            },
            {
                "languageName": "English",
                "listening": "7",
                "reading": "6.5",
                "writing": "7.5",
                "speaking": "8.5",
                "notes": "I also can speak american and british accent if there any client to need speak"
            }
        ];


        $scope.LanguageProficiencyOptions = {
            dataSource: $scope.LanguageProficiencyData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
                {
                    field: "languageName",
                    title: "Language Name",
                    width: "280px"
                },
                {
                    field: "listening",
                    title: "Listening",
                    width: "100px"
                },
                {
                    field: "reading",
                    title: "Reading",
                    width: "100px"
                },
                {
                    field: "writing",
                    title: "Writing",
                    width: "100px"
                },
                {
                    field: "speaking",
                    title: "Speaking",
                    width: "100px"
                },
                {
                    field: "notes",
                    title: "Notes",
                    width: "500px"
                }
            ]
        };

        $scope.PromotionInfoOptionsData = [
            {
                "criteria": "Department",
                "preStatus": "production",
                "postStatus": ""
            },
            {
                "criteria": "Designation",
                "preStatus": "Asst Operator",
                "postStatus": ""
            }
        ];


        $scope.PromotionInfoOptions = {
            dataSource: $scope.PromotionInfoOptionsData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
                {
                    field: "criteria",
                    title: "Criteria",
                    width: "300px"
                },
                {
                    field: "preStatus",
                    title: "Pre Status",
                    width: "300px"
                },
                {
                    field: "postStatus",
                    title: "Post Status",
                    width: "300px"
                }
            ]
        };



    });