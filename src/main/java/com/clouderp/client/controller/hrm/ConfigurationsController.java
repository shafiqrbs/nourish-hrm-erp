package com.clouderp.client.controller.hrm;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Sohag on 06/04/2018.
 */
@Controller
@RequestMapping("/configurations")
public class ConfigurationsController {

    //    Basic Configuration

    @RequestMapping(value = "/basicInfo/companySettings", method = RequestMethod.GET)
    public String getCompanySettings(){
        return "hrm/configuration/CompanySettings";
    }

    @RequestMapping(value = "/basicInfo/building", method = RequestMethod.GET)
    public String getBuilding(){
        return "hrm/configuration/Building";
    }

    @RequestMapping(value = "/basicInfo/floor", method = RequestMethod.GET)
    public String getFloor(){
        return "hrm/configuration/Floor";
    }

    @RequestMapping(value = "/basicInfo/line", method = RequestMethod.GET)
        public String getLine(){
            return "hrm/configuration/Line";
    }

    @RequestMapping(value = "/basicInfo/section", method = RequestMethod.GET)
    public String getSection(){
        return "hrm/configuration/Section";
    }

    @RequestMapping(value = "/basicInfo/subSection", method = RequestMethod.GET)
    public String getSubSection(){
        return "hrm/configuration/SubSection";
    }

    @RequestMapping(value = "/basicInfo/group", method = RequestMethod.GET)
    public String getGroup(){
        return "hrm/configuration/Group";
    }

    @RequestMapping(value = "/basicInfo/subGroup", method = RequestMethod.GET)
    public String getSubGroup(){
        return "hrm/configuration/SubGroup";
    }


    //Others Configuration
    @RequestMapping(value = "/otherInfo/emailSettings", method = RequestMethod.GET)
    public String getEmailSettings(){
        return "hrm/configuration/EmailSettings";
    }

    @RequestMapping(value = "/otherInfo/smsSettings", method = RequestMethod.GET)
    public String getSmsSettings(){
        return "hrm/configuration/SmsSettings";
    }

    @RequestMapping(value = "/otherInfo/currencyInfo", method = RequestMethod.GET)
    public String getCurrencyInfo(){
        return "hrm/configuration/CurrencyInfo";
    }

    @RequestMapping(value = "/otherInfo/pfInterestRate", method = RequestMethod.GET)
    public String getPfInterestRates(){
        return "hrm/configuration/PfInterestRate";
    }

    @RequestMapping(value = "/otherInfo/bankInfo", method = RequestMethod.GET)
    public String getBankInfo(){
        return "hrm/configuration/BankInfo";
    }

    @RequestMapping(value = "/otherInfo/denominationProcess", method = RequestMethod.GET)
    public String getDenominationProcess(){
        return "hrm/configuration/DenominationProcess";
    }

    @RequestMapping(value = "/otherInfo/variableSettings", method = RequestMethod.GET)
    public String getVariableSettings(){
        return "hrm/configuration/VariableSettings";
    }

    @RequestMapping(value = "/otherInfo/languageInfo", method = RequestMethod.GET)
    public String getLanguageInfo(){
        return "hrm/configuration/LanguageInfo";
    }

    @RequestMapping(value = "/otherInfo/autoProcessSchedule", method = RequestMethod.GET)
    public String getAutoProcessSchedule(){
        return "hrm/configuration/AutoProcessSchedule";
    }

    @RequestMapping(value = "/otherInfo/manualProcess", method = RequestMethod.GET)
    public String getManualProcess(){
        return "hrm/configuration/ManualProcess";
    }

    @RequestMapping(value = "/otherInfo/reportEmailSettings", method = RequestMethod.GET)
    public String getReportEmailSettings(){
        return "hrm/configuration/ReportEmailSettings";
    }

    @RequestMapping(value = "/otherInfo/reportSMSSettings", method = RequestMethod.GET)
    public String getReportSMSSettings(){
        return "hrm/configuration/ReportSMSSettings";
    }

    // System variables
    @RequestMapping(value = "/systemVariable/country", method = RequestMethod.GET)
    public String getCountry(){
        return "hrm/configuration/Country";
    }

    @RequestMapping(value = "/systemVariable/division", method = RequestMethod.GET)
    public String getDivision(){
        return "hrm/configuration/Division";
    }

    @RequestMapping(value = "/systemVariable/city", method = RequestMethod.GET)
    public String getCity(){
        return "hrm/configuration/City";
    }

    @RequestMapping(value = "/systemVariable/bank", method = RequestMethod.GET)
    public String getBank(){
        return "hrm/configuration/Bank";
    }

    @RequestMapping(value = "/systemVariable/insurance", method = RequestMethod.GET)
    public String getInsurance(){
        return "hrm/configuration/Insurance";
    }

    @RequestMapping(value = "/systemVariable/staffCategory", method = RequestMethod.GET)
    public String getStaffCategory(){
        return "hrm/configuration/StaffCategory";
    }

    @RequestMapping(value = "/systemVariable/department", method = RequestMethod.GET)
    public String getDepartment(){
        return "hrm/configuration/Department";
    }

    @RequestMapping(value = "/systemVariable/jobLocationInfo", method = RequestMethod.GET)
    public String getJobLocationInfo(){
        return "hrm/configuration/JobLocationInfo";
    }

    @RequestMapping(value = "/systemVariable/designation", method = RequestMethod.GET)
    public String getDesignation(){
        return "hrm/configuration/Designation";
    }

    @RequestMapping(value = "/systemVariable/employment", method = RequestMethod.GET)
    public String getEmployment(){
        return "hrm/configuration/Employment";
    }

    @RequestMapping(value = "/systemVariable/district", method = RequestMethod.GET)
    public String getDistrict(){
        return "hrm/configuration/District";
    }

    @RequestMapping(value = "/systemVariable/nationality", method = RequestMethod.GET)
    public String getNationality(){
        return "hrm/configuration/Nationality";
    }

    @RequestMapping(value = "/systemVariable/unit", method = RequestMethod.GET)
    public String getUnit(){
        return "hrm/configuration/Unit";
    }

    @RequestMapping(value = "/systemVariable/skillCategory", method = RequestMethod.GET)
    public String getSkillCategory(){
        return "hrm/configuration/SkillCategory";
    }

    @RequestMapping(value = "/systemVariable/governmentDesignation", method = RequestMethod.GET)
    public String getGovernmentDesignation(){
        return "hrm/configuration/GovernmentDesignation";
    }

    @RequestMapping(value = "/systemVariable/skillSet", method = RequestMethod.GET)
    public String getSkillSet(){
        return "hrm/configuration/SkillSet";
    }

    @RequestMapping(value = "/systemVariable/dos", method = RequestMethod.GET)
    public String getDOS(){
        return "hrm/configuration/DOS";
    }

    @RequestMapping(value = "/systemVariable/positionName", method = RequestMethod.GET)
    public String getPositionName(){
        return "hrm/configuration/PositionName";
    }

    @RequestMapping(value = "/systemVariable/costCenter", method = RequestMethod.GET)
    public String getCostCenter(){
        return "hrm/configuration/CostCenter";
    }

    @RequestMapping(value = "/systemVariable/branch", method = RequestMethod.GET)
    public String getBranch(){
        return "hrm/configuration/Branch";
    }

    @RequestMapping(value = "/systemVariable/skillType", method = RequestMethod.GET)
    public String getSkillType(){
        return "hrm/configuration/SkillType";
    }

    @RequestMapping(value = "/systemVariable/promotionType", method = RequestMethod.GET)
    public String getPromotionType(){
        return "hrm/configuration/PromotionType";
    }
}
