package com.clouderp.client.controller.hrm;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Sohag on 06/04/2018.
 */
@Controller
@RequestMapping("/smsEmail")
public class SmsEmailManageController {

    //    Basic Configuration

    @RequestMapping(value = "/broadcastEmail", method = RequestMethod.GET)
    public String getbroadcastEmailSettings(){
        return "hrm/smsEmailManagement/BroadcastEmail";
    }
    @RequestMapping(value = "/broadcastEmailBulk", method = RequestMethod.GET)
    public String getbroadcastEmailBulkSettings(){
        return "hrm/smsEmailManagement/BroadcastEmailBulk";
    }
    @RequestMapping(value = "/broadcastSms", method = RequestMethod.GET)
    public String getbroadcastSmsSettings(){
        return "hrm/smsEmailManagement/BroadcastSms";
    }
    @RequestMapping(value = "/broadcastSmsBulk", method = RequestMethod.GET)
    public String getbroadcastSmsBulkSettings(){
        return "hrm/smsEmailManagement/BroadcastSmsBulk";
    }

}
