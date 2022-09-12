package com.clouderp.client.controller.hrm;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Sohag on 06/04/2018.
 */
@Controller
@RequestMapping("/overtime/manage")
public class OvertimeManageController {
    @RequestMapping(value = "/overtimeSlab", method = RequestMethod.GET)
    public String getOvertimeSlab(){
        return "hrm/overtimeManage/overtimeSlab";
    }

    @RequestMapping(value = "/overtimeAssignment", method = RequestMethod.GET)
    public String getOvertimeAssignment(){
        return "hrm/overtimeManage/overtimeAssignment";
    }

    @RequestMapping(value = "/extraOTAssignment", method = RequestMethod.GET)
    public String getExtraOTAssignment(){
        return "hrm/overtimeManage/extraOTAssignment";
    }
}
