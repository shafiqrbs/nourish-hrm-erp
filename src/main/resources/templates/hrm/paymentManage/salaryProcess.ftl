<div ng-controller="EmployeeSalaryProcessController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="EmpQualificationInfoForm" ng-submit="saveQualificationForm(EmpQualificationInfoForm.$valid,employeePQualificationInfo)">
            <div class="row" ng-show="isShowStepOne">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Salary Process</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b mb-15 no-padding">
                                            <div class="flex d-flex flex-column">
                                                <h3 class="pl-15">Rules(The following rule(s) will be followed)</h3>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                    <input id="checked" type="checkbox" name="agree" checked="">
                                                    <label for="checked">
                                                        <span class="label-checkbox"></span>
                                                        <span class="label-helper">Attendance effect in salary Process</span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control form-control-sm" id="" placeholder="day(s) of late will be treated as absent">
                                            </div>
                                            <div class="form-group">
                                                <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                    <input id="checked1" type="checkbox" name="agree">
                                                    <label for="checked1">
                                                        <span class="label-checkbox"></span>
                                                        <span class="label-helper">Calculate only Consecutive Absent</span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">Absent-Rest-Absent(A-R-A) will be treated as full absent(A-A-A)</label><br/>
                                                <div class="customUi-radio radioUi-primary  pb-2">
                                                    <input id="a1" type="radio" value="Yes" name="Radio"  checked="">
                                                    <label for="a1">
                                                        <span class="label-radio"></span>
                                                        <span class="label-helper">Yes</span>
                                                    </label>
                                                </div>
                                                <div class="customUi-radio radioUi-primary  pb-2">
                                                    <input id="a2" type="radio" value="No" name="Radio">
                                                    <label for="a2">
                                                        <span class="label-radio"></span>
                                                        <span class="label-helper">No</span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">Days in the processed month is calculated(Salary):</label><br/>
                                                <div class="customUi-radio radioUi-primary  pb-2">
                                                    <input id="b1" type="radio" value="Calendar" name="Radio1"  checked="">
                                                    <label for="b1">
                                                        <span class="label-radio"></span>
                                                        <span class="label-helper">Calendar</span>
                                                    </label>
                                                </div>
                                                <div class="customUi-radio radioUi-primary  pb-2">
                                                    <input id="b2" type="radio" value="Working" name="Radio1">
                                                    <label for="b2">
                                                        <span class="label-radio"></span>
                                                        <span class="label-helper">Working</span>
                                                    </label>
                                                </div>
                                                <div class="customUi-radio radioUi-primary  pb-2">
                                                    <input id="b3" type="radio" value="No" name="Radio1">
                                                    <label for="b3">
                                                        <span class="label-radio"></span>
                                                        <span class="label-helper">Day(s)</span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">Days in the processed month is calculated(Overtime):</label><br/>
                                                <div class="customUi-radio radioUi-primary  pb-2">
                                                    <input id="c1" type="radio" value="Calendar" name="Radio2"  checked="">
                                                    <label for="c1">
                                                        <span class="label-radio"></span>
                                                        <span class="label-helper">Calendar</span>
                                                    </label>
                                                </div>
                                                <div class="customUi-radio radioUi-primary  pb-2">
                                                    <input id="c2" type="radio" value="Working" name="Radio2">
                                                    <label for="c2">
                                                        <span class="label-radio"></span>
                                                        <span class="label-helper">Working</span>
                                                    </label>
                                                </div>
                                                <div class="customUi-radio radioUi-primary  pb-2">
                                                    <input id="c3" type="radio" value="No" name="Radio2">
                                                    <label for="c3">
                                                        <span class="label-radio"></span>
                                                        <span class="label-helper">Day(s)</span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control form-control-sm" id="" placeholder="hours for per hour overtime calculation">
                                            </div>
                                            <div class="form-group">
                                                <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                    <input id="checked2" type="checkbox" name="agree" checked="">
                                                    <label for="checked2">
                                                        <span class="label-checkbox"></span>
                                                        <span class="label-helper">Calculate from upload Salary</span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                    <input id="checked3" type="checkbox" name="agree">
                                                    <label for="checked3">
                                                        <span class="label-checkbox"></span>
                                                        <span class="label-helper">Salary adjustment</span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                    <input id="checked4" type="checkbox" name="agree">
                                                    <label for="checked4">
                                                        <span class="label-checkbox"></span>
                                                        <span class="label-helper">Include Leave Encashment</span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group select-dynamic-add">
                                                <select id="blank" class="form-control form-control-sm" ng-model="employeePQualificationInfo.issuedBy">
                                                    <option>Select Option</option>
                                                </select>
                                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                    <i class="fa fa-plus"></i>
                                                </a>
                                            </div>
                                            <div class="form-group select-dynamic-add">
                                                <label for="advanceAmountHead" class="control-label">advance amount show in the following head</label>
                                                <select id="advanceAmountHead" class="form-control form-control-sm" ng-model="employeePQualificationInfo.issuedBy">
                                                    <option>Select Option</option>
                                                </select>
                                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                    <i class="fa fa-plus"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>



                                </div>
                                <#--First column end-->
                                    <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                        <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                            <div class="portlet-header flex-row flex d-flex align-items-center b-b mb-15 no-padding">
                                                <div class="flex d-flex flex-column">
                                                    <h3 class="pl-15">Settings</h3>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="form-group select-dynamic-add">
                                                    <label for="leaveDeductionAmountHead" class="control-label">Leave Deduction amount show in the following head</label>
                                                    <select id="leaveDeductionAmountHead" class="form-control form-control-sm" ng-model="employeePQualificationInfo.issuedBy">
                                                        <option>Select Option</option>
                                                    </select>
                                                    <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                        <i class="fa fa-plus"></i>
                                                    </a>
                                                </div>
                                                <div class="form-group">
                                                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                        <input id="checked5" type="checkbox" name="agree">
                                                        <label for="checked5">
                                                            <span class="label-checkbox"></span>
                                                            <span class="label-helper">Leave Deduction Dependancy on Attendance</span>
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="form-group select-dynamic-add">
                                                    <label for="absenteeismCalculationRuleHead" class="control-label">Absenteeism calculation according to the rule of the head</label>
                                                    <select id="absenteeismCalculationRuleHead" class="form-control form-control-sm" ng-model="employeePQualificationInfo.issuedBy">
                                                        <option>Select Option</option>
                                                    </select>
                                                    <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                        <i class="fa fa-plus"></i>
                                                    </a>
                                                </div>
                                                <div class="form-group select-dynamic-add">
                                                    <label for="utilityAmountHead" class="control-label">Utility amount show in the following head</label>
                                                    <select id="utilityAmountHead" class="form-control form-control-sm" ng-model="employeePQualificationInfo.issuedBy">
                                                        <option>Select Option</option>
                                                    </select>
                                                    <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                        <i class="fa fa-plus"></i>
                                                    </a>
                                                </div>
                                                <div class="form-group select-dynamic-add">
                                                    <label for="overtimeCalculationHead" class="control-label">Overtime calculation according to the rule of the head</label>
                                                    <select id="overtimeCalculationHead" class="form-control form-control-sm" ng-model="employeePQualificationInfo.issuedBy">
                                                        <option>Select Option</option>
                                                    </select>
                                                    <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                        <i class="fa fa-plus"></i>
                                                    </a>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label">Overtime amount show in the following head</label>
                                                </div>

                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <div class="form-group select-dynamic-add">
                                                            <label for="Extra-OT" class="control-label">Extra-OT</label><br>
                                                            <select id="Extra-OT" class="form-control form-control-sm" ng-model="employeePQualificationInfo.issuedBy">
                                                                <option>Select Option</option>
                                                            </select>
                                                            <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                                <i class="fa fa-plus"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <div class="form-group select-dynamic-add">
                                                            <label for="OT" class="control-label">OT</label><br/>
                                                            <select id="OT" class="form-control form-control-sm" ng-model="employeePQualificationInfo.issuedBy">
                                                                <option>Select Option</option>
                                                            </select>
                                                            <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                                <i class="fa fa-plus"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group select-dynamic-add">
                                                    <label for="incoemTaxAmountsHead" class="control-label">Incoem Tax amounts show in the following head</label>
                                                    <select id="incoemTaxAmountsHead" class="form-control form-control-sm" ng-model="employeePQualificationInfo.issuedBy">
                                                        <option>Select Option</option>
                                                    </select>
                                                    <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                        <i class="fa fa-plus"></i>
                                                    </a>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <div class="form-group">

                                                            <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                                <input id="checked6" type="checkbox" name="agree">
                                                                <label for="checked6">
                                                                    <span class="label-checkbox"></span>
                                                                    <span class="label-helper">Include Shift Allowance</span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                                <input id="checked7" type="checkbox" name="agree">
                                                                <label for="checked7">
                                                                    <span class="label-checkbox"></span>
                                                                    <span class="label-helper">Include Bonus</span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                                <input id="checked8" type="checkbox" name="agree">
                                                                <label for="checked8">
                                                                    <span class="label-checkbox"></span>
                                                                    <span class="label-helper">Include Fraction</span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="control-label">Incentive calculation according to your given percentage</label>
                                                    <input type="text" class="form-control form-control-sm" id="" placeholder="%">
                                                </div>
                                                <div class="form-group select-dynamic-add">
                                                    <label for="PFCalculationRuleHead" class="control-label">PF calculation according to the rule of the head</label>
                                                    <select id="PFCalculationRuleHead" class="form-control form-control-sm" ng-model="employeePQualificationInfo.issuedBy">
                                                        <option>Select Option</option>
                                                    </select>
                                                    <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                        <i class="fa fa-plus"></i>
                                                    </a>
                                                </div>
                                                <div class="form-group">
                                                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                        <input id="checked9" type="checkbox" name="agree">
                                                        <label for="checked9">
                                                            <span class="label-checkbox"></span>
                                                            <span class="label-helper">Separate Employee for Maternity Leave Transaction</span>
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>



                                    </div>
                                <#--Second column end-->
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b mb-15 no-padding">
                                            <div class="flex d-flex flex-column">
                                                <h3 class="pl-15">Salary Process date range</h3>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                    <input id="checked10" type="checkbox" name="agree">
                                                    <label for="checked10">
                                                        <span class="label-checkbox"></span>
                                                        <span class="label-helper">Salary process only separated employee</span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                    <input id="checked11" type="checkbox" name="agree">
                                                    <label for="checked11">
                                                        <span class="label-checkbox"></span>
                                                        <span class="label-helper">Salary process only suspended employee</span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group time">
                                                <label for="fromSalaryDate" class="control-label">From</label>
                                                <input id="fromSalaryDate" type="date" ng-model="salaryFromDate" class="form-control form-control-sm">
                                            </div>
                                            <div class="form-group time">
                                                <label for="toSalaryDate" class="control-label">To</label>
                                                <input id="toSalaryDate" type="date" ng-model="salaryToDate" class="form-control form-control-sm">
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12 mb-30">
                                                    <div class="box-footer clearfix">
                                                        <div class="text-right">
                                                            <button type="button" class="btn btn-gradient-info" ng-click="openSalaryProcessTab('stepTwo')">Next</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>



                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row" ng-show="isShowStepTwo">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b mb-15">
                            <div class="flex d-flex flex-column">
                                <h3>Salary Process</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row" style="margin: 15px 0 !important;">
                                <div class="col-lg-12">
                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                            <div class="flex d-flex flex-column">
                                                <h3>Employee Information</h3>
                                            </div>
                                        </div>
                                        <div class="portlet-body no-padding">
                                            <div class="row" style="margin: 15px 0 !important;">
                                                <div class="col-lg-12 no-border-lg-down">
                                                    <div class="row no-margin">
                                                        <div class="col-lg-9 no-border-lg-down">
                                                            <div class="form-group mb-0">
                                                                <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                                    <input id="checked" type="checkbox" name="agree">
                                                                    <label for="checked">
                                                                        <span class="label-checkbox"></span>
                                                                        <span class="label-helper">Select All</span>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-3 no-border-lg-down">
                                                            <div class="form-group input-dynamic-add mb-0" style="text-align:right;">
                                                                <input type="text" ng-model="pSearchCriteria" class="form-control form-control-sm"
                                                                       ng-enter="searchEmployeeInfo(pSearchCriteria)" id="" placeholder="Search criteria type here" />
                                                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new"
                                                                   ng-click="searchEmployeeInfo(pSearchCriteria)">
                                                                    <i class="fa fa-search"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <kendo-grid options="EmployeeAllDataOptions" style="height:400px;"></kendo-grid>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="box-footer clearfix">
                        <div class="text-right">
                            <button type="button" class="btn btn-gradient-success" ng-click="salaryProcess()">Process</button>
                            <button type="button" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>

    </div>
</div>