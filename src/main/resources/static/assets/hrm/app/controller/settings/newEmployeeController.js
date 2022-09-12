app.controller("newEmployeeController",
    function($rootScope, $scope, $uibModal, $http, $location, $timeout, $filter, EmployeeService, DesignationServices, RoleServices, EmployeeTypeServices, SourceOfHireServices, LineServices, FloorServices, SectionServices, SubDepartmentServices, DepartmentServices) {

    $scope.name = 'theNameHasBeenPassed';

    $scope.departments = {};
    $scope.subDepartments = {};
    $scope.sections = {};
    $scope.floors = {};
    $scope.lines = {};
    $scope.departmentId=0;

    function getSubDepartmentListById(id){
        if(id==undefined){
            $scope.subDepartments = {};
            return;
        }

        $scope.departmentId=id;

        SubDepartmentServices.getSubDepartmentListByDepartmentId(id).then(function(resp){
            $scope.subDepartments = resp.data;
            //console.log(JSON.stringify(resp.data));
        })
    }

    function getSectionListById(id){
        if(id==undefined){
            $scope.sections = {};
            return;
        }

        $scope.subDepartmentId=id;

        SectionServices.getSectionListBySubDepartmentId(id).then(function(resp){
            $scope.sections = resp.data;
            //console.log(JSON.stringify(resp.data));
        })
    }

    function getFloorListById(id){
        if(id==undefined){
            $scope.floors = {};
            return;
        }

        $scope.sectionId=id;

        FloorServices.getFloorListBySectionId(id).then(function(resp){
            $scope.floors = resp.data;
            //console.log(JSON.stringify(resp.data));
        })
    }

    function getLineListById(id){
         if(id==undefined){
            $scope.lines = {};
            return;
        }

        $scope.floorId=id;

        LineServices.getLineListByFloorId(id).then(function(resp){
            $scope.lines = resp.data;
        })
    }

    $scope.getSubDepartmentListById = function(id){
        getSubDepartmentListById(id);
    }

    $scope.getSectionListById = function(id){
        getSectionListById(id);
     }

    $scope.getFloorListById = function(id){
         getFloorListById(id);
     }

     $scope.getLineListById = function(id){
          getLineListById(id);
     }

    function getAllDepartmentData(){
        DepartmentServices.getAllDepartment().then(function(resp){
            $scope.departments = resp.data.content;
        });
    }

    function init(){
        getAllDepartmentData();

        DesignationServices.getAllDesignation().then(function(resp){
           $scope.designations = resp.data.content;
           console.log(resp.data.content);
       });

       RoleServices.getAllRoles().then(function(resp){
           $scope.roles = resp.data.content;
           console.log(resp.data.content);
       });

       EmployeeTypeServices.getAllEmployeeType().then(function(resp){
          $scope.employeeTypes = resp.data.content;
          console.log(resp.data.content);
      });

       SourceOfHireServices.getAllSourceOfHire().then(function(resp){
          $scope.sourceOfHires = resp.data.content;
          console.log(resp.data.content);
      });

       EmployeeService.getAllUsers().then(function(resp){
          $scope.reportingToList = resp.data.content;
          console.log(resp.data.content);
      });
    }

    init();

    var id = getQueryVariable();
    $scope.employee = {};
    $scope.employee.status = true;
    $scope.employee.department = null;
    $scope.employee.subDepartment = null;
    $scope.employee.section = null;
    $scope.employee.floor = null;
    $scope.employee.line = null;
    $scope.employee.designation = null;
    $scope.employee.role = null;
    $scope.employee.employeeType = null;
    $scope.employee.sourceOfHire = null;
    function editForm(id) {
        EmployeeService.getEmployeeById(id).then(function(resp){
            $scope.employee.department      = resp.data.department;
            $scope.employee.subDepartment   = resp.data.subDepartment;
            $scope.employee.section         = resp.data.section;
            $scope.employee.floor           = resp.data.floor;
            $scope.employee.line            = resp.data.line;
            $scope.employee.designation     = resp.data.designation;
            $scope.employee.role            = resp.data.role;
            $scope.employee.employeeType    = resp.data.employeeType;

            $scope.employee.sourceOfHire    = resp.data.sourceOfHire;
            $scope.employee                 = resp.data;


            $scope.employee.dateOfExit      = $filter('date')(resp.data.dateOfExit,'yyyy-MM-dd');
            $scope.employee.dateOfJoining   = $filter('date')(resp.data.dateOfJoining,'yyyy-MM-dd');
            $scope.employee.dateOfBirth     = $filter('date')(resp.data.dateOfBirth,'yyyy-MM-dd');
            $scope.employee.fromDate        = $filter('date')(resp.data.fromDate,'yyyy-MM-dd');
            $scope.employee.toDate          = $filter('date')(resp.data.toDate,'yyyy-MM-dd');

            $scope.calculateAge($scope.employee.dateOfBirth);

            if(resp.data.department != null){
            $scope.departmentId             = resp.data.department.id;
            getSubDepartmentListById(resp.data.department.id);
             getSectionListById(resp.data.subDepartment.id);
             getFloorListById(resp.data.section.id);
             getLineListById(resp.data.floor.id);
            }




        })
    }

    if (id != 0){
        editForm(id);
    }

    $scope.KsPoint1Selected = "ks-point-selected";
    $scope.KsTxt1Selected = "ks-text-selected";

    // New Employee form Action

    $scope.saveButton = true;
    $scope.finishButton = false;
    $scope.employeePrevForm = 'BasicInfo';
    $scope.employeeNextForm = 'AdditionalInfo';
    $scope.PrevBtnEnabled = true;
    $scope.NextBtnEnabled = false;
    $scope.openEmployeeForm = function(pageName){
        //alert(pageName);
        var pages = ['BasicInfo','AdditionalInfo','FinancialInfo','PersonalInfo','AddressInfo','EducationInfo','OtherCertificationInfo','PreviousJobHistoryInfo','EmergencyInfo'];
        //alert(pages.length);
        var OnePoint = "", TwoPoint = "", ThreePoint = "", FourPoint = "", FivePoint = "", SixPoint = "", SevenPoint = "", EightPoint = "", NinePoint = "";
        var OneText = "", TwoText = "", ThreeText = "", FourText = "", FiveText = "", SixText = "", SevenText = "", EightText = "", NineText = "";

        $scope.BasicInformation = false;
        $scope.AdditionalInfo = false;
        $scope.FinancialDetails = false;
        $scope.PersonalInformation = false;
        $scope.Address = false;
        $scope.EducationInformation = false;
        $scope.OtherCertification = false;
        $scope.WorkExperience = false;
        $scope.EmergencyInfo = false;

        $scope.PrevBtnEnabled = false;
        $scope.NextBtnEnabled = false;

        $scope.saveButton = true;
        $scope.finishButton = false;

        //alert(pages[0]);
        if(pages[0] == pageName)
        {
            OnePoint = "ks-point-selected";
            OneText = "ks-text-selected";
            $scope.BasicInformation = true;
        }
        else if(pages[1] == pageName)
        {
            TwoPoint = "ks-point-selected";
            TwoText = "ks-text-selected";
            $scope.AdditionalInfo = true;
        }
        else if(pages[2] == pageName)
        {
            ThreePoint = "ks-point-selected";
            ThreeText = "ks-text-selected";
            $scope.FinancialDetails = true;
        }
        else if(pages[3] == pageName)
        {
            FourPoint = "ks-point-selected";
            FourText = "ks-text-selected";
            $scope.PersonalInformation = true;
        }
        else if(pages[4] == pageName)
        {
            FivePoint = "ks-point-selected";
            FiveText = "ks-text-selected";
            $scope.Address = true;
        }
        else if(pages[5] == pageName)
        {
            SixPoint = "ks-point-selected";
            SixText = "ks-text-selected";
            $scope.EducationInformation = true;
        }
        else if(pages[6] == pageName)
        {
            SevenPoint = "ks-point-selected";
            SevenText = "ks-text-selected";
            $scope.OtherCertification = true;
        }
        else if(pages[7] == pageName)
        {
            EightPoint = "ks-point-selected";
            EightText = "ks-text-selected";
            $scope.WorkExperience = true;
        }
        else if(pages[8] == pageName)
        {
            NinePoint = "ks-point-selected";
            NineText = "ks-text-selected";
            $scope.EmergencyInfo = true;
            $scope.saveButton = false;
            $scope.finishButton = true;
        }


        $scope.KsPoint1Selected = OnePoint;
        $scope.KsTxt1Selected = OneText;
        $scope.KsPoint2Selected = TwoPoint;
        $scope.KsTxt2Selected = TwoText;
        $scope.KsPoint3Selected = ThreePoint;
        $scope.KsTxt3Selected = ThreeText;
        $scope.KsPoint4Selected = FourPoint;
        $scope.KsTxt4Selected = FourText;
        $scope.KsPoint5Selected = FivePoint;
        $scope.KsTxt5Selected = FiveText;
        $scope.KsPoint6Selected = SixPoint;
        $scope.KsTxt6Selected = SixText;
        $scope.KsPoint7Selected = SevenPoint;
        $scope.KsTxt7Selected = SevenText;
        $scope.KsPoint8Selected = EightPoint;
        $scope.KsTxt8Selected = EightText;
        $scope.KsPoint9Selected = NinePoint;
        $scope.KsTxt9Selected = NineText;

        if(pageName == 'BasicInfo')
        {
            $scope.employeePrevForm = '';
            $scope.employeeNextForm = 'AdditionalInfo';
            $scope.PrevBtnEnabled = true;
            $scope.NextBtnEnabled = false;
        }

        if(pageName =='AdditionalInfo')
        {
            $scope.employeePrevForm = 'BasicInfo';
            $scope.employeeNextForm = 'FinancialInfo';
        }

        if(pageName =='FinancialInfo')
        {
            $scope.employeePrevForm = 'AdditionalInfo';
            $scope.employeeNextForm = 'PersonalInfo';
        }

        if(pageName == 'PersonalInfo')
        {
            $scope.employeePrevForm = 'FinancialInfo';
            $scope.employeeNextForm = 'AddressInfo';
        }

        if(pageName == 'AddressInfo')
        {
            $scope.employeePrevForm = 'PersonalInfo';
            $scope.employeeNextForm = 'EducationInfo';
        }

        if(pageName == 'EducationInfo')
        {
            $scope.employeePrevForm = 'AddressInfo';
            $scope.employeeNextForm = 'OtherCertificationInfo';
        }

        if(pageName == 'OtherCertificationInfo')
        {
            $scope.employeePrevForm = 'EducationInfo';
            $scope.employeeNextForm = 'PreviousJobHistoryInfo';
        }

        if(pageName == 'PreviousJobHistoryInfo')
        {
            $scope.employeePrevForm = 'PreviousJobHistoryInfo';
            $scope.employeeNextForm = 'EmergencyInfo';
        }

        if(pageName == 'EmergencyInfo')
        {
            $scope.employeePrevForm = 'EmergencyInfo';
            $scope.employeeNextForm = '';
            $scope.PrevBtnEnabled = false;
            $scope.NextBtnEnabled = true;
        }

        //alert(pageName);
    }

    $scope.EMAIL_REGEXP = /^\w+([.-]?\w+)@\w+([.-]?\w+)(.\w{2,3})+$/;

    $scope.vInvFNameCls = "";
    $scope.vInvLNameCls = "";
    $scope.vInvEmailCls = "";
    var isExist =false;
    $scope.duplicateEmail = false;
    $scope.InputValidCheck = function(value,field,employeeId){
        //alert(value);
        if(field == 'FName')
        {
            if(value == '' || value === undefined)
                $scope.vInvFNameCls = "error";
            else
                $scope.vInvFNameCls = "valid";
        }
        else if(field == 'LName')
        {
            if(value == '' || value === undefined)
                $scope.vInvLNameCls = "error";
            else
                $scope.vInvLNameCls = "valid";
        }
        else if(field == 'Email')
        {
            EmployeeService.isEmailAddressExsit(value).then(function(repon){
            console.log(repon.data);

               if(repon.data){
                   if( employeeId > 0 ){
                     $scope.emailEditModeOn = true;
                   }else{
                     $scope.vInvEmailCls = "error";
                     isExist = true;
                     $scope.duplicateEmail = true;
                      $scope.emailEditModeOn = false;

                   }
               }else{
                isExist = false;
                $scope.duplicateEmail = false;
                $scope.vInvEmailCls = "valid";
                $scope.emailEditModeOn = false;
               }
            });

            if(value == '' || value === undefined)
                $scope.vInvEmailCls = "error";
            else
                $scope.vInvEmailCls = "valid";
        }
    }

     // Form exit and go to listing page
     $scope.formExit = function(){
        //$location.path( "/organization/employee" );
        window.location.href = "/#!/organization/employee";
     }

     var formType = "New";
    $scope.save = function(employee,button){
        console.log(employee);
        //alert(employee.dateOfExit);
        //TODO: validation


       //mobile validation
       patt2 = /^([0-9\(\)\/\+ \-]*)$/;
       result2 = patt2.test(employee.phone);
        if (result2) {
            $scope.errorinPhone = false;
        } else {
            $scope.errorinPhone = true;
        }


        if(isExist == true || $scope.errorinPhone == true ||  $scope.errorInAge == true || employee.firstName =='' || employee.firstName === undefined || employee.lastName =='' || employee.lastName === undefined || employee.email =='' || employee.email === undefined || !validateEmail(employee.email))
        {
            if(employee.firstName =='' || employee.firstName === undefined)
                $scope.vInvFNameCls = "error";

            if(employee.lastName =='' || employee.lastName === undefined)
                $scope.vInvLNameCls = "error";

            if(employee.email =='' || employee.email === undefined || validateEmail(employee.email))
                $scope.vInvEmailCls = "error";

            swal({
              title: "System says!",
              text: "Please fill up the mandatory fields.",
              type: "warning",
              confirmButtonClass: "btn-danger",
              confirmButtonText: "Ok",
              closeOnConfirm: true
            },
            function(){
            });

            return;
        }


        EmployeeService.saveEmployee(employee).then(function(resp){
            console.log(resp);
            if(button == 'Finish')
            {

               swal({
                   title: "System says!",
                   text: "Employee Information saved.",
                   type: "success",
                   confirmButtonClass: "btn-primary",
                   confirmButtonText: "Ok",
                   closeOnConfirm: true
              },
              function(){
                  window.location.href = "/#!/organization/employee";
              });
            }
            else
            {
                if(formType == "New")
                {
                   swal({
                        title: "System says!",
                        text: "Employee Information saved.",
                        type: "success",
                        confirmButtonClass: "btn-primary",
                        confirmButtonText: "Ok",
                        closeOnConfirm: true
                   },
                   function(){
                       window.location.href = "/#!/organization/employee/edit/?id="+resp.data.id;
                   });

                   formType = "Edit";
                }
                else
                {
                    swal("System says!", "Employee Information saved.", "success")
                }
            }
        })
    }

    function validateEmail(email) {
      var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
      return re.test(email);
    }

    $scope.degrees = [
        {id: '1', name: 'SSC'},
        {id: '2', name: 'HSC'},
        {id: '3', name: 'Graduation'}
    ];

    $scope.years = [
        {id: '1', year: '1990'},
        {id: '2', year: '1992'},
        {id: '3', year: '1993'},
        {id: '4', year: '1994'},
        {id: '5', year: '1995'},
        {id: '6', year: '1996'},
        {id: '7', year: '1997'},
        {id: '8', year: '1998'},
        {id: '9', year: '1999'},
        {id: '10', year: '2000'},
        {id: '11', year: '2001'},
        {id: '12', year: '2002'},
        {id: '13', year: '2003'},
        {id: '14', year: '2004'},
        {id: '15', year: '2005'},
        {id: '16', year: '2006'},
        {id: '17', year: '2007'},
        {id: '18', year: '2008'},
        {id: '13', year: '2010'},
        {id: '14', year: '2011'},
        {id: '15', year: '2012'},
        {id: '16', year: '2013'},
        {id: '17', year: '2014'},
        {id: '18', year: '2015'},
        {id: '19', year: '2016'}
    ];

    $scope.Locations = [
        {id: '1', name: 'Uttara'},
        {id: '2', name: 'Mirpur'},
        {id: '3', name: 'Mohakhali'},
        {id: '4', name: 'Bannani'},
        {id: '5', name: 'Gulshan'}
    ];

    $scope.CountryList = [
        {id: '1', name: 'Bangladesh'}
    ];


    // ====== Begin Same Address Start

    $scope.presentAddress = {};
    $scope.permanentAddress = {};
    $scope.permanentAddressNull = '';

    $scope.update = function (permanentAddress)
    {
       if($scope.sameAddress[permanentAddress])
       {
            //If it is checked
           $scope.employee.permanentAddress = angular.copy($scope.employee.presentAddress);
       }
       else
       {

          $scope.email.permanentAddress = angular.copy($scope.permanentAddressNull);
       }
    }

    // ====== Begin Same Address End

    // Add Row for Education
    var educationIndex = -1;
    $scope.addBtnEducationText = "(+) Add";
    $scope.tempEducationData = {};
    $scope.employee.educations = [];
    $scope.AddEducation = function(tempEducationData){
        //alert(educationIndex);
        if(educationIndex == -1)
        {
            $scope.employee.educations.push({
                degreeName: tempEducationData.degreeName,
                session: tempEducationData.session,
                cgpa: tempEducationData.cgpa,
                outOfCgpa: tempEducationData.outOfCgpa,
                duration: tempEducationData.duration,
                passingYear: tempEducationData.passingYear,
                rollNo: tempEducationData.rollNo,
                instituteName: tempEducationData.instituteName
            });
        }
        else
        {
            $scope.employee.educations[educationIndex] = {
                degreeName: tempEducationData.degreeName,
                session: tempEducationData.session,
                cgpa: tempEducationData.cgpa,
                outOfCgpa: tempEducationData.outOfCgpa,
                duration: tempEducationData.duration,
                passingYear: tempEducationData.passingYear,
                rollNo: tempEducationData.rollNo,
                instituteName: tempEducationData.instituteName
            };

            var newDataList = [];
            angular.forEach($scope.employee.educations,function(v){
                newDataList.push(v);
            });

            $scope.employee.educations=newDataList;
            //$scope.employee.educations.push();

            console.log(JSON.stringify($scope.employee.educations));

            educationIndex = -1;
        }

        $scope.tempEducationData.degreeName = "";
        $scope.tempEducationData.session = "";
        $scope.tempEducationData.cgpa = "";
        $scope.tempEducationData.outOfCgpa = "";
        $scope.tempEducationData.duration = "";
        $scope.tempEducationData.instituteName = "";
        $scope.tempEducationData.passingYear = "";
        $scope.tempEducationData.rollNo = "";

        $scope.addBtnEducationText = "(+) Add";

        //console.log(JSON.stringify($scope.tempEducationData));
    }

    $scope.deleteEducation = function(index){
        delete $scope.employee.educations[index];
        var newDataList = [];
        angular.forEach($scope.employee.educations,function(v){
            newDataList.push(v);
        });

        $scope.employee.educations=newDataList;
    }

    $scope.editEducation = function(index){
        $scope.tempEducationData.degreeName = $scope.employee.educations[index].degreeName;
        $scope.tempEducationData.session = $scope.employee.educations[index].session;
        $scope.tempEducationData.cgpa = $scope.employee.educations[index].cgpa;
        $scope.tempEducationData.outOfCgpa = $scope.employee.educations[index].outOfCgpa;
        $scope.tempEducationData.duration = $scope.employee.educations[index].duration;
        $scope.tempEducationData.instituteName = $scope.employee.educations[index].instituteName;
        $scope.tempEducationData.passingYear = $scope.employee.educations[index].passingYear;
        $scope.tempEducationData.rollNo = $scope.employee.educations[index].rollNo;

        $scope.addBtnEducationText = "Update";
        educationIndex = index;

        console.log(JSON.stringify($scope.tempEducationData));
    }
    // End

    // Add Row for Other Certification
    var certificationIndex = -1;
    $scope.addBtnCertificationText = "(+) Add";
    $scope.tempCertificationData = {};
    $scope.employee.otherCertifications = [];
    $scope.AddOtherCertification = function(tempCertificationData){
        //alert(certificationIndex);
        if(certificationIndex == -1)
        {
            $scope.employee.otherCertifications.push({
                certificationName: tempCertificationData.certificationName,
                session: tempCertificationData.session,
                duration: tempCertificationData.duration,
                passingYear: tempCertificationData.passingYear,
                instituteName: tempCertificationData.instituteName
            });
        }
        else
        {
            $scope.employee.otherCertifications[certificationIndex] = {
                certificationName: tempCertificationData.certificationName,
                session: tempCertificationData.session,
                duration: tempCertificationData.duration,
                passingYear: tempCertificationData.passingYear,
                instituteName: tempCertificationData.instituteName
            };

            var newDataList = [];
            angular.forEach($scope.employee.otherCertifications,function(v){
                newDataList.push(v);
            });

            $scope.employee.otherCertifications=newDataList;

            console.log(JSON.stringify($scope.employee.otherCertifications));

            certificationIndex = -1;
        }

        $scope.tempCertificationData.certificationName = "";
        $scope.tempCertificationData.session = "";
        $scope.tempCertificationData.duration = "";
        $scope.tempCertificationData.instituteName = "";
        $scope.tempCertificationData.passingYear = "";

        $scope.addBtnCertificationText = "(+) Add";

        //console.log(JSON.stringify($scope.tempCertificationData));
    }

    $scope.deleteCertification = function(index){
        delete $scope.employee.otherCertifications[index];
        var newDataList = [];
        angular.forEach($scope.employee.otherCertifications,function(v){
            newDataList.push(v);
        });

        $scope.employee.otherCertifications=newDataList;
    }

    $scope.editCertification= function(index){
        $scope.tempCertificationData.certificationName = $scope.employee.otherCertifications[index].certificationName;
        $scope.tempCertificationData.session = $scope.employee.otherCertifications[index].session;
        $scope.tempCertificationData.duration = $scope.employee.otherCertifications[index].duration;
        $scope.tempCertificationData.instituteName = $scope.employee.otherCertifications[index].instituteName;
        $scope.tempCertificationData.passingYear = $scope.employee.otherCertifications[index].passingYear;

        $scope.addBtnCertificationText = "Update";
        certificationIndex = index;
    }
    // End

    // Add Row for Experience
        var experienceIndex = -1;
        $scope.addBtnExperienceText = "(+) Add";
        $scope.tempExperienceData = {};
        $scope.employee.experiences = [];
        $scope.AddExperience = function(tempExperienceData){
        //alert(experienceIndex);
        if(experienceIndex == -1)
        {
            $scope.employee.experiences.push({
                companyName: tempExperienceData.companyName,
                designation: tempExperienceData.designation,
                fromDate: tempExperienceData.fromDate,
                toDate: tempExperienceData.toDate,
                yearOfExperience: tempExperienceData.yearOfExperience
            });
        }
        else
        {
            $scope.employee.experiences[experienceIndex] = {
                companyName: tempExperienceData.companyName,
                designation: tempExperienceData.designation,
                fromDate: tempExperienceData.fromDate,
                toDate: tempExperienceData.toDate,
                yearOfExperience: tempExperienceData.yearOfExperience
            };

            var newDataList = [];
            angular.forEach($scope.employee.experiences,function(v){
                newDataList.push(v);
            });

            $scope.employee.experiences=newDataList;

            console.log(JSON.stringify($scope.employee.experiences));

            experienceIndex = -1;
        }

        $scope.tempExperienceData.companyName = "";
        $scope.tempExperienceData.designation = "";
        $scope.tempExperienceData.fromDate = "";
        $scope.tempExperienceData.toDate = "";
        $scope.tempExperienceData.yearOfExperience = "";

        $scope.addBtnExperienceText = "(+) Add";

        //console.log(JSON.stringify($scope.tempExperienceData));
    }

    $scope.deleteExperience = function(index){
        delete $scope.employee.experiences[index];
        var newDataList = [];
        angular.forEach($scope.employee.experiences,function(v){
            newDataList.push(v);
        });

        $scope.employee.experiences=newDataList;
    }

    $scope.editExperience= function(index){
        $scope.tempExperienceData.companyName = $scope.employee.experiences[index].companyName;
        $scope.tempExperienceData.designation = $scope.employee.experiences[index].designation;;
        $scope.tempExperienceData.fromDate = $scope.employee.experiences[index].fromDate;;
        $scope.tempExperienceData.toDate = $scope.employee.experiences[index].toDate;;
        $scope.tempExperienceData.yearOfExperience = $scope.employee.experiences[index].yearOfExperience;;

        $scope.addBtnExperienceText = "Update";
        experienceIndex = index;
    }
    // End

    function getQueryVariable() {
        var query = $location.absUrl();
        if(query.indexOf('?') != -1)
        {
            var vars = query.split('?');
            var pair = vars[1].split('=');
            return pair[1];
        }
        return 0;
    }

    /*
    ===============================================================
    ===================== Only Model Data =========================
    ===============================================================
    */

    //Open Department Modal
    $scope.CreateDepartment = function(){
        $scope.modalInstance = $uibModal.open({
            ariaLabelledBy: 'modal-title',
            ariaDescribedBy: 'modal-body',
            templateUrl: '/organization/employee/inline/department/create',
            controller :'employeeModalController',
            controllerAs: '$ctrl',
            size: 'lg',
            resolve: {
                parameters:{}
            }
        });
    }

    //Reload Department
    $scope.$on("modalToDepartmentDataLoad", function(modalToDepartmentDataLoad,opt) {
            //Initialization
            $scope.subDepartments = {};
            $scope.sections = {};
            $scope.floors = {};
            $scope.lines = {};
            $scope.employee.department.id = opt.deptId;
            $scope.departmentId = opt.deptId;
            getAllDepartmentData();
    });

    //Open Sub Department Modal
    $scope.CreateSubDepartment = function(id){
        $scope.modalInstance = $uibModal.open({
            ariaLabelledBy: 'modal-title',
            ariaDescribedBy: 'modal-body',
            templateUrl: '/organization/employee/inline/subdepartment/create',
            controller :'employeeModalController',
            controllerAs: '$ctrl',
            size: 'lg',
            resolve: {
                parameters:{departmentId:id}
            }
        });
    }

    //Reload Sub Department
    $scope.$on("modalToSubDepartmentDataLoad", function(modalToSubDepartmentDataLoad,opt) {
            //Initialization
            $scope.sections = {};
            $scope.floors = {};
            $scope.lines = {};
            $scope.employee.subDepartment = {};
            $scope.employee.subDepartment.id = opt.subDeptId;
            $scope.subDepartmentId = opt.subDeptId;
            getSubDepartmentListById(opt.deptId);
    });

    //Open Section Modal
    $scope.CreateSection = function(deptId,subDeptId){
        $scope.modalInstance = $uibModal.open({
            ariaLabelledBy: 'modal-title',
            ariaDescribedBy: 'modal-body',
            templateUrl: '/organization/employee/inline/section/create',
            controller :'employeeModalController',
            controllerAs: '$ctrl',
            size: 'lg',
            resolve: {
                parameters:{departmentId:deptId,subDepartmentId:subDeptId}
            }
        });
    }

    //Reload Section
    $scope.$on("modalToSectionDataLoad", function(modalToSectionDataLoad,opt) {
            //Initialization
            $scope.floors = {};
            $scope.lines = {};
            $scope.employee.section = {};
            $scope.employee.section.id = opt.sectionId;
            $scope.sectionId = opt.sectionId;
            getSectionListById(opt.subDeptId);
    });

    //Open Floor Modal
    $scope.CreateFloor = function(deptId,subDeptId,secId){
        $scope.modalInstance = $uibModal.open({
            ariaLabelledBy: 'modal-title',
            ariaDescribedBy: 'modal-body',
            templateUrl: '/organization/employee/inline/floor/create',
            controller :'employeeModalController',
            controllerAs: '$ctrl',
            size: 'lg',
            resolve: {
                parameters:{departmentId:deptId,subDepartmentId:subDeptId,sectionId:secId}
            }
        });
    }

    //Reload Floor
    $scope.$on("modalToFloorDataLoad", function(modalToFloorDataLoad,opt) {
            //Initialization
            $scope.lines = {};
            $scope.employee.floor = {};
            $scope.employee.floor.id = opt.floorId;
            $scope.floorId = opt.floorId;
            getFloorListById(opt.secId);
    });

    //Open Line Modal
    $scope.CreateLine = function(deptId,subDeptId,secId,flrId){
        $scope.modalInstance = $uibModal.open({
            ariaLabelledBy: 'modal-title',
            ariaDescribedBy: 'modal-body',
            templateUrl: '/organization/employee/inline/line/create',
            controller :'employeeModalController',
            controllerAs: '$ctrl',
            size: 'lg',
            resolve: {
                parameters:{
                    departmentId:deptId,
                    subDepartmentId:subDeptId,
                    sectionId:secId,
                    floorId:flrId
                }
            }
        });
    }

    //Reload Line
    $scope.$on("modalToLineDataLoad", function(modalToLineDataLoad,opt) {
            //Initialization
            $scope.employee.line = {};
            $scope.employee.line.id = opt.lineId;
            getLineListById(opt.floorId);
    });

    //calculate age
    $scope.calculateAge = function(dateofBirth){

    var currentYear = new Date().getFullYear();
    var dateString = dateofBirth.split('-');
    var seletedYear = dateString[0]

    var age  =  (currentYear - seletedYear);

    $scope.age =  age ;
    if(age < 10){
     $scope.errorInAge = true;
    }else{
     $scope.errorInAge = false;
    }

    }

});