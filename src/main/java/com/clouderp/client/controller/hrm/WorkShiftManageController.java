package com.clouderp.client.controller.hrm;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Sohag on 06/04/2018.
 */
@Controller
@RequestMapping("/workShift/manage")
public class WorkShiftManageController {
    @RequestMapping(value = "/shiftPlan", method = RequestMethod.GET)
    public String getShiftPlan(){
        return "hrm/workShiftManage/shiftPlan";
    }

    @RequestMapping(value = "/shiftRule", method = RequestMethod.GET)
    public String getShiftRule(){
        return "hrm/workShiftManage/shiftRule";
    }

    @RequestMapping(value = "/shiftRoster", method = RequestMethod.GET)
    public String getShiftRoster(){
        return "hrm/workShiftManage/shiftRoster";
    }

    @RequestMapping(value = "/stepOne", method = RequestMethod.GET)
    public String getStepOne(){
        return "hrm/workShiftManage/shiftRosterStepOne";
    }

    @RequestMapping(value = "/stepTwo", method = RequestMethod.GET)
    public String getStepTwo(){
        return "hrm/workShiftManage/shiftRosterStepTwo";
    }

    @RequestMapping(value = "/stepThree", method = RequestMethod.GET)
    public String getStepThree(){
        return "hrm/workShiftManage/shiftRosterStepThree";
    }

    @RequestMapping(value = "/holidayCalendar", method = RequestMethod.GET)
    public String getCalendar(){
        return "hrm/workShiftManage/holidayCalendar";
    }

    @RequestMapping(value = "/stepOneCalendar", method = RequestMethod.GET)
    public String getStepOneCalendar(){
        return "hrm/workShiftManage/calendarStepOne";
    }

    @RequestMapping(value = "/stepTwoCalendar", method = RequestMethod.GET)
    public String getStepTwoCalendar(){
        return "hrm/workShiftManage/calendarStepTwo";
    }

    @RequestMapping(value = "/stepThreeCalendar", method = RequestMethod.GET)
    public String getStepThreeCalendar(){
        return "hrm/workShiftManage/calendarStepThree";
    }

    @RequestMapping(value = "/shiftRosterProcess", method = RequestMethod.GET)
    public String getShiftRosterProcess(){
        return "hrm/workShiftManage/shiftRosterProcess";
    }

    @RequestMapping(value = "/stepOneProcess", method = RequestMethod.GET)
    public String getStepOneProcess(){
        return "hrm/workShiftManage/shiftRosterProcessStepOne";
    }

    @RequestMapping(value = "/stepTwoProcess", method = RequestMethod.GET)
    public String getStepTwoProcess(){
        return "hrm/workShiftManage/shiftRosterProcessStepTwo";
    }

    @RequestMapping(value = "/stepThreeProcess", method = RequestMethod.GET)
    public String getStepThreeProcess(){
        return "hrm/workShiftManage/shiftRosterProcessStepThree";
    }

    @RequestMapping(value = "/companyHolidayCal", method = RequestMethod.GET)
    public String getCompanyHolidayCalendar(){
        return "hrm/workShiftManage/companyHolidayCalendar";
    }

    @RequestMapping(value = "/stepOneWorkOffCal", method = RequestMethod.GET)
    public String getStepOneWorkOffCalendar(){
        return "hrm/workShiftManage/companyWorkOffCalendarStepOne";
    }

    @RequestMapping(value = "/stepTwoWorkOffCal", method = RequestMethod.GET)
    public String getStepTwoWorkOffCalendar(){
        return "hrm/workShiftManage/companyWorkOffCalendarStepTwo";
    }

    @RequestMapping(value = "/manualShiftAssignment", method = RequestMethod.GET)
    public String getManualShiftAssignment(){
        return "hrm/workShiftManage/manualShiftAssignment";
    }

    @RequestMapping(value = "/compensatoryOffEntry", method = RequestMethod.GET)
    public String getCompensatoryOffEntry(){
        return "hrm/workShiftManage/compensatoryOffEntry";
    }

    @RequestMapping(value = "/stepOneOffEntry", method = RequestMethod.GET)
    public String getStepOneOffEntry(){
        return "hrm/workShiftManage/compensatoryOffEntryStepOne";
    }

    @RequestMapping(value = "/stepTwoOffEntry", method = RequestMethod.GET)
    public String getStepTwoOffEntry(){
        return "hrm/workShiftManage/compensatoryOffEntryStepTwo";
    }

    @RequestMapping(value = "/stepThreeOffEntry", method = RequestMethod.GET)
    public String getStepThreeOffEntry(){
        return "hrm/workShiftManage/compensatoryOffEntryStepThree";
    }
}
