package com.clouderp.client.controller.hrm;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Sohag on 06/04/2018.
 */
@Controller
@RequestMapping("/attendance/manage")
public class AttendanceManageController {

    @RequestMapping(value = "/attendanceHistory", method = RequestMethod.GET)
    public String getAttendanceHistory(){
        return "hrm/attendanceManage/attendanceHistory";
    }

    @RequestMapping(value = "/attendanceEntry", method = RequestMethod.GET)
    public String getAttendanceEntry(){
        return "hrm/attendanceManage/attendanceEntry";
    }

    @RequestMapping(value = "/attendanceUpload", method = RequestMethod.GET)
    public String getAttendanceUpload(){
        return "hrm/attendanceManage/attendanceUpload";
    }

    @RequestMapping(value = "/punchMachineInfo", method = RequestMethod.GET)
    public String getPunchMachineInfo(){
        return "hrm/attendanceManage/punchMachineInfo";
    }
}
