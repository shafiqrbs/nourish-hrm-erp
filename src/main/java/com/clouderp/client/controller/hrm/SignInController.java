package com.clouderp.client.controller.hrm;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Navid on 11/06/2018.
 */
@Controller
@RequestMapping("/signIn/manage")
public class SignInController {
    @RequestMapping(value = "/maternityLeaveApproval", method = RequestMethod.GET)
    public String getMaternityLeaveApproval(){
        return "hrm/signIn/maternityLeaveApproval";
    }
    @RequestMapping(value = "/overTimeAssignment", method = RequestMethod.GET)
    public String getOverTimeAssignment(){
        return "hrm/signIn/overTimeAssignment";
    }

    @RequestMapping(value = "/stepOneOverTime", method = RequestMethod.GET)
    public String getStepOneOverTime(){
        return "hrm/signIn/overTimeAssignmentStepOne";
    }

    @RequestMapping(value = "/stepTwoOverTime", method = RequestMethod.GET)
    public String getStepTwoOverTime(){
        return "hrm/signIn/overTimeAssignmentStepTwo";
    }

    @RequestMapping(value = "/stepThreeOverTime", method = RequestMethod.GET)
    public String getStepThreeOverTime(){
        return "hrm/signIn/overTimeAssignmentStepThree";
    }

    @RequestMapping(value = "/leaveTransactionApprovalNew", method = RequestMethod.GET)
    public String getLeaveTransactionApprovalNew(){
        return "hrm/signIn/leaveTransactionApprovalNew";
    }

    @RequestMapping(value = "/leaveTransactionApprovalInfo", method = RequestMethod.GET)
    public String getLeaveTransactionApprovalInfo(){
        return "hrm/signIn/leaveTransactionApprovalInfo";
    }

    @RequestMapping(value = "/leaveTransactionApprovalHourly", method = RequestMethod.GET)
    public String getLeaveTransactionApprovalHourly(){
        return "hrm/signIn/leaveTransactionApprovalHourly";
    }

    @RequestMapping(value = "/attendanceProcess", method = RequestMethod.GET)
    public String getAttendanceProcess(){
        return "hrm/signIn/attendanceProcess";
    }

    @RequestMapping(value = "/stepOneAttendanceProcess", method = RequestMethod.GET)
    public String getStepOneAttendanceProcess(){
        return "hrm/signIn/attendanceProcessStepOne";
    }

    @RequestMapping(value = "/stepTwoAttendanceProcess", method = RequestMethod.GET)
    public String getStepTwoAttendanceProcess(){
        return "hrm/signIn/attendanceProcessStepTwo";
    }

    @RequestMapping(value = "/stepThreeAttendanceProcess", method = RequestMethod.GET)
    public String getStepThreeAttendanceProcess(){
        return "hrm/signIn/attendanceProcessStepThree";
    }

    @RequestMapping(value = "/compensatoryLeaveApproval", method = RequestMethod.GET)
    public String getCompensatoryLeaveApproval(){
        return "hrm/signIn/compensatoryLeaveApproval";
    }

    @RequestMapping(value = "/employeeActivation", method = RequestMethod.GET)
    public String getEmployeeActivation(){
        return "hrm/signIn/employeeActivation";
    }

    @RequestMapping(value = "/employeeApprovalInformation", method = RequestMethod.GET)
    public String getEmployeeApprovalInformation(){
        return "hrm/signIn/employeeApprovalInformation";
    }

    @RequestMapping(value = "/promotionApproval", method = RequestMethod.GET)
    public String getPromotionApproval(){
        return "hrm/signIn/promotionApproval";
    }

    @RequestMapping(value = "/separationApproval", method = RequestMethod.GET)
    public String getSeparationApproval(){
        return "hrm/signIn/separationApproval";
    }

    @RequestMapping(value = "/commonInfoSeparation", method = RequestMethod.GET)
    public String getCommonInfoSeparation(){
        return "hrm/signIn/separationApprovalCommonInfo";
    }

    @RequestMapping(value = "/resourceInfoSeparation", method = RequestMethod.GET)
    public String getResourceInfoSeparation(){
        return "hrm/signIn/separationApprovalResourceInfo";
    }

    @RequestMapping(value = "/loanInfoSeparation", method = RequestMethod.GET)
    public String getLoanInfoSeparation(){
        return "hrm/signIn/separationApprovalLoanInfo";
    }

    @RequestMapping(value = "/incrementInformationApprovalBulk", method = RequestMethod.GET)
    public String getIncrementInformationApprovalBulk(){
        return "hrm/signIn/incrementInformationApprovalBulk";
    }

    @RequestMapping(value = "/stepOneIncrementBulk", method = RequestMethod.GET)
    public String getStepOneIncrementBulk(){
        return "hrm/signIn/incrementInformationApprovalBulkStepOne";
    }

    @RequestMapping(value = "/stepTwoIncrementBulk", method = RequestMethod.GET)
    public String getStepTwoIncrementBulk(){
        return "hrm/signIn/incrementInformationApprovalBulkStepTwo";
    }

    @RequestMapping(value = "/salaryInformationApproval", method = RequestMethod.GET)
    public String getSalaryInformationApproval(){
        return "hrm/signIn/salaryInformationApproval";
    }

    @RequestMapping(value = "/bonusApprovalNew", method = RequestMethod.GET)
    public String getBonusApprovalNew(){
        return "hrm/signIn/bonusApprovalNew";
    }

    @RequestMapping(value = "/salaryProcessApproval", method = RequestMethod.GET)
    public String getSalaryProcessApproval(){
        return "hrm/signIn/salaryProcessApproval";
    }

    @RequestMapping(value = "/stepOneSalaryProcess", method = RequestMethod.GET)
    public String getStepOneSalaryProcess(){
        return "hrm/signIn/salaryProcessApprovalStepOne";
    }

    @RequestMapping(value = "/stepTwoSalaryProcess", method = RequestMethod.GET)
    public String getStepTwoSalaryProcess(){
        return "hrm/signIn/salaryProcessApprovalStepTwo";
    }
}
