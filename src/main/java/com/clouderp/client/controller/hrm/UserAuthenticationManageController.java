package com.clouderp.client.controller.hrm;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Sohag on 06/04/2018.
 */
@Controller
@RequestMapping("/userAuthentication/manage")
public class UserAuthenticationManageController {
    @RequestMapping(value = "/userRoleAndPermission", method = RequestMethod.GET)
    public String getUserRoleAndPermission(){
        return "hrm/userAuthentication/userRoleAndPermission";
    }

    @RequestMapping(value = "/companyHierarchy", method = RequestMethod.GET)
    public String getCompanyHierarchy(){
        return "hrm/userAuthentication/companyHierarchy";
    }

    @RequestMapping(value = "/departmentWiseApproval", method = RequestMethod.GET)
    public String getDepartmentWiseApproval(){
        return "hrm/userAuthentication/departmentWiseApproval";
    }

    @RequestMapping(value = "/systemIntegration", method = RequestMethod.GET)
    public String getSystemIntegration(){
        return "hrm/userAuthentication/systemIntegration";
    }
}
