package com.clouderp.client.controller.hrm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

/**
 * Created by Sohag on 06/04/2018.
 */
@Controller
@RequestMapping("/")
public class LayoutController {
    @Autowired
    HttpSession session;
    @RequestMapping(value = "/hr", method = RequestMethod.GET)
    public String getHrm(){
        String token = (String) session.getAttribute("access_token");
        if (token == null || token == "")
            return "redirect:/auth/login";
        return "layout/index";
    }

    @RequestMapping(value = "/auth/login", method = RequestMethod.GET)
    public String getDashboard(){
        String token = (String) session.getAttribute("access_token");
        if (token != null)
            return "redirect:/hr";
        return "accounts/login";
    }
}
