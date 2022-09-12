app.controller("recruitmentManageController",
    function ($rootScope, $scope, $uibModal, $http, $location, $timeout, $filter,BaseApiUrlService,Flash,TokenService,
            RecruitmentServices,UploadService,SalaryRulesServices,EmployeeSalaryInfoServices,PrintServices,
            CityServices, CountryServices, DepartmentServices, UnitServices, DesignationServices, SectionServices,
            SubSectionServices,PositionServices,DivisionServices,StaffCategoryServices,JobLocationServices,NationalityServices,
            SkillCategoryServices,LeaveRuleServices,ShiftPlanServices,ShiftRuleServices,BankInfoServices) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl();
        var urlObj = $location.absUrl().split( '/' );
        $scope.CandidatePageName = (urlObj[6] == undefined?urlObj[5]:urlObj[6]);
        $scope.interviewCard = {};
        $scope.SkillMatrixDTO = {};
        $scope.IESkillMatrixLeftColumnObj = {};
        $scope.IESkillMatrixRightColumnObj = {};
        $scope.IESkillMatrixLeftColumnObj.skillMatrixDetailsDTOS = {};
        $scope.IESkillMatrixRightColumnObj.skillMatrixDetailsDTOS = {};
        $scope.SkillMatrixSection = {};
        $scope.rowNumber=0;
        $scope.skillMatrixSectionDTO={};
        $scope.candidateInfo= {};


        $scope.profilePicture = "http://via.placeholder.com/250x297";
        $scope.signPicture = "http://via.placeholder.com/232x80";
        $scope.nomineePP = "http://via.placeholder.com/232x232";


        $scope.isEmergencyFormButtonDisabled = false;

        $scope.EmployeeTempCode = '';

        function init() {
            if($scope.CandidatePageName == "ieDepartment"){
                loadIEDepartmentSkillMatrix($scope.EmployeeTempCode);
            }
            else if($scope.CandidatePageName == "salaryInformation"){
                getAllSalaryRulesDDL();
            }else{
                loadAllEmployeeOfficeDDL();
            }
        }

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

        $scope.cancel = function () {

            if($scope.CandidatePageName == "general"){
                $scope.candidateInfo = {};
                $scope.EmployeeTempCode = "";
                $scope.profilePicture = "http://via.placeholder.com/232x232";
                $scope.signPicture = "http://via.placeholder.com/232x80";
            }
            else if($scope.CandidatePageName == "emergencyInfo"){
                $scope.candidateEmergencyInfo = {};
            }
            else if($scope.CandidatePageName == "educationalInfo"){
                $scope.candidateEducationInfo = {};
            }
            else if($scope.CandidatePageName == "professionalQualification"){
                $scope.candidatePQualificationInfo = {};
            }
            else if($scope.CandidatePageName == "previousJobHistory"){
                $scope.candidateHistory = {};
            }
            else if($scope.CandidatePageName == "language"){
                $scope.candidateLanguage = {};
            }
            else if($scope.CandidatePageName == "nomineeInfo"){
                $scope.candidateNomineeInfo = {};
            }
            else if($scope.CandidatePageName == "familyInfo"){
                $scope.candidateFamilyInfo = {};
            }
        }

        $scope.sameAsPresent = function(same_As_Present){

            if(same_As_Present){
                $scope.candidateInfo.permanentAddress = $scope.candidateInfo.presentAddress;
                $scope.candidateInfo.permanentZIPCode = $scope.candidateInfo.presentZIPCode;
                $scope.candidateInfo.permanentPS= $scope.candidateInfo.presentPS;
                $scope.candidateInfo.permanentDistrict = $scope.candidateInfo.presentDistrict;
                $scope.candidateInfo.permanentCountry = $scope.candidateInfo.presentCountry;
            }else{
                if($scope.employeeCode == ""){
                    $scope.candidateInfo.permanentAddress = '';
                    $scope.candidateInfo.permanentZIPCode = '';
                    $scope.candidateInfo.permanentPS= '';
                    $scope.candidateInfo.permanentDistrict = '';
                    $scope.candidateInfo.permanentCountry = '';
                }
                else{
                    $scope.candidateInfo.permanentAddress = $scope.prevPermanentAddress;
                    $scope.candidateInfo.permanentZIPCode = $scope.prevPermanentZIPCode;
                    $scope.candidateInfo.permanentPS= $scope.prevPermanentPS;
                    $scope.candidateInfo.permanentDistrict = $scope.prevPermanentDistrict;
                    $scope.candidateInfo.permanentCountry = $scope.prevPermanentCountry
                }
            }
        }


        $scope.deleteImagePick = function(){
            if($scope.CandidatePageName == "general"){
                $scope.profilePicture = "http://via.placeholder.com/232x232";
            }
            else if($scope.CandidatePageName == "nomineeInfo"){
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

            var file = files[0];
            var ext = files[0].name.match(/\.(.+)$/)[1];
            if(!(angular.lowercase(ext) ==='jpg' || angular.lowercase(ext) ==='jpeg' || angular.lowercase(ext) ==='png')){
                alert("Invalid File Format");
                return false;
            }else if(file.size > 307200 ){
                alert("File is too big");
                return false;
            }
            var reader = new FileReader();
            reader.onload = $scope.imageIsLoaded;
            reader.readAsDataURL(file);
            if($scope.CandidatePageName == "general"){
                $scope.profilePictureFile = file;
            }
            else if($scope.CandidatePageName == "nomineeInfo"){
                $scope.pnomineePPFile = file;
            }

        }
        $scope.imageIsLoaded = function(e){
            $scope.$apply(function() {
                if($scope.CandidatePageName == "general"){
                    $scope.profilePicture = e.target.result;
                }
                else if($scope.CandidatePageName == "nomineeInfo"){
                    $scope.nomineePP = e.target.result;
                }
            });
        }

        $scope.signImagePick = function(){
            angular.element('#sing-img-file-upload').trigger('click');
        };

        $scope.signImageUpload = function(event){
            var files = event.target.files;

            var file = files[0];

            var ext = files[0].name.match(/\.(.+)$/)[1];
            if(!(angular.lowercase(ext) ==='jpg' || angular.lowercase(ext) ==='jpeg' || angular.lowercase(ext) ==='png')){
                alert("Invalid File Format");
                return false;
            }else if(file.size > 307200 ){
                alert("File is too big");
                return false;
            }

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



        $scope.flashMessage = function (resp){
            if(resp.data.isSuccess == true){
                Flash.create('success', resp.data.successMessage, 'custom-class');
            }else{
                Flash.create('danger', resp.data.errorMessage, 'custom-class');
            }
        }

        $scope.interviewCardPrint = function(){
            PrintServices.printPreview();
        }

        $scope.openEmployeeForm = function (pageName) {
            $scope.CandidatePageName = pageName;
            if($scope.EmployeeTempCode == "")
                return;
            getCandidateApplicationInfo($scope.EmployeeTempCode);
        }

        function getCandidateApplicationInfo(pEmployeeTempCode){
            var pageName = $scope.CandidatePageName;
            if(pageName == "general"){
                $scope.getCandidateAllInfoByTempCode(pEmployeeTempCode);
            }
            else if(pageName == "emergencyInfo"){
                $scope.getCandidateEmergencyInfo(pEmployeeTempCode);
            }
            else if(pageName == "educationalInfo"){
                $scope.getEducationalInfo(pEmployeeTempCode);
            }
            else if(pageName == "professionalQualification"){
                $scope.getPQualificationInfo(pEmployeeTempCode);
            }
            else if(pageName == "previousJobHistory"){
                $scope.getJobHistory(pEmployeeTempCode);
            }
            else if(pageName == "language"){
                $scope.getLanguageInfo(pEmployeeTempCode);
            }
            else if(pageName == "nomineeInfo"){
                $scope.getNomineeInfo(pEmployeeTempCode);
            }
            else if(pageName == "familyInfo"){
                $scope.getFamilyInfo(pEmployeeTempCode);
            }
            else{
                getCandidateInfoByCode(pEmployeeTempCode,pageName);
            }
        }


        function loadIEDepartmentSkillMatrix(pEmployeeTempCode){
            getAllSkillMatrixLeftColumnByEmployeeTempCode(pEmployeeTempCode);
        }

        function getAllSkillMatrixSection(){
            RecruitmentServices.getAllSkillMatrixSection($scope.EmployeeTempCode,TokenService.getAccessToken()).then(function(resp) {
                $scope.SkillMatrixSection = resp;
                //alert(JSON.stringify(resp))
                console.log(resp);
            })
        }

        function getAllSkillMatrixLeftColumnByEmployeeTempCode(pEmployeeTempCode){
            RecruitmentServices.getAllIEDepartmentSkillMatrixData(pEmployeeTempCode,TokenService.getAccessToken()).then(function(resp) {
                $scope.IESkillMatrixLeftColumnObj = resp;
                console.log(resp);
            })
        }

        function getAllSkillMatrixRightColumnByEmployeeTempCode(pEmployeeTempCode,pUIPosition){
            RecruitmentServices.getAllIEDepartmentSkillMatrixData(pEmployeeTempCode,pUIPosition,TokenService.getAccessToken()).then(function(resp) {
                $scope.IESkillMatrixRightColumnObj = resp;
                console.log(resp);
            })
        }

        $scope.addSectionIntoCandidate = function(isValid,skillMatrixSectionDTO){
            if($scope.EmployeeTempCode == ""){
                alert("You must have to select candidate first!");
            }
            else{
                skillMatrixSectionDTO.candidateCode = $scope.EmployeeTempCode;
                RecruitmentServices.saveSkillMatrixSection(skillMatrixSectionDTO,TokenService.getAccessToken()).then(function(resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                        $scope.skillMatrixSectionDTO = {};
                        //load remaining section of a candidate
                        getAllSkillMatrixLeftColumnByEmployeeTempCode($scope.EmployeeTempCode);
                        getAllSkillMatrixSection();
                    }else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                })
            }
        }

        $scope.addNewProcess = function(index,skillMatrixProcessObj){
            var sectionProcessObj = skillMatrixProcessObj[index];
            if(sectionProcessObj.processId == undefined){
                alert("You must have to select process first!");
            }
            else{
                RecruitmentServices.saveSkillMatrixSectionDetails(sectionProcessObj,TokenService.getAccessToken()).then(function(resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                        //$scope.skillMatrixSectionDTO = {};
                        //load remaining section of a candidate
                        getAllSkillMatrixLeftColumnByEmployeeTempCode($scope.EmployeeTempCode);
                    }else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                })
            }
        }

        $scope.createNewProcess = function(index,skillMatrixProcessObj){
            var sectionProcessObj = skillMatrixProcessObj[index];
            sectionProcessObj.processId = 0;
            RecruitmentServices.saveSkillMatrixSectionDetails(sectionProcessObj,TokenService.getAccessToken()).then(function(resp) {
                if(resp.data.isSuccess == true){
                    Flash.create('success', resp.data.successMessage, 'custom-class');
                    //$scope.skillMatrixSectionDTO = {};
                    //load remaining section of a candidate
                    getAllSkillMatrixLeftColumnByEmployeeTempCode($scope.EmployeeTempCode);
                }else{
                    Flash.create('danger', resp.data.errorMessage, 'custom-class');
                }
            })
        }

        $scope.deleteCandidateSectionDetails = function(pCandidateProcessId){
            RecruitmentServices.deleteCandidateSectionDetails(pCandidateProcessId,TokenService.getAccessToken()).then(function(resp) {
                if(resp.isSuccess == true){
                    Flash.create('success', resp.successMessage, 'custom-class');
                    //$scope.skillMatrixSectionDTO = {};
                    //load remaining section of a candidate
                    getAllSkillMatrixLeftColumnByEmployeeTempCode($scope.EmployeeTempCode);
                }else{
                    Flash.create('danger', resp.errorMessage, 'custom-class');
                }
            })
        }

        $scope.deleteCandidateSection = function(pCandidateSectionId){
            RecruitmentServices.deleteCandidateSection(pCandidateSectionId,TokenService.getAccessToken()).then(function(resp) {
                if(resp.isSuccess == true){
                    Flash.create('success', resp.successMessage, 'custom-class');
                    //$scope.skillMatrixSectionDTO = {};
                    //load remaining section of a candidate
                    getAllSkillMatrixLeftColumnByEmployeeTempCode($scope.EmployeeTempCode);
                }else{
                    Flash.create('danger', resp.errorMessage, 'custom-class');
                }
            })
        }

        $scope.saveApplicationForm = function(isValid,candidateInfo){
            if(isValid){
                RecruitmentServices.saveCandidateApplicationForm(candidateInfo,TokenService.getAccessToken()).then(function(resp) {
                    if(resp.data.isSuccess == true){


                        if($scope.profilePictureFile != null && $scope.signPictureFile != null ) {
                            UploadService.saveProfileAndSignImg($scope.profilePictureFile, $scope.signPictureFile, $scope.EmployeeTempCode);

                            candidateInfo.empImage = $scope.EmployeeTempCode+".JPG";
                            candidateInfo.empSignature = $scope.EmployeeTempCode+".JPG";
                            RecruitmentServices.saveCandidateApplicationForm(candidateInfo, TokenService.getAccessToken()).then(function(){},function (){})
                        }
                        else if($scope.profilePictureFile != null ) {
                            UploadService.saveEmployeeImage($scope.profilePictureFile, $scope.EmployeeTempCode);

                            candidateInfo.empImage = $scope.EmployeeTempCode+".JPG";

                            RecruitmentServices.saveCandidateApplicationForm(candidateInfo, TokenService.getAccessToken()).then(function(){},function (){})

                        }


                        Flash.create('success', resp.data.successMessage, 'custom-class');
                        $scope.interviewCard = {};
                        $scope.CandidateGridDataSource.read();
                    }else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                })
            }
        }

        $scope.saveCandidateEmergencyForm= function(isValid,emergencyInfo){
            emergencyInfo.employeeCode = $scope.EmployeeTempCode;
            if(isValid){
                RecruitmentServices.saveEmergency(emergencyInfo,TokenService.getAccessToken()).then(function(resp) {
                    $scope.flashMessage(resp);
                });
            }
        }

        // Save Education Info
        $scope.saveEducationForm = function (isValid, educationInfo)  {
            educationInfo.employeeCode = $scope.EmployeeTempCode;
            if(educationInfo.id == undefined){
                educationInfo.id = '0';
            }
            RecruitmentServices.saveEducation(educationInfo, TokenService.getAccessToken())
                .then(function (resp) {
                    $scope.flashMessage(resp);
                    $scope.getEducationalInfo($scope.EmployeeTempCode);
                    $scope.candidateEducationInfo = {};
                }, function(error){
                    console.log(error);
                });
        }

        // Save Qualification Info
        $scope.saveQualificationForm = function (isValid, pQualificationInfo) {
            pQualificationInfo.employeeCode = $scope.EmployeeTempCode;
            if(pQualificationInfo.id == undefined){
                pQualificationInfo.id = '0';
            }
            RecruitmentServices.saveQualification(pQualificationInfo, TokenService.getAccessToken())
                .then(function (resp) {
                    $scope.flashMessage(resp);
                    $scope.getPQualificationInfo($scope.EmployeeTempCode);
                    $scope.candidatePQualificationInfo ={};
                }, function(error){
                    console.log(error);
                });
        }

        $scope.saveHistoryForm = function (isValid,history){
            history.employeeCode = $scope.EmployeeTempCode;
            if(history.id == undefined){
                history.id = '0';
            }
            RecruitmentServices.saveJobHistory(history, TokenService.getAccessToken())
                .then(function (resp) {
                    $scope.flashMessage(resp);
                    $scope.getJobHistory($scope.EmployeeTempCode);
                    $scope.candidateHistory ={}
                }, function(error){
                    console.log(error);
                });
        }
        $scope.saveLanguageForm = function (isValid,language){
            language.employeeCode = $scope.EmployeeTempCode;
            if(language.id == undefined){
                language.id = '0';
            }
            RecruitmentServices.saveLanguage(language, TokenService.getAccessToken())
                .then(function (resp) {
                    $scope.flashMessage(resp);
                    $scope.getLanguageInfo($scope.EmployeeTempCode);
                    $scope.candidateLanguage={};
                }, function(error){
                    console.log(error);
                });
        }
        $scope.saveNomineeForm = function (isValid,nomineeInfo){
            nomineeInfo.employeeCode = $scope.EmployeeTempCode;

            RecruitmentServices.saveNominee(nomineeInfo, TokenService.getAccessToken())
                .then(function (resp) {
                    UploadService.saveNomineeImage($scope.nomineePP, $scope.EmployeeTempCode);

                    $scope.flashMessage(resp);
                }, function(error){
                    console.log(error);
                });
        }
        $scope.saveFamilyForm = function (isValid,familyInfo){
            familyInfo.employeeCode = $scope.EmployeeTempCode;
            RecruitmentServices.saveFamily(familyInfo, TokenService.getAccessToken())
                .then(function (resp) {
                    $scope.flashMessage(resp);
                }, function(error){
                    console.log(error);
                });
        }

        $scope.saveInterViewCardForm = function(isValid,interviewCard){
            if(isValid){
                RecruitmentServices.saveInterViewCardForm(interviewCard,TokenService.getAccessToken()).then(function(resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                    }else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                })
            }
        }

        $scope.interviewCardFormReset = function(){
            $scope.interviewCard = {};
            $scope.CandidateGridDataSource.read();
        }

        $scope.updateSectionName = function(pSectionId,pSectionProcessId,pSectionProcessName,pPrevSectionProcessName){
            if(pSectionProcessName != pPrevSectionProcessName){
                RecruitmentServices.updateSectionProcess(pSectionId,pSectionProcessId,pSectionProcessName,TokenService.getAccessToken()).then(function(resp) {
                    //alert(JSON.stringify(resp));
                    if(resp.isSuccess == false){
                        Flash.create('danger', resp.errorMessage, 'custom-class');
                    }
                    //load section and details
                    getAllSkillMatrixLeftColumnByEmployeeTempCode($scope.EmployeeTempCode);
                })
            }
        }

        $scope.saveSkillMatrixForm = function(isValid,SkillMatrixDTOObj){
            if(isValid){
                console.log(SkillMatrixDTOObj);
                if($scope.EmployeeTempCode !=""){
                    RecruitmentServices.saveSkillMatrix($scope.EmployeeTempCode,SkillMatrixDTOObj,TokenService.getAccessToken()).then(function(resp) {
                        if(resp.data.isSuccess == true){
                            Flash.create('success', resp.data.successMessage, 'custom-class');
                        }else{
                            Flash.create('danger', resp.data.errorMessage, 'custom-class');
                        }
                    })
                }
                else{
                    Flash.create('danger', 'You must have to select one candidate first!', 'custom-class');
                }
            }
        }

        $scope.loadGeneralEmployeeInfo = function(pEmployeeTempCode){
            $scope.candidateInfo = {};
            $scope.profilePicture = "http://via.placeholder.com/232x232";
            $scope.signPicture = "http://via.placeholder.com/232x80";
            $scope.isNewEmployee = true;

           $scope.CandidateGridDataSource.query({
                page:1,
                pageSize:50,
                filter:{
                    logic:"or",
                    filters:[
                        {field:"employeeCode", operator:"contains",value:pEmployeeTempCode}
                    ]
                }
            });
        }

        $scope.CandidateGridDataSelect = function (e){
            //console.log(e.sender.dataItem(e.sender.select()));
            $scope.EmployeeTempCode = e.sender.dataItem(e.sender.select()).employeeTempCode;
            getCandidateInfoByCode($scope.EmployeeTempCode)
            //load remaining section of a candidate
            getAllSkillMatrixSection();
        }

        $scope.getCandidateAllInfoByTempCode = function(employeeTempCode){
            RecruitmentServices.getCandidateAllInfoByTempCode(employeeTempCode,TokenService.getAccessToken()).then(function(resp) {
                $scope.candidateInfo = resp;
                $scope.candidateInfo.dob = new Date(resp.dob);

                if(resp.empImage == null || resp.empImage == undefined || resp.empImage =="")
                    $scope.profilePicture = "http://via.placeholder.com/250x297";
                else
                    $scope.profilePicture = "/assets/img/profile/"+resp.empImage;

                if(resp.empSignature == null || resp.empSignature == undefined || resp.empSignature =="")
                    $scope.signPicture = "http://via.placeholder.com/232x80";
                else
                    $scope.signPicture = "/assets/img/sign/"+resp.empSignature;


                $scope.prevPermanentAddress = resp.permanentAddress;
                $scope.prevPermanentZIPCode = resp.permanentZIPCode;
                $scope.prevPermanentPS = resp.permanentPS;
                $scope.prevPermanentDistrict = resp.permanentDistrict;
                $scope.prevPermanentCountry = resp.permanentCountry;
            })
        }

        //Get Emergency info
        $scope.getCandidateEmergencyInfo = function(employeeTempCode){
            //    $scope.EmergencyContactData.read();
            $scope.candidateEmergencyInfo = {};
            RecruitmentServices.getCandidateEmergencyInfoById(employeeTempCode, TokenService.getAccessToken()).then(function(resp){
                $scope.candidateEmergencyInfo = resp;
            });
        }

        //Get Educational info
        $scope.getEducationalInfo = function (employeeTempCode){
            $scope.employeeEducationInfo = {};
            $scope.educationalInfoData.read();
        }

        //Get Professional qualification
        $scope.getPQualificationInfo = function (employeeTempCode){
            $scope.employeePQualificationInfo = {};
            $scope.ProfessionalQualificationData.read();
        }

        //Get EmployeeJobHistory
        $scope.getJobHistory = function(employeeTempCode){
            $scope.candidateHistory = {};
            $scope.PreviousWorkExperienceData.read();
        }
        $scope.getLanguageInfo = function(employeeTempCode){
            $scope.candidateLanguage = {};
            $scope.LanguageProficiencyData.read();
        }

        $scope.getNomineeInfo = function(employeeTempCode){
            $scope.candidateNomineeInfo = {};
            RecruitmentServices.getNomineeInfoByTempEmpCode(employeeTempCode, TokenService.getAccessToken()).then(function(resp){

                $scope.candidateNomineeInfo = resp;

                if(resp.nomineePic == null || resp.nomineePic == undefined || resp.nomineePic =="")
                    $scope.nomineePP = "http://via.placeholder.com/250x297";
                else
                    $scope.nomineePP = "/assets/img/profile/"+resp.nomineePic;
            });
        }

        $scope.getFamilyInfo = function(employeeTempCode){
            $scope.candidateFamilyInfo = {};
            RecruitmentServices.getFamilyInfoByTempEmpCode(employeeTempCode, TokenService.getAccessToken()).then(function(resp){

                $scope.candidateFamilyInfo = resp;
            });
        }

        $scope.GridDataSelect = function (e){

            if($scope.CandidatePageName == "educationalInfo"){
                $scope.candidateEducationInfo = e.sender.dataItem(e.sender.select());
            }
            else if($scope.CandidatePageName == "professionalQualification"){
                $scope.candidatePQualificationInfo = e.sender.dataItem(e.sender.select());

                if($scope.candidatePQualificationInfo.certifiedDate != null && $scope.candidatePQualificationInfo.certifiedDate != ''){
                    $scope.candidatePQualificationInfo.certifiedDate = new Date($scope.candidatePQualificationInfo.certifiedDate);
                }
                if($scope.candidatePQualificationInfo.expiryDate != null && $scope.candidatePQualificationInfo.expiryDate != ''){
                    $scope.candidatePQualificationInfo.expiryDate = new Date($scope.candidatePQualificationInfo.expiryDate);
                }
            }
            else if($scope.CandidatePageName == "previousJobHistory"){
                $scope.candidateHistory = e.sender.dataItem(e.sender.select());
                if($scope.candidateHistory.startDate != null && $scope.candidateHistory.startDate != ''){
                    $scope.candidateHistory.startDate = new Date($scope.candidateHistory.startDate);
                }
                if($scope.candidateHistory.endDate != null && $scope.candidateHistory.endDate != ''){
                    $scope.candidateHistory.endDate = new Date($scope.candidateHistory.endDate);
                }
            }
            else if($scope.CandidatePageName == "language"){
                $scope.candidateLanguage = e.sender.dataItem(e.sender.select());
            }
            $scope.$apply();
        }


        // Education Information
        $scope.educationalInfoData = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/recruitment/educationInfo/getAll?access_token='+TokenService.getAccessToken()+"&pEmployeeTempCode="+$scope.EmployeeTempCode;
                    },
                    dataType: "json"
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
                        return $scope.baseUrl+'/recruitment/professionalQualificationInfo/getAll?access_token='+TokenService.getAccessToken()+"&pEmployeeTempCode="+$scope.EmployeeTempCode;
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
                {field: "certificationName",title: "Cert Name",width: "180px"},
                {field: "certificationNo",title: "Cert No.",width: "150px"},
                {field: "courseDuration",title: "Duration",width: "130px"},
                {
                    field: "certifiedDate",title: "Certified Date",
                    template: "#=kendo.toString(new Date(certifiedDate), 'yyyy-MM-dd')#",
                    width: "180px"
                },
                {
                    field: "expiryDate",
                    title: "Exp. Date",
                    template: "#=kendo.toString(new Date(expiryDate), 'yyyy-MM-dd')#",
                    width: "150px"
                },
                {field: "issuedBy",title: "Issued By",width: "150px"}
            ]
        };


        // Work Experience

        $scope.PreviousWorkExperienceData = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/recruitment/employementHistory/getAll?access_token='+TokenService.getAccessToken()+"&pEmployeeTempCode="+$scope.EmployeeTempCode;
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
                        return $scope.baseUrl+'/recruitment/language/getAll?access_token='+TokenService.getAccessToken()+"&pEmployeeTempCode="+$scope.EmployeeTempCode;
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

        /*================================================== HR Department ================================================*/

        /*--------------------------------------------------- Add Salary ---------------------------------------------------*/
        //Initialization
        $scope.pSearchCriteria=""
        $scope.salaryRuleCode = "";
        $scope.isSalaryGenerateDisabled = false;
        $scope.employeeGrossSalary = 0;
        $scope.calculate = 0;
        $scope.employeeSalaryInfo={};

        function getAllSalaryRulesDDL(){
             SalaryRulesServices.getAllSalaryRuleCode(TokenService.getAccessToken()).then(function(resp){
               $scope.salaryRulesList  =  resp;
                //alert(JSON.stringify(resp))
             });
        }

        $scope.saveEmployeeSalary = function(employeeCode,salaryRuleCode,employeeGrossSalary){

            $scope.employeeSalaryInfo.employeeCode = employeeCode;
            $scope.employeeSalaryInfo.salaryRuleCode = salaryRuleCode;
            $scope.employeeSalaryInfo.employeeGrossSalary = employeeGrossSalary;

            EmployeeSalaryInfoServices.SaveOrUpdate($scope.employeeSalaryInfo,TokenService.getAccessToken()).then(function(resp) {
                if(resp.data.isSuccess == true){
                    Flash.create('success', resp.data.successMessage, 'custom-class');
                }
                else{
                    Flash.create('danger', resp.data.errorMessage, 'custom-class');
                }
            })
        }

         $scope.CalculateSalary = function(pSalaryRuleCode,pEmployeeGrossSalary){
            $scope.calculate = 1;
            $scope.salaryRuleCode = pSalaryRuleCode;
            $scope.employeeGrossSalary = pEmployeeGrossSalary;
            $scope.EmployeeSalaryInfoGridDataSource.read();
         }

         $scope.getSalaryRuleInfo = function(){
             EmployeeSalaryInfoServices.getEmployeeGrossSalary(TokenService.getAccessToken(),$scope.salaryRuleCode,$scope.EmployeeTempCode).then(function(resp){
                $scope.calculate = 0;
                $scope.salaryRuleCode  =  resp.salaryRuleCode;
                $scope.employeeGrossSalary  =  resp.grossSalary;

                if(resp.salaryGenerateDisabled = true)
                    $scope.isSalaryGenerateDisabled = true;
                 else
                    $scope.isSalaryGenerateDisabled = false;

                $scope.EmployeeSalaryInfoGridDataSource.read();
             });
         }

         $scope.EmployeeSalaryInfoGridDataSource = new kendo.data.DataSource({
              type: "json",
              transport: {
                  read: {
                      url: function(){
                          return $scope.baseUrl+'/employeeSalaryInfo/get?access_token='+TokenService.getAccessToken()+"&pEmployeeCode="+$scope.EmployeeTempCode+"&pSalaryRuleCode="+$scope.salaryRuleCode+"&pCalculate="+$scope.calculate+"&pGrossSalary="+$scope.employeeGrossSalary;
                      },
                      dataType: "json",
                  }
              },
              error: function (e) {
                  if (e.errorThrown.toString() === 'Unauthorized') {
                      alert('Unauthorized Access!');
                      window.location = '/auth/login';
                  }
              },
              pageSize: 10,
              schema: {
                  model: {
                      id: "id",
                      fields: {
                          Id: { type: "number", editable: false },
                          salaryHeadID: { type: "string" },
                          sCriteria: { type: "string" },
                          amount: { type: "number" },
                          netAmount: { type: "number" }
                      }
                  }
              },
              aggregate: [
                    { field: "netAmount", aggregate: "sum" }
                ]
          });

         $scope.employeeSalaryInfoGridOptions = {
             dataSource: $scope.EmployeeSalaryInfoGridDataSource,
             sortable: true,
             pageable: false,
             scrollable: true,
             dataBound: function () {
                 this.expandRow(this.tbody.find("tr.k-master-row").first());
             },
             columns: [
                {
                    field: "salaryHeadID",
                    title: "Salary Head",
                    width: "150px",
                    footerTemplate:"GROSS TOTAL"
                },
                {
                    field: "amount",
                    title: "Amount",
                    width: "120px",
                    attributes:{style:"text-align:right;"},
                    format: "{0:n0}"
                },
                {
                    field: "netAmount",
                    title: "Net Amount",
                    width: "150px",
                    attributes:{style:"text-align:right;"},
                    footerTemplate:"<div style='text-align: right;'>#= kendo.toString(sum, '\\#\\#,\\#') # </div>",
                    format: "{0:n0}"
                }
             ]
         };

         $scope.updateSalaryInfoModel = function(dataItem,amount){
            //alert(amount);
            dataItem.netAmount=amount;
            console.log(dataItem);
         }
         /*==================================================== End ================================================*/

         /*========================================= Candidate Appointment Letter ==================================*/
         //Initialization
         $scope.candidateDetailsInfo= {};
         $scope.getCandidateLetterInfo = function(pEmployeeTempCode){
            RecruitmentServices.getCandidateAppointLetterInfo(pEmployeeTempCode,TokenService.getAccessToken()).then(function(resp) {
                $scope.candidateDetailsInfo = resp;
                $scope.candidateDetailsInfo.dateOfBirth = new Date(resp.dateOfBirth);
                $scope.candidateDetailsInfo.dateOfBirth = new Date(resp.dateOfBirth);
                //console.log(resp);
            })

            $scope.getCandidateAppointedSalaryInfo();
         }

         $scope.getCandidateAppointedSalaryInfo = function(){
              EmployeeSalaryInfoServices.getEmployeeGrossSalary(TokenService.getAccessToken(),$scope.salaryRuleCode,$scope.EmployeeTempCode).then(function(resp){
                 $scope.calculate = 0;
                 $scope.salaryRuleCode  =  resp.salaryRuleCode;
                 $scope.employeeGrossSalary  =  resp.grossSalary;

                 if(resp.salaryGenerateDisabled = true)
                     $scope.isSalaryGenerateDisabled = true;
                  else
                     $scope.isSalaryGenerateDisabled = false;

                 $scope.CandidateAppointedSalaryInfoGridDataSource.read();
              });
          }

          $scope.CandidateAppointedSalaryInfoGridDataSource = new kendo.data.DataSource({
               type: "json",
               transport: {
                   read: {
                       url: function(){
                           return $scope.baseUrl+'/employeeSalaryInfo/get?access_token='+TokenService.getAccessToken()+"&pEmployeeCode="+$scope.EmployeeTempCode+"&pSalaryRuleCode="+$scope.salaryRuleCode+"&pCalculate="+$scope.calculate+"&pGrossSalary="+$scope.employeeGrossSalary;
                       },
                       dataType: "json",
                   }
               },
               error: function (e) {
                   if (e.errorThrown.toString() === 'Unauthorized') {
                       alert('Unauthorized Access!');
                       window.location = '/auth/login';
                   }
               },
               pageSize: 10,
               schema: {
                   model: {
                       id: "id",
                       fields: {
                           Id: { type: "number", editable: false },
                           salaryHeadID: { type: "string" },
                           sCriteria: { type: "string" },
                           amount: { type: "number" },
                           netAmount: { type: "number" }
                       }
                   }
               },
               aggregate: [
                     { field: "netAmount", aggregate: "sum" }
                 ]
           });

          $scope.candidateAppointedSalaryInfoGridOptions = {
              dataSource: $scope.CandidateAppointedSalaryInfoGridDataSource,
              sortable: true,
              pageable: false,
              scrollable: true,
              dataBound: function () {
                  this.expandRow(this.tbody.find("tr.k-master-row").first());
              },
              columns: [
                 {
                     field: "salaryHeadID",
                     title: "Salary Head",
                     width: "150px",
                     footerTemplate:"GROSS TOTAL"
                 },
                 {
                     field: "netAmount",
                     title: "Net Amount",
                     width: "150px",
                     attributes:{style:"text-align:right;"},
                     footerTemplate:"<div style='text-align: right;'>#= kendo.toString(sum, '\\#\\#,\\#') # </div>",
                     format: "{0:n0}"
                 }
              ]
          };
         /*==================================================== End ================================================*/


        function getCandidateInfoByCode(pEmployeeTempCode,pPageName){
            if(pPageName == "ieDepartment"){
                getAllSkillMatrixSection()
                loadIEDepartmentSkillMatrix(pEmployeeTempCode);
            }
            else if(pPageName == "interviewCard"){
                RecruitmentServices.getCandidateInterviewCardByTempCodeById(pEmployeeTempCode,TokenService.getAccessToken()).then(function(resp) {
                    $scope.interviewCard = resp;
                    $scope.interviewCard.dateOfBirth = new Date(resp.dateOfBirth);
                    //console.log(resp);
                })
            }
            else if(pPageName == "salaryInformation"){
                $scope.getSalaryRuleInfo();
            }
            else if(pPageName == "appointmentLetter"){
                $scope.getCandidateLetterInfo(pEmployeeTempCode);
            }
        }

        $scope.getCandidateGridDataSelect = function (e) {
            //console.log(e.sender.dataItem(e.sender.select()));
            $scope.EmployeeTempCode = e.sender.dataItem(e.sender.select()).employeeTempCode;
            var pageName = $scope.CandidatePageName;
            if(pageName == "general"){
                $scope.getCandidateAllInfoByTempCode($scope.EmployeeTempCode);
            }
            else if(pageName == "emergencyInfo"){
                $scope.getCandidateEmergencyInfo($scope.EmployeeTempCode);
            }
            else if(pageName == "educationalInfo"){
                $scope.getEducationalInfo($scope.EmployeeTempCode);
            }
            else if(pageName == "professionalQualification"){
                $scope.getPQualificationInfo($scope.EmployeeTempCode);
            }
            else if(pageName == "previousJobHistory"){
                $scope.getJobHistory($scope.EmployeeTempCode);
            }
            else if(pageName == "language"){
                $scope.getLanguageInfo($scope.EmployeeTempCode);
            }
            else if(pageName == "nomineeInfo"){
                $scope.getNomineeInfo($scope.EmployeeTempCode);
            }
            else if(pageName == "familyInfo"){
                $scope.getFamilyInfo($scope.EmployeeTempCode);
            }
            else{
                getCandidateInfoByCode($scope.EmployeeTempCode,pageName);
            }
        }


        $scope.loadCandidateInfo = function(pSearchCriteria){

            $scope.CandidateGridDataSource.query({
                page:1,
                pageSize:50,
                filter:{
                    filters:[
                        {field:"advanceSearchFiled", operator:"contains",value:pSearchCriteria}
                    ]
                }
            });
        }

        $scope.CandidateGridDataSource = new kendo.data.DataSource({
            type: "jsonp",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/recruitment/candidate/getAll?access_token='+TokenService.getAccessToken();
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
                        employeeTempCode: { type: "string" },
                        candidateName: { type: "string" }
                    }
                },
                data:"data",
                total:"total"
            }
        });

        $scope.CandidateAllDataOptions = {
            dataSource: $scope.CandidateGridDataSource,
            sortable: true,
            selectable:"row",
            change: $scope.getCandidateGridDataSelect,
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
                    field: "employeeTempCode",
                    title: "Code",
                    width: "110px"
                },
                {
                    field: "candidateName",
                    title: "Candidate Name",
                    width: "160px",
                    // template: '<span>{{(dataItem.salutation==null?"":dataItem.salutation) +" "+(dataItem.firstName==null?"":dataItem.firstName)}}</span>'
                }
            ]
        };

        /*Print Preview*/

        $scope.interviewCardPrint = function(){
            PrintServices.printPreview();
        }

        $scope.candidateApplicationFormPrint = function(){
            PrintServices.printPreview("printPreviewContainer");
        }

        $scope.interviewCardPrint = function(){
            PrintServices.printPreview("printPreviewContainer");
        }

        $scope.ieDepartmentSkillMatrixFormPrint = function(){
            PrintServices.printPreview("printPreviewContainer");
        }

        $scope.ageAndCapabilityCertificatePrint = function(){
            PrintServices.printPreview("printPreviewContainer");
        }

        $scope.fitnessCertificatePrint = function(){
            PrintServices.printPreview("printPreviewContainer");
        }

        $scope.addictionCertificatePrint = function(){
            PrintServices.printPreview("printPreviewContainer");
        }

        $scope.appointmentLetterFormPrint = function(){
            PrintServices.printPreview("printPreviewContainer");
        }

        /*End*/

        /*--- Initial Call ---*/
        init();
    });