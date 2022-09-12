app.controller("personalManagementController",
    function ($rootScope, $scope, $uibModal, $http, $location, $window, $timeout, $filter,BaseApiUrlService, EmployeeService,UploadService,
        CityServices, CountryServices, DepartmentServices, UnitServices, DesignationServices, SectionServices,
        SubSectionServices,PositionServices,DivisionServices,StaffCategoryServices,JobLocationServices,NationalityServices,
        SkillCategoryServices,LeaveRuleServices,ShiftPlanServices,ShiftRuleServices,BankInfoServices,TokenService,Flash,
        DateServices) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl()+'employees';
        var urlObject = $location.absUrl().split( '/' );
        $scope.employee = {};
        $scope.employeeGeneralInfo = {};
        $scope.EmployeeTab = urlObject[6];
        $rootScope.user =[];

        $scope.profilePicture = "http://via.placeholder.com/250x297";
        $scope.signPicture = "http://via.placeholder.com/232x80";
        $scope.nomineePP = "http://via.placeholder.com/232x232";

        $scope.profilePictureFile = null ;
        $scope.signPictureFile = null ;
        $scope.EmployeeCode="";
        $scope.isNewEmployee = true;
        $scope.isNewEmployeeButtonDisabled = true;
        $scope.pnomineePPFile = null ;
        $scope.pSearchCriteria = "";

        $scope.prevPermanentAddress = "";
        $scope.prevPermanentZIPCode = "";
        $scope.prevPermanentPS = "";
        $scope.prevPermanentDistrict = "";
        $scope.prevPermanentCountry = "";

        $scope.isOfficeFormButtonDisabled = true;
        $scope.isRuleFormButtonDisabled = true;
        $scope.isEmergencyFormButtonDisabled = true;
        $scope.isEducationFormButtonDisabled = true;
        $scope.isQualificationFormButtonDisabled = true;
        $scope.isHistoryFormButtonDisabled = true;
        $scope.isLanguageFormButtonDisabled = true;
        $scope.isNomineeFormButtonDisabled = true;
        $scope.isFamilyFormButtonDisabled = true;

        $scope.departments = {};
        $scope.employeeEducationInfo = {};


        function init() {
            loadAllEmployeeOfficeDDL();
        }

        init();

        $scope.selectedName = "Production";
        $scope.names = ["Emil", "Tobias", "Linus"];

        // Load all dropdown
        function loadAllEmployeeOfficeDDL(){
             getAllCountries();
             getAllNationality();
             getAllCities();
             getAllPositions();
             getAllUnits();
             getAllDivisions();
             getAllDepartments();
             getAllDesignations();
             getAllSections();
             getAllSubSections();
             getAllStaffCategories();
             getAllJobLocations();
             getAllSkillCategories();
             getAllLeaveRuleInfo();
             getAllShiftPlanInfo();
             getAllShiftRuleCode();
             getAllMaternityLeaveRuleInfo();
             getAllBankInfo();
        }

        function getAllCountries(){
            CountryServices.getAllCounties(TokenService.getAccessToken()).then(function(data){
                $scope.countries = data;
            });
        }

        function getAllCities(){
           CityServices.getAllCities(TokenService.getAccessToken()).then(function(data){
               $scope.cities = data;
           });
        }

        function getAllNationality(){
           NationalityServices.getAllNationality(TokenService.getAccessToken()).then(function(data){
               $scope.nationality = data;
           });
        }

        function getAllPositions(){
            PositionServices.getAllPosition(TokenService.getAccessToken()).then(function(data){
                $scope.positions = data;
            });
        }

        function getAllUnits(){
            UnitServices.getAllUnits(TokenService.getAccessToken()).then(function(data){
                $scope.units = data;
            });
        }

        function getAllDivisions(){
            DivisionServices.getAllDivision(TokenService.getAccessToken()).then(function(data){
                $scope.divisions = data;
            });
        }

        function getAllDepartments(){
            DepartmentServices.getAllDepartment(TokenService.getAccessToken()).then(function(data){
                $scope.departments = data;
            });
        }

        function getAllDesignations(){
            DesignationServices.getAllDesignation(TokenService.getAccessToken()).then(function(data){
                $scope.designations = data;
            });
        }

        function getAllSections(){
            SectionServices.getAllSection(TokenService.getAccessToken()).then(function(data){
                $scope.sections = data;
            });
        }

        function getAllSubSections(){
            SubSectionServices.getAllSubSection(TokenService.getAccessToken()).then(function(data){
                $scope.subSections = data;
            });
        }

        function getAllStaffCategories(){
            StaffCategoryServices.getAllStaffCategory(TokenService.getAccessToken()).then(function(data){
                $scope.staffCategories = data;
            });
        }

        function getAllJobLocations(){
            JobLocationServices.getAllJobLocation(TokenService.getAccessToken()).then(function(data){
                $scope.jobLocations = data;
            });
        }

        function getAllSkillCategories(){
            SkillCategoryServices.getAllSkillCategory(TokenService.getAccessToken()).then(function(data){
                $scope.skillCategories = data;
            });
        }

        function getAllLeaveRuleInfo(){
            LeaveRuleServices.getAllLeaveRuleName(TokenService.getAccessToken()).then(function(data){
                $scope.leaveRules = data;
            });
        }

        function getAllShiftPlanInfo(){
            ShiftPlanServices.getAllShift(TokenService.getAccessToken()).then(function(data){
                $scope.shiftPlans = data;
            });
        }

        function getAllShiftRuleCode(){
            ShiftRuleServices.getAllShiftRuleCode(TokenService.getAccessToken()).then(function(data){
                $scope.shiftRules = data;
            });
        }

        function getAllMaternityLeaveRuleInfo(){
            LeaveRuleServices.getAllMaternityLeaveRule(TokenService.getAccessToken()).then(function(data){
                $scope.maternityLeaveRules = data;
            });
        }

        function getAllBankInfo(){
            BankInfoServices.getAllBankInfo(TokenService.getAccessToken()).then(function(data){
                $scope.bankInfos = data;
            });
        }

        $scope.addNewEmployee = function(){
            $scope.EmployeeCode="";
            $scope.profilePicture = "http://via.placeholder.com/250x297";
            $scope.signPicture = "http://via.placeholder.com/232x80";
            $scope.nomineePP = "http://via.placeholder.com/232x232";
            $scope.isNewEmployeeButtonDisabled = true;
            $scope.isOfficeFormButtonDisabled = true;
            $scope.isRuleFormButtonDisabled = true;
            $scope.isEmergencyFormButtonDisabled = true;
            $scope.isEducationFormButtonDisabled = true;
            $scope.isQualificationFormButtonDisabled = true;
            $scope.isHistoryFormButtonDisabled = true;
            $scope.isLanguageFormButtonDisabled = true;
            $scope.isNomineeFormButtonDisabled = true;
            $scope.isFamilyFormButtonDisabled = true;
            $scope.isNewEmployee = true;
            $scope.employeeGeneralInfo = {};
            $scope.employeeOfficialInfo = {};
            $scope.employeeRuleInfo = {};
            $scope.employeeEmergencyInfo = {};
            $scope.employeeEducationInfo = {};
            $scope.employeePQualificationInfo = {};
            $scope.employeeHistory = {};
            $scope.employeeLanguage = {};
            $scope.empNomineeInfo = {};
            $scope.empFamilyInfo = {};
            $scope.EmployeeGridDataSource.read();
            $scope.educationalInfoData.read();
            $scope.ProfessionalQualificationData.read();
            $scope.PreviousWorkExperienceData.read();
            $scope.LanguageProficiencyData.read();

            //$window.location.href="/hr#!/employees/employee/general";
            //$scope.openEmployeeForm("general");
        }

        $scope.openEmployeeForm = function (pageName) {
            $scope.EmployeeTab = pageName;

            var pEmployeeCode = $scope.EmployeeCode;
            if(pEmployeeCode == "")
                return;

            if(pageName == "general"){
                getGeneralEmployeeInfo(pEmployeeCode);
            }
            else if(pageName == "officeInfo"){
                getEmployeeOfficeInfo(pEmployeeCode);
            }
            else if(pageName == "ruleInfo"){
                getEmployeeRuleInfo(pEmployeeCode);
            }
            else if(pageName == "emergencyInfo"){
                getEmployeeEmergencyInfo(pEmployeeCode);
            }
            else if(pageName == "educationalInfo"){
                getEmployeeEducationalInfo(pEmployeeCode);
            }
            else if(pageName == "professionalQualification"){
                getEmployeePQualificationInfo(pEmployeeCode);
            }
            else if(pageName == "previousJobHistory"){
                getEmployeeJobHistory(pEmployeeCode);
            }
            else if(pageName == "language"){
                getEmployeeLanguageInfo(pEmployeeCode);
            }
            else if(pageName == "nomineeInfo"){
                getEmployeeNomineeInfo(pEmployeeCode);
            }
            else if(pageName == "familyInfo"){
                getEmployeeFamilyInfo(pEmployeeCode);
            }
        }

        $scope.getEmployeeByCode = function (pEmployeeCode) {
            var pageName = $scope.EmployeeTab;
            if(pageName == "general"){
                getGeneralEmployeeInfo(pEmployeeCode);
            }
            else if(pageName == "officeInfo"){
                loadAllEmployeeOfficeDDL();
                getEmployeeOfficeInfo(pEmployeeCode);
            }
            else if(pageName == "ruleInfo"){
                getEmployeeRuleInfo(pEmployeeCode);
            }
            else if(pageName == "emergencyInfo"){
                getEmployeeEmergencyInfo(pEmployeeCode);
            }
            else if(pageName == "educationalInfo"){
                getEmployeeEducationalInfo(pEmployeeCode);
            }
            else if(pageName == "professionalQualification"){
                getEmployeePQualificationInfo(pEmployeeCode);
            }
            else if(pageName == "previousJobHistory"){
                getEmployeeJobHistory(pEmployeeCode);
            }
            else if(pageName == "language"){
                getEmployeeLanguageInfo(pEmployeeCode);
            }
            else if(pageName == "nomineeInfo"){
                getEmployeeNomineeInfo(pEmployeeCode);
            }
            else if(pageName == "familyInfo"){
                getEmployeeFamilyInfo(pEmployeeCode);
            }
            $scope.isNewEmployeeButtonDisabled = false;
            $scope.isOfficeFormButtonDisabled = false;
            $scope.isRuleFormButtonDisabled = false;
            $scope.isEmergencyFormButtonDisabled = false;
            $scope.isEducationFormButtonDisabled = false;
            $scope.isQualificationFormButtonDisabled = false;
            $scope.isHistoryFormButtonDisabled = false;
            $scope.isLanguageFormButtonDisabled = false;
            $scope.isNomineeFormButtonDisabled = false;
            $scope.isFamilyFormButtonDisabled = false;
        }

        //Get General employee info
        function getGeneralEmployeeInfo(pEmployeeCode){
            EmployeeService.getEmployeeGeneralInfoById(pEmployeeCode, TokenService.getAccessToken()).then(function(resp){
          //      console.log(resp);
                $scope.employeeGeneralInfo = resp;
                $scope.employeeGeneralInfo.dob = new Date(resp.dob);
                if(resp.empImage == null || resp.empImage == undefined || resp.empImage =="")
                    $scope.profilePicture = "http://via.placeholder.com/250x297";
                else
                    $scope.profilePicture = "/assets/img/profile/"+resp.empImage;

                if(resp.empSignature == null || resp.empSignature == undefined || resp.empSignature =="")
                    $scope.signPicture = "http://via.placeholder.com/232x80";
                else
                    $scope.signPicture = "/assets/img/sign/"+resp.empSignature;
                $scope.isNewEmployee = false;
                $scope.EmployeeCode = pEmployeeCode;

                $scope.prevPermanentAddress = resp.permanentAddress;
                $scope.prevPermanentZIPCode = resp.permanentZIPCode;
                $scope.prevPermanentPS = resp.permanentPS;
                $scope.prevPermanentDistrict = resp.permanentDistrict;
                $scope.prevPermanentCountry = resp.permanentCountry;
            });
        }

        //Get Office info
        function getEmployeeOfficeInfo(pEmployeeCode){
            EmployeeService.getEmployeeOfficeInfoById(pEmployeeCode, TokenService.getAccessToken()).then(function(resp){
                //alert(JSON.stringify(resp));
          //      console.log(resp);
                $scope.employeeOfficialInfo = resp;
                $scope.employeeOfficialInfo.doj = new Date(resp.doj);
                $scope.employeeOfficialInfo.dos = new Date(resp.dos);
                $scope.employeeOfficialInfo.doc = new Date(resp.doc);
                $scope.employeeOfficialInfo.pfEntitledDate = new Date(resp.pfEntitledDate);
                $scope.EmployeeCode = pEmployeeCode;
            });
        }

        //Get Rule info
        function getEmployeeRuleInfo(pEmployeeCode){
            EmployeeService.getEmployeeRuleInfoById(pEmployeeCode, TokenService.getAccessToken()).then(function(resp){
                $scope.employeeRuleInfo = resp;
                $scope.employeeRuleInfo.dos = new Date(resp.dos);
                $scope.EmployeeCode = pEmployeeCode;
            });
        }

        //Get Emergency info
        function getEmployeeEmergencyInfo(pEmployeeCode){
        //    $scope.EmergencyContactData.read();
            EmployeeService.getEmployeeEmergencyInfoById(pEmployeeCode, TokenService.getAccessToken()).then(function(resp){
                //          alert(JSON.stringify(resp));
              //  console.log(resp);
                $scope.employeeEmergencyInfo = resp;
                $scope.EmployeeCode = pEmployeeCode;
            });
        }

        //Get Educational info
        function getEmployeeEducationalInfo(pEmployeeCode){
            $scope.employeeEducationInfo = {};
            $scope.educationalInfoData.read();
        }

        //Get Professional qualification
        function getEmployeePQualificationInfo(pEmployeeCode){
            $scope.employeePQualificationInfo = {};
            $scope.ProfessionalQualificationData.read();
        }

        //Get Professional qualification
        function getEmployeeJobHistory(pEmployeeCode){
            $scope.employeeHistory = {};
            $scope.PreviousWorkExperienceData.read();
        }
        function getEmployeeLanguageInfo(pEmployeeCode){
            $scope.employeeLanguage = {};
            $scope.LanguageProficiencyData.read();
            $scope.$apply();
        }

        function getEmployeeNomineeInfo(pEmployeeCode){
            EmployeeService.getNomineeInfoByEmpCode(pEmployeeCode, TokenService.getAccessToken()).then(function(resp){

                $scope.empNomineeInfo = resp;
                $scope.EmployeeCode = pEmployeeCode;
                $scope.nomineePP = "/assets/img/profile/"+resp.nomineePic;
            });
        }

        function getEmployeeFamilyInfo(pEmployeeCode){
            EmployeeService.getFamilyInfoByEmpCode(pEmployeeCode, TokenService.getAccessToken()).then(function(resp){

                $scope.empFamilyInfo = resp;
                $scope.EmployeeCode = pEmployeeCode;
            });
        }

        $scope.openEmployeeTab = function (pageName) {
            $scope.EmployeeTab = pageName;
        }

        $scope.cancel = function () {

            if($scope.EmployeeTab == "general"){
                $scope.isNewEmployee = true;
                $scope.employeeGeneralInfo = {};
                $scope.EmployeeCode = "";
                $scope.profilePicture = "http://via.placeholder.com/232x232";
                $scope.signPicture = "http://via.placeholder.com/232x80";
            }
            else if($scope.EmployeeTab == "officeInfo"){
                $scope.employeeOfficialInfo = {};
            }
            else if($scope.EmployeeTab == "ruleInfo"){
                $scope.employeeRuleInfo = {};
            }
            else if($scope.EmployeeTab == "emergencyInfo"){
                $scope.employeeEmergencyInfo = {};
            }
            else if($scope.EmployeeTab == "educationalInfo"){
                $scope.employeeEducationInfo = {};
            }
            else if($scope.EmployeeTab == "professionalQualification"){
                $scope.employeePQualificationInfo = {};
            }
            else if($scope.EmployeeTab == "previousJobHistory"){
                $scope.employeeHistory = {};
            }
            else if($scope.EmployeeTab == "language"){
                $scope.employeeLanguage = {};
            }
            else if($scope.EmployeeTab == "nomineeInfo"){
                $scope.empNomineeInfo = {};
            }
            else if($scope.EmployeeTab == "familyInfo"){
                $scope.empFamilyInfo = {};
            }


        }

        $scope.deleteEmployee = function () {
            alert('Delete');
        }

        $scope.sameAsPresent = function(same_As_Present){

            if(same_As_Present){
                $scope.employeeGeneralInfo.permanentAddress = $scope.employeeGeneralInfo.presentAddress;
                $scope.employeeGeneralInfo.permanentZIPCode = $scope.employeeGeneralInfo.presentZIPCode;
                $scope.employeeGeneralInfo.permanentPS= $scope.employeeGeneralInfo.presentPS;
                $scope.employeeGeneralInfo.permanentDistrict = $scope.employeeGeneralInfo.presentDistrict;
                $scope.employeeGeneralInfo.permanentCountry = $scope.employeeGeneralInfo.presentCountry;
            }else{
                if($scope.employeeCode == ""){
                    $scope.employeeGeneralInfo.permanentAddress = '';
                    $scope.employeeGeneralInfo.permanentZIPCode = '';
                    $scope.employeeGeneralInfo.permanentPS= '';
                    $scope.employeeGeneralInfo.permanentDistrict = '';
                    $scope.employeeGeneralInfo.permanentCountry = '';
                }
                else{
                    $scope.employeeGeneralInfo.permanentAddress = $scope.prevPermanentAddress;
                    $scope.employeeGeneralInfo.permanentZIPCode = $scope.prevPermanentZIPCode;
                    $scope.employeeGeneralInfo.permanentPS= $scope.prevPermanentPS;
                    $scope.employeeGeneralInfo.permanentDistrict = $scope.prevPermanentDistrict;
                    $scope.employeeGeneralInfo.permanentCountry = $scope.prevPermanentCountry
                }
            }
        }

        $scope.deleteImagePick = function(){
            if($scope.EmployeeTab == "general"){
                $scope.profilePicture = "http://via.placeholder.com/232x232";
            }
            else if($scope.EmployeeTab == "nomineeInfo"){
                $scope.nomineePP = "http://via.placeholder.com/232x232";
            }
        };
        $scope.deleteSignImagePick = function(){
            $scope.signPicture = "http://via.placeholder.com/232x80";
        };

        $scope.imagePick = function(){
            angular.element('#img-file-upload').trigger('click');
        };

        $scope.imageUpload = function(event){
            var files = event.target.files;
            var ext = files[0].name.match(/\.(.+)$/)[1];
            if(!(angular.lowercase(ext) ==='jpg' || angular.lowercase(ext) ==='jpeg' || angular.lowercase(ext) ==='png')){
                alert("Invalid File Format");
                return false;
            }else if(file.size > 307200 ){
                alert("File is too big");
                return false;
            }
            var file = files[0];
            var reader = new FileReader();
            reader.onload = $scope.imageIsLoaded;
            reader.readAsDataURL(file);
            if($scope.EmployeeTab == "general"){
                $scope.profilePictureFile = file;
            }
            else if($scope.EmployeeTab == "nomineeInfo"){
                $scope.pnomineePPFile = file;
            }

        }
        $scope.imageIsLoaded = function(e){
            $scope.$apply(function() {
                if($scope.EmployeeTab == "general"){
                    $scope.profilePicture = e.target.result;
                }
                else if($scope.EmployeeTab == "nomineeInfo"){
                    $scope.nomineePP = e.target.result;
                }
            });
        }

        $scope.signImagePick = function(){
            angular.element('#sing-img-file-upload').trigger('click');
        };

        $scope.signImageUpload = function(event){
            var files = event.target.files;
            var ext = files[0].name.match(/\.(.+)$/)[1];
            if(!(angular.lowercase(ext) ==='jpg' || angular.lowercase(ext) ==='jpeg' || angular.lowercase(ext) ==='png')){
                alert("Invalid File Format");
                return false;
            }else if(file.size > 307200 ){
                alert("File is too big");
                return false;
            }
            var file = files[0];
            var reader = new FileReader();
            reader.onload = $scope.signImageIsLoaded;
            reader.readAsDataURL(file);
            $scope.signPictureFile = file;

        }
        $scope.signImageIsLoaded = function(e){
            $scope.$apply(function() {
                $scope.signPicture = e.target.result;
            });
        }

        function flashMessage(resp){
            if(resp.data.isSuccess == true){
                Flash.create('success', resp.data.successMessage, 'custom-class');
            }else{
                Flash.create('danger', resp.data.errorMessage, 'custom-class');
            }
        }

        // Save Employee General Information
        $scope.saveGeneralForm = function (isValid, employeeGeneralInfo) {
            if(isValid){

                if($scope.isNewEmployee == true){
                    employeeGeneralInfo.employeeCode = "";
                }
                EmployeeService.saveGeneralInfo(employeeGeneralInfo, TokenService.getAccessToken())
                    .then(function (resp) {
                        $scope.EmployeeCode = resp.data.employeeCode;

                        if($scope.profilePictureFile != null && $scope.signPictureFile != null ) {
                            UploadService.saveProfileAndSignImg($scope.profilePictureFile, $scope.signPictureFile, $scope.EmployeeCode);

                            employeeGeneralInfo.empImage = $scope.EmployeeCode+".JPG";
                            employeeGeneralInfo.empSignature = $scope.EmployeeCode+".JPG";
                            EmployeeService.saveGeneralInfo(employeeGeneralInfo, TokenService.getAccessToken()).then(function(){},function (){})
                        }
                        else if($scope.profilePictureFile != null ) {
                            UploadService.saveEmployeeImage($scope.profilePictureFile, $scope.EmployeeCode);

                            employeeGeneralInfo.empImage = $scope.EmployeeCode+".JPG";

                            EmployeeService.saveGeneralInfo(employeeGeneralInfo, TokenService.getAccessToken()).then(function(){},function (){})

                            $scope.isNewEmployeeButtonDisabled = false;
                            $scope.isOfficeFormButtonDisabled = false;
                            $scope.isRuleFormButtonDisabled = false;
                            $scope.isEmergencyFormButtonDisabled = false;
                            $scope.isEducationFormButtonDisabled = false;
                            $scope.isQualificationFormButtonDisabled = false;
                            $scope.isHistoryFormButtonDisabled = false;
                            $scope.isLanguageFormButtonDisabled = false;
                            $scope.isNomineeFormButtonDisabled = false;
                            $scope.isFamilyFormButtonDisabled = false;
                        }

                        flashMessage(resp);
                        // $scope.$apply();

                    }, function(error){
                        console.log(error);
                    });
            }

        }

        // Save Employee Official
        $scope.saveOfficeForm = function (isValid, employeeOfficialInfo) {
            if(isValid){
                employeeOfficialInfo.employeeCode = $scope.EmployeeCode;
                EmployeeService.saveOfficialEmployee(employeeOfficialInfo, TokenService.getAccessToken())
                   .then(function (resp) {
                       flashMessage(resp);
                   }, function(error){
                      console.log(error);
                   });
          }
        }

        // Save Employee Rule
        $scope.saveRuleForm = function (isValid, employeeRuleInfo) {
            employeeRuleInfo.employeeCode = $scope.EmployeeCode;
            EmployeeService.saveRuleEmployee(employeeRuleInfo, TokenService.getAccessToken())
                .then(function (resp) {
                    flashMessage(resp);
                }, function(error){
                    console.log(error);
                });

        }

        // Save Emergency Info
        $scope.saveEmergencyForm = function (isValid, employeeEmergencyInfo) {
            employeeEmergencyInfo.employeeCode = $scope.EmployeeCode;
            EmployeeService.saveEmergencyEmployee(employeeEmergencyInfo, TokenService.getAccessToken())
            .then(function (resp) {
                flashMessage(resp);
            }, function(error){
                  console.log(error);
            });
        }

        // Save Education Info
        $scope.saveEducationForm = function (isValid, employeeEducationInfo)  {
            employeeEducationInfo.employeeCode = $scope.EmployeeCode;
            if(employeeEducationInfo.id == undefined){
                employeeEducationInfo.id = '0';
            }
            EmployeeService.saveEducationEmployee(employeeEducationInfo, TokenService.getAccessToken())
                .then(function (resp) {
                    flashMessage(resp);
                    $scope.employeeEducationInfo = {};
                    $scope.educationalInfoData.read();
                }, function(error){
                    console.log(error);
                });
        }

        // Save Education Info
        $scope.saveQualificationForm = function (isValid, employeePQualificationInfo) {
            employeePQualificationInfo.employeeCode = $scope.EmployeeCode;
            if(employeePQualificationInfo.id == undefined){
                employeePQualificationInfo.id = '0';
            }
            EmployeeService.saveQualificationEmployee(employeePQualificationInfo, TokenService.getAccessToken())
                .then(function (resp) {
                    flashMessage(resp);
                    $scope.employeePQualificationInfo = {};
                    $scope.ProfessionalQualificationData.read();
                }, function(error){
                    console.log(error);
                });
        }

        $scope.saveHistoryForm = function (isValid,employeeHistory){
           employeeHistory.employeeCode = $scope.EmployeeCode;
           if(employeeHistory.id == undefined){
               employeeHistory.id = '0';
           }
           EmployeeService.saveHistoryEmployee(employeeHistory, TokenService.getAccessToken())
           .then(function (resp) {
               flashMessage(resp);
                $scope.employeeHistory = {};
               $scope.PreviousWorkExperienceData.read();
           }, function(error){
               console.log(error);
           });
       }

        $scope.saveLanguageForm = function (isValid,employeeLanguage){
            employeeLanguage.employeeCode = $scope.EmployeeCode;
            if(employeeLanguage.id == undefined){
                employeeLanguage.id = '0';
            }
            EmployeeService.saveLanguageEmployee(employeeLanguage, TokenService.getAccessToken())
                .then(function (resp) {
                    flashMessage(resp);
                    $scope.employeeLanguage = {};
                    $scope.LanguageProficiencyData.read();
                }, function(error){
                    console.log(error);
                });
        }

        $scope.saveNomineeForm = function (isValid,empNomineeInfo){
            empNomineeInfo.employeeCode = $scope.EmployeeCode;

            EmployeeService.saveNomineeEmployee(empNomineeInfo, TokenService.getAccessToken())
                .then(function (resp) {
                    flashMessage(resp);
                }, function(error){
                    console.log(error);
                });
        }
        $scope.saveFamilyForm = function (isValid,empFamilyInfo){
            empFamilyInfo.employeeCode = $scope.EmployeeCode;
            EmployeeService.saveFamilyEmployee(empFamilyInfo, TokenService.getAccessToken())
                .then(function (resp) {
                    flashMessage(resp);
                }, function(error){
                    console.log(error);
                });
        }



        $scope.loadGeneralEmployeeInfo = function(pSearchCriteria){
            $scope.employeeGeneralInfo = {};
            $scope.profilePicture = "http://via.placeholder.com/232x232";
            $scope.signPicture = "http://via.placeholder.com/232x80";
            $scope.isNewEmployee = true;

           $scope.EmployeeGridDataSource.query({
                page:1,
                pageSize:50,
                filter:{
                    filters:[
                        {field:"advanceSearchFiled", operator:"contains",value:pSearchCriteria}
                    ]
                }
            });
        }

        $scope.EmployeeGridDataSelect = function (e){
            //console.log(e.sender.dataItem(e.sender.select()));
            $scope.EmployeeCode = e.sender.dataItem(e.sender.select()).employeeCode;
            $scope.getEmployeeByCode($scope.EmployeeCode);
        }

        $scope.EmployeeGridDataSource = new kendo.data.DataSource({
            type: "jsonp",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/info/getAll?access_token='+TokenService.getAccessToken()+'&pCallRequestFrom="PersonalManagement"';
                    },
                    dataType: "json",
                    type: "GET"
                },
                parameterMap: function (data) {
                    // Mapping between Spring data pagination and kendo UI pagination parameters
                    // Pagination
                    var serverUrlParams = {
                      // pagination
                      size: data.pageSize,
                      page: data.page = data.page - 1,// as Spring page starts from 0
                      filters:""
                    };

                    // Sorting
                    if (data.sort && data.sort.length > 0){
                       serverUrlParams.sortBy = data.sort[0].field;
                       serverUrlParams.sortOn = (data.sort[0].dir).toUpperCase();
                    }else{
                       serverUrlParams.sortBy = 'employeeCode';
                       serverUrlParams.sortOn = 'ASC';
                    }

                    //Filter Information
                    if (data.filter && data.filter.filters.length > 0) {
                        var elt = data.filter.filters[0];
                        var field = elt['field'];

                        if(elt['value'] == undefined){
                            elt['value'] = "";
                            $scope.pSearchCriteria = "";
                        }

                        var value = (elt['value'].replace("~", "")).replace("_", "");
                        var operator = elt['operator'];
                        serverUrlParams.filters = field + '_' + value + '_' + operator;

                        for(var index = 1; index < data.filter.filters.length; index++) {
                            elt = data.filter.filters[index];
                            field = elt['field'];
                            value = (elt['value'].replace("~", "")).replace("_", "");
                            operator = elt['operator'];
                            serverUrlParams.filters = serverUrlParams.filters + '~' + field + '_' + value + '_' + operator;
                        }
                        //alert(JSON.stringify(serverUrlParams));
                    }

                    return serverUrlParams;
                }
            },
            error: function (e) {
                if (e.errorThrown.toString() === 'Unauthorized') {
                    alert('Unauthorized Access!');
                    window.location = '/account/login';
                }
            },
            pageSize: 50,
            serverPaging: true,
            serverFiltering: true,
            serverSorting: true,
            schema: {
                model: {
                    id: "Id",
                    fields: {
                       Id: { type: "number", editable: false },
                       employeeCode: { type: "string" },
                       firstName: { type: "string" },
                       punchCardNo: { type: "string" }
                    }
                },
                data:"data",
                total:"total"
            }
        });

        $scope.EmployeeAllDataOptions = {
            dataSource: $scope.EmployeeGridDataSource,
            sortable: true,
            selectable:"row",
            change: $scope.EmployeeGridDataSelect,
            scrollable: true,
            pageable: {
                refresh: true,
                pageSizes: [20, 50, 100, 200],
                //pageSizes: [20, 50, 100, 200, "all"],
                buttonCount: 2,
                messages: {
                    itemsPerPage: "",
                    display: "{0} - {1} of {2} Records"
                }
            },
            filterable: {
                extra: false, //do not show extra filters
                operators: { // redefine the string operators
                    string: {
                        startswith: "Starts With",
                        endswith: "Ends With",
                        eq: "Is Equal To",
                        neq: "Is Not Equal To",
                        contains: "Contains"
                    }
                }
            },
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {
                    field: "employeeCode",
                    title: "Code",
                    width: "85px"
                },
                {
                    field: "firstName",
                    title: "Name",
                    width: "105px",
                    template: '<span>{{(dataItem.salutation==null?"":dataItem.salutation) +" "+(dataItem.firstName==null?"":dataItem.firstName)}}</span>'
                },
                {
                    field: "punchCardNo",
                    title: "Punch Card",
                    width: "130px"
                }
            ]
        };


        $scope.GridDataSelect = function (e){

            if($scope.EmployeeTab == "educationalInfo"){
                $scope.employeeEducationInfo = e.sender.dataItem(e.sender.select());
            }
            else if($scope.EmployeeTab == "professionalQualification"){
                $scope.employeePQualificationInfo = e.sender.dataItem(e.sender.select());

                if($scope.employeePQualificationInfo.certifiedDate != null && $scope.employeePQualificationInfo.certifiedDate != ''){
                    $scope.employeePQualificationInfo.certifiedDate = new Date($scope.employeePQualificationInfo.certifiedDate);
                }
                if($scope.employeePQualificationInfo.expiryDate != null && $scope.employeePQualificationInfo.expiryDate != ''){
                    $scope.employeePQualificationInfo.expiryDate = new Date($scope.employeePQualificationInfo.expiryDate);
                }
            }
            else if($scope.EmployeeTab == "previousJobHistory"){
                $scope.employeeHistory = e.sender.dataItem(e.sender.select());
                if($scope.employeeHistory.startDate != null && $scope.employeeHistory.startDate != ''){
                    $scope.employeeHistory.startDate = new Date($scope.employeeHistory.startDate);
                }
                if($scope.employeeHistory.endDate != null && $scope.employeeHistory.endDate != ''){
                    $scope.employeeHistory.endDate = new Date($scope.employeeHistory.endDate);
                }
            }
            else if($scope.EmployeeTab == "language"){
                $scope.employeeLanguage = e.sender.dataItem(e.sender.select());
            }
            $scope.$apply();
        }
        $scope.educationalInfoData = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/educationInfo/getAll?access_token='+TokenService.getAccessToken()+"&pEmployeeCode="+$scope.EmployeeCode;
                    },
                    dataType: "json",
                }
            },
            error: function (e) {
                if (e.errorThrown.toString() === 'Unauthorized') {
                    alert('Unauthorized Access!');
                    window.location = '/account/login';
                }
            },
            pageSize: 5,
            schema: {
                model: {
                    id: "id",
                    fields: {
                        id: { type: "number", editable: false },
                        examName: { type: "string" },
                        instituteName: { type: "string" },
                        whichGroup: { type: "string" },
                        examinationRoll: { type: "string" },
                        registrationNo: { type: "string" },
                        country: { type: "string" },
                        examYear: { type: "number" },
                        result: { type: "string" }
                    }
                }
            }
        });


        $scope.educationalGridOptions = {
            dataSource: $scope.educationalInfoData,
            sortable: true,
            selectable:"row",
            change: $scope.GridDataSelect,
            scrollable: true,
            pageable: {
                refresh: true,
                pageSizes: [20, 50, 100, 200],
                //pageSizes: [20, 50, 100, 200, "all"],
                buttonCount: 2,
                messages: {
                    itemsPerPage: "",
                    display: "{0} - {1} of {2} Records"
                }
            },
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {
                    field: "examName",
                    title: "Exam Name",
                    width: "180px"
                },
                {
                    field: "instituteName",
                    title: "Institute Name",
                    width: "180px"
                },
                {
                    field: "whichGroup",
                    title: "Major Subject",
                    width: "180px"
                },
                {
                    field: "examinationRoll",
                    title: "Roll",
                    width: "150px"
                },
                {
                    field: "examYear",
                    title: "Passing Year",
                    width: "150px"
                },
                {
                    field: "result",
                    title: "Result",
                    width: "120px"
                }
            ]
        };


        //Professional Qualification

        $scope.ProfessionalQualificationData = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/professionalQualificationInfo/getAll?access_token='+TokenService.getAccessToken()+"&pEmployeeCode="+$scope.EmployeeCode;
                    },
                    dataType: "json",
                }
            },
            error: function (e) {
                if (e.errorThrown.toString() === 'Unauthorized') {
                    alert('Unauthorized Access!');
                    window.location = '/account/login';
                }
            },
            pageSize: 5,
            schema: {
                model: {
                    id: "id",
                    fields: {
                        id: { type: "number", editable: false },
                        certificationName: { type: "string" },
                        certificationNo: { type: "string" },
                        courseDuration: { type: "number" },
                        issuedBy: { type: "string" },
                        country: { type: "string" },
                        certifiedDate: { type: "number" },
                        expiryDate: { type: "number" },
                        passingYear: { type: "number" },
                        notes: { type: "string" }
                    }
                }
            }
        });


        $scope.ProfessionalQualificationOptions = {
            dataSource: $scope.ProfessionalQualificationData,
            sortable: true,
            selectable:"row",
            change: $scope.GridDataSelect,
            scrollable: true,
            pageable: {
                refresh: true,
                pageSizes: [20, 50, 100, 200],
                //pageSizes: [20, 50, 100, 200, "all"],
                buttonCount: 2,
                messages: {
                    itemsPerPage: "",
                    display: "{0} - {1} of {2} Records"
                }
            },
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {
                    field: "certificationName",
                    title: "Cert Name",
                    width: "180px"
                },
                {
                    field: "certificationNo",
                    title: "Cert No.",
                    width: "150px"
                },
                {
                    field: "courseDuration",
                    title: "Duration",
                    width: "130px"
                },
                {
                    field: "certifiedDate",
                    title: "Certified Date",
                    template: "#=kendo.toString(new Date(certifiedDate), 'yyyy-MM-dd')#",
                    width: "180px"
                },
                {
                    field: "expiryDate",
                    title: "Exp. Date",
                    template: "#=kendo.toString(new Date(expiryDate), 'yyyy-MM-dd')#",
                    width: "150px"
                },
                {
                    field: "issuedBy",
                    title: "Issued By",
                    width: "150px"
                }
            ]
        };

        // Work Experience

        $scope.PreviousWorkExperienceData = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/employementHistory/getAll?access_token='+TokenService.getAccessToken()+"&pEmployeeCode="+$scope.EmployeeCode;
                    },
                    dataType: "json",
                }
            },
            error: function (e) {
                if (e.errorThrown.toString() === 'Unauthorized') {
                    alert('Unauthorized Access!');
                    window.location = '/account/login';
                }
            },
            pageSize: 5,
            schema: {
                model: {
                    id: "id",
                    fields: {
                        id: { type: "number", editable: false },
                        companyName: { type: "string" },
                        designation: { type: "string" },
                        jobResponsibility: { type: "string" },
                        country: { type: "string" },
                        city: { type: "string" },
                        address: { type: "string" },
                        startingSalary: { type: "number" },
                        closingSalary: { type: "number" },
                        currency: { type: "string" },
                        startDate: { type: "number" },
                        endDate: { type: "number" },
                        phone: { type: "string" },
                        resignCause: { type: "string" }
                    }
                }
            }
        });

        $scope.PreviousWorkExperienceOptions = {
            dataSource: $scope.PreviousWorkExperienceData,
            sortable: true,
            selectable:"row",
            change: $scope.GridDataSelect,
            scrollable: true,
            pageable: {
                refresh: true,
                pageSizes: [20, 50, 100, 200],
                //pageSizes: [20, 50, 100, 200, "all"],
                buttonCount: 2,
                messages: {
                    itemsPerPage: "",
                    display: "{0} - {1} of {2} Records"
                }
            },
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {
                    field: "companyName",
                    title: "Company Name",
                    width: "180px"
                },
                {
                    field: "designation",
                    title: "Designation",
                    width: "150px"
                },
                {
                    field: "startDate",
                    title: "Start Date",
                    template: "#=kendo.toString(new Date(startDate), 'yyyy-MM-dd')#",
                    width: "120px"
                },
                {
                    field: "endDate",
                    title: "End Date",
                    template: "#=kendo.toString(new Date(endDate), 'yyyy-MM-dd')#",
                    width: "120px"
                },
                {
                    field: "closingSalary",
                    title: "Salary",
                    width: "120px"
                },
                {
                    field: "resignCause",
                    title: "Resign Cause",
                    width: "250px"
                }
            ]
        };


        //Language

        $scope.LanguageProficiencyData = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/language/getAll?access_token='+TokenService.getAccessToken()+"&pEmployeeCode="+$scope.EmployeeCode;
                    },
                    dataType: "json",
                }
            },
            error: function (e) {
                if (e.errorThrown.toString() === 'Unauthorized') {
                    alert('Unauthorized Access!');
                    window.location = '/account/login';
                }
            },
            pageSize: 5,
            schema: {
                model: {
                    id: "id",
                    fields: {
                        id: { type: "number", editable: false },
                        languageName: { type: "string" },
                        writing: { type: "string" },
                        reading: { type: "string" },
                        spoken: { type: "string" },
                        listening: { type: "string" },
                        motherLanguage: { type: "boolean" },
                        notes: { type: "string" }
                    }
                }
            }
        });

        $scope.LanguageProficiencyOptions = {
            dataSource: $scope.LanguageProficiencyData,
            sortable: true,
            selectable:"row",
            change: $scope.GridDataSelect,
            scrollable: true,
            pageable: {
                refresh: true,
                pageSizes: [20, 50, 100, 200],
                //pageSizes: [20, 50, 100, 200, "all"],
                buttonCount: 2,
                messages: {
                    itemsPerPage: "",
                    display: "{0} - {1} of {2} Records"
                }
            },
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {
                    field: "languageName",
                    title: "Language Name",
                    width: "180px"
                },
                {
                    field: "listening",
                    title: "Listening",
                    width: "150px"
                },
                {
                    field: "reading",
                    title: "Reading",
                    width: "150px"
                },
                {
                    field: "writing",
                    title: "Writing",
                    width: "150px"
                },
                {
                    field: "spoken",
                    title: "Speaking",
                    width: "150px"
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

        //=========================================== Inline setting of personal management ================================================

        //Country Modal
        $scope.Country = function(){
            $scope.modalInstance = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                templateUrl: '/configurations/systemVariable/country',
                controller :'CountryModalController',
                controllerAs: '$ctrl',
                size: 'lg',
                resolve: {
                    parameters:{}
                }
            });
        }

        //City Modal
        $scope.City = function(){
            $scope.modalInstance = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                templateUrl: '/configurations/systemVariable/city',
                controller :'CityModalController',
                controllerAs: '$ctrl',
                size: 'lg',
                resolve: {
                    parameters:{}
                }
            });
        }

        //Position Name Modal
        $scope.PositionName = function(){
            $scope.modalInstance = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                templateUrl: '/configurations/systemVariable/positionName',
                controller :'PositionModalController',
                controllerAs: '$ctrl',
                size: 'lg',
                resolve: {
                    parameters:{}
                }
            });
        }

        //Unit Modal
        $scope.Unit = function(){
            $scope.modalInstance = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                templateUrl: '/configurations/systemVariable/unit',
                controller :'UnitModalController',
                controllerAs: '$ctrl',
                size: 'lg',
                resolve: {
                    parameters:{}
                }
            });
        }

        //Division Modal
        $scope.Division = function(){
            $scope.modalInstance = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                templateUrl: '/configurations/systemVariable/division',
                controller :'DivisionModalController',
                controllerAs: '$ctrl',
                size: 'lg',
                resolve: {
                    parameters:{}
                }
            });
        }

        //Department Modal
        $scope.Department = function(){
            $scope.modalInstance = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                templateUrl: '/configurations/systemVariable/department',
                controller :'DepartmentModalController',
                controllerAs: '$ctrl',
                size: 'lg',
                resolve: {
                    parameters:{}
                }
            });
        }

        //Designation Modal
        $scope.Designation = function(){
            $scope.modalInstance = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                templateUrl: '/configurations/systemVariable/designation',
                controller :'DesignationModalController',
                controllerAs: '$ctrl',
                size: 'lg',
                resolve: {
                    parameters:{}
                }
            });
        }

        //Section Modal
        $scope.Section = function(){
            $scope.modalInstance = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                templateUrl: '/configurations/basicInfo/section',
                controller :'SectionModalController',
                controllerAs: '$ctrl',
                size: 'lg',
                resolve: {
                    parameters:{}
                }
            });
        }

        //Sub Section Modal
        $scope.SubSection = function(){
            $scope.modalInstance = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                templateUrl: '/configurations/basicInfo/subSection',
                controller :'SubSectionModalController',
                controllerAs: '$ctrl',
                size: 'lg',
                resolve: {
                    parameters:{}
                }
            });
        }

        //Staff Category Modal
        $scope.StaffCategory = function(){
            $scope.modalInstance = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                templateUrl: '/configurations/systemVariable/staffCategory',
                controller :'StaffCategoryModalController',
                controllerAs: '$ctrl',
                size: 'lg',
                resolve: {
                    parameters:{}
                }
            });
        }

        //Job Location Modal
        $scope.JobLocation = function(){
            $scope.modalInstance = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                templateUrl: '/configurations/systemVariable/jobLocationInfo',
                controller :'JobLocationModalController',
                controllerAs: '$ctrl',
                size: 'lg',
                resolve: {
                    parameters:{}
                }
            });
        }

        //Skill Category Modal
        $scope.skillCategory = function(){
            $scope.modalInstance = $uibModal.open({
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                templateUrl: '/configurations/systemVariable/skillCategory',
                controller :'SkillCategoryModalController',
                controllerAs: '$ctrl',
                size: 'lg',
                resolve: {
                    parameters:{}
                }
            });
        }

        // Reload dropdown for getting updated dropdown list
        //Reload Country dropdown
        $scope.$on("modalToCountryDataLoad", function(modalToCountryDataLoad) {
            getAllCountries();
        });

        //Reload City dropdown
        $scope.$on("modalToCityDataLoad", function(modalToCityDataLoad) {
            getAllCities();
        });

        //Reload Position dropdown
        $scope.$on("modalToPositionDataLoad", function(modalToPositionDataLoad) {
            getAllUnits();
        });

        //Reload Division dropdown
        $scope.$on("modalToDivisionDataLoad", function(modalToDivisionDataLoad) {
            //getAllDivisions();
        });

        //Reload Unit dropdown
        $scope.$on("modalToUnitsDataLoad", function(modalToUnitsDataLoad) {
            getAllUnits();
        });

        //Reload Department dropdown
        $scope.$on("modalToDepartmentDataLoad", function(modalToDepartmentDataLoad) {
            getAllDepartments();
        });

        //Reload Designation dropdown
        $scope.$on("modalToDesignationDataLoad", function(modalToDesignationDataLoad) {
            getAllDesignations();
        });

        //Reload Section dropdown
        $scope.$on("modalToSectionDataLoad", function(modalToSectionDataLoad) {
            getAllSections();
        });

        //Reload Sub Section dropdown
        $scope.$on("modalToSubSectionDataLoad", function(modalToSubSectionDataLoad) {
            getAllSubSections();
        });

        //Reload Staff category dropdown
        $scope.$on("modalToStaffCategoryDataLoad", function(modalToStaffCategoryDataLoad) {
            getAllStaffCategories();
        });

        //Reload Skill Category dropdown
        $scope.$on("modalToSkillCategoryDataLoad", function(modalToSubSectionDataLoad) {
            getAllSkillCategories();
        });

        //Reload Job location dropdown
        $scope.$on("modalToJobLocationDataLoad", function(modalToJobLocationDataLoad) {
            getAllJobLocations();
        });
    });