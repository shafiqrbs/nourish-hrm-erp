<div ng-controller="maternityLeaveRuleDefinitionManageController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="MaternityLeaveRuleDefForm" ng-submit="saveForm(MaternityLeaveRuleDefForm.$valid,maternityLeaveRuleDef)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Maternity Leave Rule Define</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-3 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group mb-0">
                                        <label for="maternityId" class="control-label">Maternity Rule ID</label>
                                        <select id="maternityLeaveRuleCode" class="form-control form-control-sm" ng-change="getAllMaternityLeavePolicyInfo(maternityLeaveRuleDef.maternityLeaveRuleID)" ng-model="maternityLeaveRuleDef.maternityLeaveRuleID">
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in maternityLeaveRules" ng-selected="maternityLeaveRuleDef.maternityLeaveRuleID == option.maternityLeaveRuleID" value="{{option.maternityLeaveRuleID}}">{{option.maternityLeaveRuleID}}</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="descriptions" class="control-label">Description</label>
                                        <textarea ng-model="maternityLeaveRuleDef.description" class="form-control form-control-sm" id="descriptions" placeholder="Descriptions" rows="3"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="NoOfBenefits" class="control-label">No of Benefits</label>
                                        <input type="number" ng-model="maternityLeaveRuleDef.maxBenefit" class="form-control form-control-sm" id="NoOfBenefits" placeholder="No of Benefits" />
                                    </div>
                                    <div class="form-group">
                                        <label for="TotalDaysforBenefits" class="control-label">Total Days for Benefits</label>
                                        <input type="number" ng-model="maternityLeaveRuleDef.noOfDays" class="form-control form-control-sm" id="TotalDaysforBenefits" placeholder="Total Days for Benefits" />
                                    </div>
                                    <div class="form-group">
                                        <label for="MinDaysGapBetweenTowBenefits" class="control-label">Min Days Gap between tow Benefits(if more than one)</label>
                                        <input type="number" ng-model="maternityLeaveRuleDef.dayGap" class="form-control form-control-sm" id="MinDaysGapBetweenTowBenefits" placeholder="Days" />
                                    </div>
                                </div>
                                <#--First column end-->
                                    <div class="col-lg-3 b-r pt-20 pb-20 no-border-lg-down">
                                        <div class="form-group">
                                            <label for="BenefitsDaysBeforeEED" class="control-label">Benefits days before EED</label>
                                            <input type="number" ng-model="maternityLeaveRuleDef.daysBenefitBefore" class="form-control form-control-sm" id="BenefitsDaysBeforeEED" placeholder="Days" />
                                        </div>
                                        <div class="form-group">
                                            <label for="BenefitsDaysAfterEED" class="control-label">Benefits days after EED</label>
                                            <input type="number" ng-model="maternityLeaveRuleDef.canGetBenefitAfterDays" class="form-control form-control-sm" id="BenefitsDaysAfterEED" placeholder="Days" />
                                        </div>
                                        <div class="form-group">
                                            <label for="DependsOn" class="control-label">Depends On</label>
                                            <input type="text" ng-model="maternityLeaveRuleDef.dependsOn" class="form-control form-control-sm" id="DependsOn" placeholder="Search With Employee Code">
                                        </div>
                                        <div class="form-group">
                                            <label for="CalculateFrom" class="control-label">Calculate From</label>
                                            <input type="number" ng-model="maternityLeaveRuleDef.yearCalculatedFrom" class="form-control form-control-sm" id="CalculateFrom" placeholder="Days" />
                                        </div>
                                        <div class="form-group">
                                            <div class="customUi-radio radioUi-primary  pb-2">
                                                <input id="a1" type="radio" ng-model="maternityLeaveRuleDef.calculateBasedOn" value="Year" name="Calculate From"  checked="">
                                                <label for="a1">
                                                    <span class="label-radio"></span>
                                                    <span class="label-helper">Year</span>
                                                </label>
                                            </div>
                                            <div class="customUi-radio radioUi-primary  pb-2">
                                                <input id="a2" type="radio" ng-model="maternityLeaveRuleDef.calculateBasedOn" value="Month" name="Calculate From">
                                                <label for="a2">
                                                    <span class="label-radio"></span>
                                                    <span class="label-helper">Month</span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="noMonths" class="control-label">Calculation Based on Number of Month(s)[o means depend on Current Salary]</label>
                                            <input type="text" ng-model="maternityLeaveRuleDef.calculationOn" class="form-control form-control-sm" id="noMonths" />
                                        </div>

                                    </div>
                                <#--Second column end-->
                                <div class="col-lg-3 pt-20 pb-20 b-r no-border-lg-down">
                                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                        <input ng-model="maternityLeaveRuleDef.isTransactionMonth" id="checked1" type="checkbox" name="agree">
                                        <label for="checked1">
                                            <span class="label-checkbox"></span>
                                            <span class="label-helper">Consider Transaction Month(if yes Checked it)</span>
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Consider Selected Months</label><br/>
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input ng-model="maternityLeaveRuleDef.unknown" id="b1" type="radio" value="Specific Head" name="Select Months"  checked="">
                                            <label for="b1">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">Specific Head</span>
                                            </label>
                                        </div>
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input id="b2" type="radio" value="Payment With OT" name="Select Months">
                                            <label for="b2">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">Payment With OT</span>
                                            </label>
                                        </div>
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input id="b3" type="radio" value="Payment Without OT" name="Select Months">
                                            <label for="b3">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">Payment Without OT</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Depends On</label><br/>
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input id="c1" type="radio" value="Present Days" name="Days"  checked="">
                                            <label for="c1">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">Present Days</span>
                                            </label>
                                        </div>
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input id="c2" type="radio" value="Payment With OT" name="Days">
                                            <label for="c2">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">Calender Days</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                        <input ng-model="maternityLeaveRuleDef.considerEDD" id="checked2" type="checkbox" name="agree">
                                        <label for="checked2">
                                            <span class="label-checkbox"></span>
                                            <span class="label-helper">Consider EDD in Approved</span>
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label for="Reporting Head" class="control-label">Reporting Head</label>
                                        <select id="Reporting Head" class="form-control form-control-sm" ng-model="maternityLeaveRuleDef.reportingHead">
                                            <option value="">Select Option</option>
                                            <option  ng-repeat="option in maternityLeaveRuleDef" ng-selected="maternityLeaveRuleDef.reportingHead == option.reportingHead" value="{{option.reportingHead}}">{{option.reportingHead}}</option>
                                        </select>
                                    </div>
                                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                        <input id="checked3" ng-model="maternityLeaveRuleDef.considerSalaryHead" type="checkbox" name="agree">
                                        <label for="checked3">
                                            <span class="label-checkbox"></span>
                                            <span class="label-helper">Would Like To define Salary Head for calculation</span>
                                        </label>
                                    </div>

                                </div>
                                <div class="col-lg-3 pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding">
                                        <div class="flex d-flex flex-column">
                                            <h3>Payment Definition</h3>
                                        </div>
                                    </div>
                                    <div class="form-group mb-0"><br/>
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input ng-model="maternityLeaveRuleDef.basedOn" id="d1" type="radio" value="F" name="UnknownValue"  checked="">
                                            <label for="d1">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">Fixed</span>
                                            </label>
                                        </div>
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input ng-model="maternityLeaveRuleDef.basedOn" id="d2" type="radio" value="P" name="UnknownValue">
                                            <label for="d2">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">Percentage</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="head" class="control-label">Head</label><br/>
                                        <select id="head" class="form-control form-control-sm" ng-model="maternityLeaveRuleDef.basedHead">
                                            <option>Select Option</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="amount" class="control-label">Amount</label>
                                        <input type="number" class="form-control form-control-sm" id="amount" />
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="box-footer clearfix">
                                                <div class="text-right">
                                                    <button type="reset" class="btn btn-gradient-info">Clear</button>
                                                    <button type="reset" class="btn btn-gradient-info">Policy</button>
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

            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <#--First column end-->
                                <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding">
                                        <div class="flex d-flex flex-column">
                                            <h3>Salary Head</h3>
                                        </div>
                                    </div>
                                    <kendo-grid options="salaryHeadGridOptions" style="height:200px;"></kendo-grid>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </form>

    </div>
    <div class="row mb-30 mt-30">
        <div class="col-lg-12">
            <div class="box-footer clearfix">
                <div class="text-right">
                    <button type="submit" class="btn btn-gradient-success">Save</button>
                    <button type="reset" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
                </div>
            </div>
        </div>
    </div>
</div>