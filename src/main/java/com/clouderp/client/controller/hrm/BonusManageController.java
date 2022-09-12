package com.clouderp.client.controller.hrm;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Sohag on 06/04/2018.
 */
@Controller
@RequestMapping("/bonus/manage")
public class BonusManageController {
    @RequestMapping(value = "/bonusRule", method = RequestMethod.GET)
    public String getBonusRule(){
        return "hrm/bonusManage/bonusRule";
    }

    @RequestMapping(value = "/bonusProcess", method = RequestMethod.GET)
    public String getBonusProcess(){
        return "hrm/bonusManage/bonusProcess";
    }

    @RequestMapping(value = "/employeeSelectionBonusProcess", method = RequestMethod.GET)
    public String getEmployeeSelectionBonusProcess(){
        return "hrm/bonusManage/bonusProcessEmployeeSelection";
    }

    @RequestMapping(value = "/processedInformationBonusProcess", method = RequestMethod.GET)
    public String getProcessedInformationBonusProcess(){
        return "hrm/bonusManage/bonusProcessProcessedInformation";
    }

    @RequestMapping(value = "/bonusPolicy", method = RequestMethod.GET)
    public String getBonusPolicy(){
        return "hrm/bonusManage/bonusPolicy";
    }

    @RequestMapping(value = "/bonusDisbursement", method = RequestMethod.GET)
    public String getBonusDisbursement(){
        return "hrm/bonusManage/bonusDisbursement";
    }

}
