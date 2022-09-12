package com.clouderp.client.controller.hrm;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Sohag on 06/04/2018.
 */
@Controller
@RequestMapping("/payment/manage")
public class PaymentManageController {
    @RequestMapping(value = "/salaryHead", method = RequestMethod.GET)
    public String getSalaryHead(){
        return "hrm/paymentManage/salaryHead";
    }

    @RequestMapping(value = "/gradeInfo", method = RequestMethod.GET)
    public String getGradeInformation(){
        return "hrm/paymentManage/gradeInfo";
    }

    @RequestMapping(value = "/gradeStepSalaryRule", method = RequestMethod.GET)
    public String getGradeStepSalaryRule(){
        return "hrm/paymentManage/gradeStepSalaryRule";
    }

    @RequestMapping(value = "/stepInformation", method = RequestMethod.GET)
    public String getStepInformation(){
        return "hrm/paymentManage/stepInformation";
    }

    @RequestMapping(value = "/salaryRule", method = RequestMethod.GET)
    public String getSalaryRule(){
        return "hrm/paymentManage/salaryRule";
    }

    @RequestMapping(value = "/salaryDefinedPolicy", method = RequestMethod.GET)
    public String getSalaryDefinedPolicy(){
        return "hrm/paymentManage/salaryRuleDefinedPolicy";
    }

    @RequestMapping(value = "/salaryFractionAdjust", method = RequestMethod.GET)
    public String getSalaryFractionAdjust(){
        return "hrm/paymentManage/salaryRuleFractionAdjust";
    }

    @RequestMapping(value = "/salaryInformation", method = RequestMethod.GET)
    public String getSalaryInformation(){
        return "hrm/paymentManage/salaryInformation";
    }

    @RequestMapping(value = "/salaryProcess", method = RequestMethod.GET)
    public String getSalaryProcess(){
        return "hrm/paymentManage/salaryProcess";
    }

    @RequestMapping(value = "/salaryDisbursement", method = RequestMethod.GET)
    public String getSalaryDisbursement(){
        return "hrm/paymentManage/salaryDisbursement";
    }

    @RequestMapping(value = "/OtherSalaryRule", method = RequestMethod.GET)
    public String getOtherSalaryRule(){
        return "hrm/paymentManage/OtherSalaryRule";
    }

    @RequestMapping(value = "/otherSalaryInformation", method = RequestMethod.GET)
    public String getOtherSalaryInformation(){
        return "hrm/paymentManage/otherSalaryInformation";
    }

    @RequestMapping(value = "/shiftAllowanceProcess", method = RequestMethod.GET)
    public String getShiftAllowanceProcess(){
        return "hrm/paymentManage/shiftAllowanceProcess";
    }

    @RequestMapping(value = "/currencyRules", method = RequestMethod.GET)
    public String getCurrencyRules(){
        return "hrm/paymentManage/currencyRules";
    }

    @RequestMapping(value = "/attendancePaymentRule", method = RequestMethod.GET)
    public String getAttendancePaymentRule(){
        return "hrm/paymentManage/attendancePaymentRule";
    }

    @RequestMapping(value = "/ruleAttendancePayment", method = RequestMethod.GET)
    public String getRuleAttendancePayment(){
        return "hrm/paymentManage/attendancePaymentRulePaymentRule";
    }

    @RequestMapping(value = "/criteriaAttendancePayment", method = RequestMethod.GET)
    public String getCriteriaAttendancePayment(){
        return "hrm/paymentManage/attendancePaymentRulePaymentCriteria";
    }

    @RequestMapping(value = "/policesAttendancePayment", method = RequestMethod.GET)
    public String getPolicesAttendancePayment(){
        return "hrm/paymentManage/attendancePaymentRulePaymentRulePolices";
    }

    @RequestMapping(value = "/distributionRules", method = RequestMethod.GET)
    public String getDistributionRules(){
        return "hrm/paymentManage/distributionRules";
    }

    @RequestMapping(value = "/budget", method = RequestMethod.GET)
    public String getBudget(){
        return "hrm/paymentManage/budget";
    }

    @RequestMapping(value = "/ruleTag", method = RequestMethod.GET)
    public String getRuleTag(){
        return "hrm/paymentManage/ruleTag";
    }

    @RequestMapping(value = "/salaryProvisionEntry", method = RequestMethod.GET)
    public String getSalaryProvisionEntry(){
        return "hrm/paymentManage/salaryProvisionEntry";
    }

    @RequestMapping(value = "/uploadSalaryInformation", method = RequestMethod.GET)
    public String getUploadSalaryInformation(){
        return "hrm/paymentManage/uploadSalaryInformation";
    }

    @RequestMapping(value = "/salaryAdjustment", method = RequestMethod.GET)
    public String getSalaryAdjustment(){
        return "hrm/paymentManage/salaryAdjustment";
    }

    @RequestMapping(value = "/taxDeductionRules", method = RequestMethod.GET)
    public String getTaxDeductionRules(){
        return "hrm/paymentManage/taxDeductionRules";
    }

    @RequestMapping(value = "/taxDeductionTransaction", method = RequestMethod.GET)
    public String getTaxDeductionTransaction(){
        return "hrm/paymentManage/taxDeductionTransaction";
    }

    @RequestMapping(value = "/maternityPayment", method = RequestMethod.GET)
    public String getMaternityPayment(){
        return "hrm/paymentManage/maternityPayment";
    }

    @RequestMapping(value = "/postProcessSalaryAdjustment", method = RequestMethod.GET)
    public String getPostProcessSalaryAdjustment(){
        return "hrm/paymentManage/postProcessSalaryAdjustment";
    }

    @RequestMapping(value = "/preProcessSalaryAdjustment", method = RequestMethod.GET)
    public String getPreProcessSalaryAdjustment(){
        return "hrm/paymentManage/preProcessSalaryAdjustment";
    }

    @RequestMapping(value = "/fundTransferToDifferentAccount", method = RequestMethod.GET)
    public String getFundTransferToDifferentAccount(){
        return "hrm/paymentManage/fundTransferToDifferentAccount";
    }
}
