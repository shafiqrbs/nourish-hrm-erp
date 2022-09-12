package com.clouderp.client.controller.hrm;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Sohag on 06/04/2018.
 */
@Controller
@RequestMapping("/finalSettlement")
public class FinalSettlementController {
    @RequestMapping(value = "/settlementInfo", method = RequestMethod.GET)
    public String getSettlementInfo(){
        return "hrm/finalSettlement/settlementInfo";
    }
}
