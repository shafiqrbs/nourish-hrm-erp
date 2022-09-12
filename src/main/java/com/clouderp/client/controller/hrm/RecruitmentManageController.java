package com.clouderp.client.controller.hrm;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Sohag on 29/09/2018.
 */
@Controller
@RequestMapping("/recruitment")
public class RecruitmentManageController {

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String getRecruitmentLayout(){
        return "hrm/recruitment/RecruitLayout";
    }

    @RequestMapping(value = "/demo/application", method = RequestMethod.GET)
    public String getCandidateForm(){
        return "hrm/recruitment/Application";
    }

    @RequestMapping(value = "/application", method = RequestMethod.GET)
    public String getApplicationLayout(){
        return "hrm/recruitment/ApplicationAddEditLayout";
    }

    @RequestMapping(value = "/general", method = RequestMethod.GET)
    public String getApplicationPage(){
        return "hrm/recruitment/GeneralInfo";
    }

    @RequestMapping(value = "/officeInfo", method = RequestMethod.GET)
    public String officeInfo(){
        return "hrm/recruitment/OfficeInfo";
    }

    @RequestMapping(value = "/ruleInfo", method = RequestMethod.GET)
    public String ruleInfo(){
        return "hrm/recruitment/RuleInfo";
    }

    @RequestMapping(value = "/emergencyInfo", method = RequestMethod.GET)
    public String emergencyInfo(){
        return "hrm/recruitment/EmergencyInfo";
    }

    @RequestMapping(value = "/educationalInfo", method = RequestMethod.GET)
    public String educationalInfo(){
        return "hrm/recruitment/EducationalInfo";
    }

    @RequestMapping(value = "/professionalQualification", method = RequestMethod.GET)
    public String professionalQualification(){
        return "hrm/recruitment/ProfessionalQualification";
    }

    @RequestMapping(value = "/previousJobHistory", method = RequestMethod.GET)
    public String previousJobHistory(){
        return "hrm/recruitment/PreviousJobHistory";
    }

    @RequestMapping(value = "/language", method = RequestMethod.GET)
    public String language(){
        return "hrm/recruitment/Language";
    }

    @RequestMapping(value = "/nomineeInfo", method = RequestMethod.GET)
    public String nomineeInfo(){
        return "hrm/recruitment/NomineeInfo";
    }

    @RequestMapping(value = "/familyInfo", method = RequestMethod.GET)
    public String familyInfo(){
        return "hrm/recruitment/FamilyInfo";
    }

    @RequestMapping(value = "/interviewCard", method = RequestMethod.GET)
    public String getInterviewCardPage(){
        return "hrm/recruitment/InterViewCard";
    }

    @RequestMapping(value = "/ieDepartment", method = RequestMethod.GET)
    public String getIEDepartmentPage(){
        return "hrm/recruitment/IEDepartment";
    }


    @RequestMapping(value = "/doctorDepartment", method = RequestMethod.GET)
    public String getDoctorDepartmentPage(){
        return "hrm/recruitment/DoctorsDepartmentLayout";
    }

    @RequestMapping(value = "/doctorDepartment/ageAndCapabilityCertificate", method = RequestMethod.GET)
    public String getAgeAndCapabilityCertificatePage(){
        return "hrm/recruitment/AgeAndCapabilityCertificate";
    }

    @RequestMapping(value = "/doctorDepartment/fitnessCertificate", method = RequestMethod.GET)
    public String getFitnessCertificatePage(){
        return "hrm/recruitment/FitnessCertificate";
    }

    @RequestMapping(value = "/doctorDepartment/addictionCertificate", method = RequestMethod.GET)
    public String getAddictionCertificatePage(){
        return "hrm/recruitment/AddictionCertificate";
    }

    @RequestMapping(value = "/hrDepartment", method = RequestMethod.GET)
    public String getHRDepartmentLayoutPage(){
        return "hrm/recruitment/HRDepartmentLayout";
    }

    @RequestMapping(value = "/hrDepartment/salaryInformation", method = RequestMethod.GET)
    public String getAddSalaryInformationPage(){
        return "hrm/recruitment/SalaryInformation";
    }

    @RequestMapping(value = "/hrDepartment/appointmentLetter", method = RequestMethod.GET)
    public String getAppointmentLetterPage(){
        return "hrm/recruitment/AppointmentLetter";
    }

    @RequestMapping(value = "/hrDepartment/depositAndPolicyDeclaration", method = RequestMethod.GET)
    public String getDepositAndPolicyDeclarationPage(){
        return "hrm/recruitment/DepositAndPolicyDeclaration";
    }

    @RequestMapping(value = "/hrDepartment/jobVerificationReport", method = RequestMethod.GET)
    public String getJobVerificationReportPage(){
        return "hrm/recruitment/JobVerificationReport";
    }

    @RequestMapping(value = "/hrDepartment/nomineeForm", method = RequestMethod.GET)
    public String getNomineeFormPage(){
        return "hrm/recruitment/nomineeForm";
    }
}
