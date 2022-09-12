package com.clouderp.client.controller.hrm;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Sohag on 06/04/2018.
 */
@Controller
@RequestMapping("/employeeOthers")
public class EmployeeOthersController {
    @RequestMapping(value = "/rulesTag", method = RequestMethod.GET)
    public String getRulesTag(){
        return "hrm/employeeOthers/rulesTag";
    }

    @RequestMapping(value = "/expatriateInfo", method = RequestMethod.GET)
    public String getExpatriateInfo(){
        return "hrm/employeeOthers/expatriateInfo";
    }

    @RequestMapping(value = "/publicationInfo", method = RequestMethod.GET)
    public String getPublicationInfo(){
        return "hrm/employeeOthers/publicationInfo";
    }

    @RequestMapping(value = "/skillInfo", method = RequestMethod.GET)
    public String getSkillInfo(){
        return "hrm/employeeOthers/skillInfo";
    }

    @RequestMapping(value = "/travelInfo", method = RequestMethod.GET)
    public String getTravelInfo(){
        return "hrm/employeeOthers/travelInfo";
    }

    @RequestMapping(value = "/promotionInfo", method = RequestMethod.GET)
    public String getPromotionInfo(){
        return "hrm/employeeOthers/promotionInfo";
    }

    @RequestMapping(value = "/disciplinaryActions", method = RequestMethod.GET)
    public String getDisciplinaryActions(){
        return "hrm/employeeOthers/disciplinaryActions";
    }

    @RequestMapping(value = "/separationInfo", method = RequestMethod.GET)
    public String getSeparationInfo(){
        return "hrm/employeeOthers/separationInfo";
    }

    @RequestMapping(value = "/awardOrAchievement", method = RequestMethod.GET)
    public String getAwardOrAchievement(){
        return "hrm/employeeOthers/awardOrAchievement";
    }

    @RequestMapping(value = "/transferInfo", method = RequestMethod.GET)
    public String getTransferInfo(){
        return "hrm/employeeOthers/transferInfo";
    }

    @RequestMapping(value = "/utilityInfo", method = RequestMethod.GET)
    public String getUtilityInfo(){
        return "hrm/employeeOthers/utilityInfo";
    }

    @RequestMapping(value = "/disciplinaryActionDefinition", method = RequestMethod.GET)
    public String getDisciplinaryActionDefinition(){
        return "hrm/employeeOthers/disciplinaryActionDefinition";
    }

    @RequestMapping(value = "/incrementInfo", method = RequestMethod.GET)
    public String getIncrementInfo(){
        return "hrm/employeeOthers/incrementInfoBulk";
    }

    @RequestMapping(value = "/stepOneInfoBulk", method = RequestMethod.GET)
    public String getStepOneInfoBulk(){
        return "hrm/employeeOthers/incrementInfoBulkStepOne";
    }

    @RequestMapping(value = "/stepTwoInfoBulk", method = RequestMethod.GET)
    public String getStepTwoInfoBulk(){
        return "hrm/employeeOthers/incrementInfoBulkStepTwo";
    }

    @RequestMapping(value = "/stepThreeInfoBulk", method = RequestMethod.GET)
    public String getStepThreeInfoBulk(){
        return "hrm/employeeOthers/incrementInfoBulkStepThree";
    }

    @RequestMapping(value = "/allowanceHistory", method = RequestMethod.GET)
    public String getAllowanceHistory(){
        return "hrm/employeeOthers/allowanceHistory";
    }

    @RequestMapping(value = "/transferBulk", method = RequestMethod.GET)
    public String getTransferBulk(){
        return "hrm/employeeOthers/transferBulk";
    }

    @RequestMapping(value = "/performanceReview", method = RequestMethod.GET)
    public String getPerformanceReview(){
        return "hrm/employeeOthers/performanceReview";
    }

    @RequestMapping(value = "/objectInfo", method = RequestMethod.GET)
    public String getObjectInfo(){
        return "hrm/employeeOthers/objectInfo";
    }

    @RequestMapping(value = "/specialDay", method = RequestMethod.GET)
    public String getSpecialDay(){
        return "hrm/employeeOthers/specialDay";
    }

    @RequestMapping(value = "/confirmatonRuleSettions", method = RequestMethod.GET)
    public String getConfirmatonRuleSettions(){
        return "hrm/employeeOthers/confirmatonRuleSettions";
    }

    @RequestMapping(value = "/familyInfo", method = RequestMethod.GET)
    public String getFamilyInfo(){
        return "hrm/employeeOthers/familyInfo";
    }

    @RequestMapping(value = "/separationInfoBulk", method = RequestMethod.GET)
    public String getSeparationInfoBulk(){
        return "hrm/employeeOthers/separationInfoBulk";
    }

    @RequestMapping(value = "/resourceInfo", method = RequestMethod.GET)
    public String getResourceInfo(){
        return "hrm/employeeOthers/resourceInfo";
    }

    @RequestMapping(value = "/internalTransfer", method = RequestMethod.GET)
    public String getInternalTransfer(){
        return "hrm/employeeOthers/internalTransfer";
    }
}
