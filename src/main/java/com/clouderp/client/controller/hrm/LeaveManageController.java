package com.clouderp.client.controller.hrm;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Sohag on 06/04/2018.
 */
@Controller
@RequestMapping("/leave/manage")
public class LeaveManageController {
    @RequestMapping(value = "/leaveYear", method = RequestMethod.GET)
    public String getLeaveYear(){
        return "hrm/leaveManage/leaveYear";
    }

    @RequestMapping(value = "/leaveProcessList", method = RequestMethod.GET)
    public String getLeaveProcessList(){
        return "hrm/leaveManage/leaveProcessList";
    }

    @RequestMapping(value = "/leavePolicyDefinition", method = RequestMethod.GET)
    public String getLeavePolicyDefinition(){
        return "hrm/leaveManage/leavePolicyDefinition";
    }

    @RequestMapping(value = "/infoPolicy", method = RequestMethod.GET)
    public String getInfoPolicy(){
        return "hrm/leaveManage/leavePolicyDefinitionInfo";
    }

    @RequestMapping(value = "/deductionPolicy", method = RequestMethod.GET)
    public String getDeductionPolicy(){
        return "hrm/leaveManage/leavePolicyDefinitionDeduction";
    }

    @RequestMapping(value = "/leaveTransactionNew", method = RequestMethod.GET)
    public String getLeaveTransactionNew(){
        return "hrm/leaveManage/leaveTransactionNew";
    }

    @RequestMapping(value = "/infoNewTransaction", method = RequestMethod.GET)
    public String getInfoNewTransaction(){
        return "hrm/leaveManage/leaveTransactionNewInfo";
    }

    @RequestMapping(value = "/hourlyNewTransaction", method = RequestMethod.GET)
    public String getHourlyNewTransaction(){
        return "hrm/leaveManage/leaveTransactionNewHourly";
    }

    @RequestMapping(value = "/leaveYearEndProcess", method = RequestMethod.GET)
    public String getLeaveYearEndProcess(){
        return "hrm/leaveManage/leaveYearEndProcess";
    }

    @RequestMapping(value = "/ruleLeaveYear", method = RequestMethod.GET)
    public String getRuleLeaveYear(){
        return "hrm/leaveManage/leaveYearEndProcessRule";
    }

    @RequestMapping(value = "/processLeaveYear", method = RequestMethod.GET)
    public String getProcessLeaveYear(){
        return "hrm/leaveManage/leaveYearEndProcessYearProcess";
    }

    @RequestMapping(value = "/leaveRule", method = RequestMethod.GET)
    public String getLeaveRule(){
        return "hrm/leaveManage/leaveRule";
    }

    @RequestMapping(value = "/leaveAllocationInformation", method = RequestMethod.GET)
    public String getLeaveAllocationInformation(){
        return "hrm/leaveManage/leaveAllocationInformation";
    }

    @RequestMapping(value = "/leaveTransaction", method = RequestMethod.GET)
    public String getLeaveTransaction(){
        return "hrm/leaveManage/leaveTransaction";
    }

    @RequestMapping(value = "/stepOneTransaction", method = RequestMethod.GET)
    public String getStepOneTransaction(){
        return "hrm/leaveManage/leaveTransactionStepOne";
    }

    @RequestMapping(value = "/stepTwoTransaction", method = RequestMethod.GET)
    public String getStepTwoTransaction(){
        return "hrm/leaveManage/leaveTransactionStepTwo";
    }

    @RequestMapping(value = "/maternityLeaveRuleDefinition", method = RequestMethod.GET)
    public String getMaternityLeaveRuleDefinition(){
        return "hrm/leaveManage/maternityLeaveRuleDefinition";
    }

    @RequestMapping(value = "/maternityLeaveTransaction", method = RequestMethod.GET)
    public String getMaternityLeaveTransaction(){
        return "hrm/leaveManage/maternityLeaveTransaction";
    }

    @RequestMapping(value = "/leaveEncashmentProcess", method = RequestMethod.GET)
    public String getLeaveEncashmentProcess(){
        return "hrm/leaveManage/leaveEncashmentProcess";
    }

    @RequestMapping(value = "/stepOneEncashment", method = RequestMethod.GET)
    public String getStepOneEncashment(){
        return "hrm/leaveManage/leaveEncashmentProcessStepOne";
    }

    @RequestMapping(value = "/stepTwoEncashment", method = RequestMethod.GET)
    public String getStepTwoEncashment(){
        return "hrm/leaveManage/leaveEncashmentProcessStepTwo";
    }

    @RequestMapping(value = "/processEncashment", method = RequestMethod.GET)
    public String getProcessEncashment(){
        return "hrm/leaveManage/leaveEncashmentProcessProcess";
    }

    @RequestMapping(value = "/leaveFareAssistanceRule", method = RequestMethod.GET)
    public String getLeaveFareAssistanceRule(){
        return "hrm/leaveManage/leaveFareAssistanceRule";
    }
}
