package com.clouderp.client.controller.hrm;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Sohag on 06/04/2018.
 */
@Controller
@RequestMapping("/employees")
public class EmployeeManageController {
    @RequestMapping(value = "/employee", method = RequestMethod.GET)
    public String getEmployeeLayout(){
        return "hrm/employee/EmployeeAddEditLayout";
    }

    @RequestMapping(value = "/listing", method = RequestMethod.GET)
    public String getEmployeeGridListing(){
        return "hrm/employee/Employees";
    }

    @RequestMapping(value = "/general", method = RequestMethod.GET)
    public String getGeneralPage(){
        return "hrm/employee/GeneralInfo";
    }

    @RequestMapping(value = "/officeInfo", method = RequestMethod.GET)
    public String officeInfo(){
        return "hrm/employee/OfficeInfo";
    }

    @RequestMapping(value = "/ruleInfo", method = RequestMethod.GET)
    public String ruleInfo(){
        return "hrm/employee/RuleInfo";
    }

    @RequestMapping(value = "/emergencyInfo", method = RequestMethod.GET)
    public String emergencyInfo(){
        return "hrm/employee/EmergencyInfo";
    }

    @RequestMapping(value = "/educationalInfo", method = RequestMethod.GET)
    public String educationalInfo(){
        return "hrm/employee/EducationalInfo";
    }

    @RequestMapping(value = "/professionalQualification", method = RequestMethod.GET)
    public String professionalQualification(){
        return "hrm/employee/ProfessionalQualification";
    }

    @RequestMapping(value = "/previousJobHistory", method = RequestMethod.GET)
    public String previousJobHistory(){
        return "hrm/employee/PreviousJobHistory";
    }

    @RequestMapping(value = "/language", method = RequestMethod.GET)
    public String language(){
        return "hrm/employee/Language";
    }

    @RequestMapping(value = "/nomineeInfo", method = RequestMethod.GET)
    public String nomineeInfo(){
        return "hrm/employee/NomineeInfo";
    }

    @RequestMapping(value = "/familyInfo", method = RequestMethod.GET)
    public String familyInfo(){
        return "hrm/employee/FamilyInfo";
    }

    @RequestMapping(value = "/userDefinedField", method = RequestMethod.GET)
    public String userDefinedField(){
        return "hrm/employee/UserDefinedField";
    }

    @RequestMapping(value = "/rulesTag", method = RequestMethod.GET)
    public String rulesTag(){
        return "hrm/employee/rulesTag";
    }
}
