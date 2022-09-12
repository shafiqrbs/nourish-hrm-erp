package com.clouderp.client.controller.hrm;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Sohag on 06/04/2018.
 */
@Controller
@RequestMapping("/dashboard")
public class DashboardController {
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String getDashboard(){
        return "hrm/dashboard";
    }
}
