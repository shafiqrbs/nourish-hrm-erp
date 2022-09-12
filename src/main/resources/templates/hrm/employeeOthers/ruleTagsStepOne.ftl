<form class="form-horizontal form-general" name="RuleTagsStepOne">
    <div class="row">
        <div class="col-lg-12">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                <div class="portlet-body no-padding">
                    <div class="row no-margin mb-15">
                        <div class="col-lg-3 pr-0 pt-20 pb-20 no-border-lg-down">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="portlet-box portlet-gutter ui-buttons-col">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                            <div class="flex d-flex flex-column">
                                                <h3>Rule Name</h3>
                                            </div>
                                        </div>
                                        <div class="portlet-body no-padding" style="min-height:720px">
                                            <div class="col-lg-12">
                                                <div class="form-group date">
                                                    <label for="fromDate" class="control-label">Rule Name</label>
                                                    <select id="EmployeeRuleName" class="form-control form-control-sm" ng-model="employeeRuleName" ng-change="employeeRuleTag(employeeRuleName)">
                                                        <option value="">Select Option</option>
                                                        <option value="Bonus Rule">Bonus Rule</option>
                                                        <option value="OT Rule">OT Rule</option>
                                                        <option value="ALD Rule">Attendance Late Deduction Rule</option>
                                                        <option value="Final Settlement Rule">Final Settlement Rule</option>
                                                        <option value="Additional Salary Rule">Additional Salary Rule</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <#--First column end-->
                        <div class="col-lg-9 pt-20 pb-20 no-border-lg-down">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="portlet-box portlet-gutter ui-buttons-col" ng-show="isBonusRuleShow">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                            <div class="flex d-flex flex-column">
                                                <h3>{{selectedRuleTitle}}</h3>
                                            </div>
                                        </div>
                                        <div class="portlet-body no-padding" style="min-height:735px">
                                            <div class="row no-margin">
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <label for="bonusRuleCode" class="control-label">Bonus Rule</label>
                                                        <select ng-model="bonusRulesInfo.bonusCode" ng-change="getBonusRuleDetailsByCode(bonusRulesInfo.bonusCode)" id="bonusRuleCode" class="form-control form-control-sm form-control-custom" required>
                                                            <option value="">Select Option</option>
                                                            <option ng-repeat="option in bonusRulesList" ng-selected="bonusRulesInfo.bonusCode == option.bonusRuleCode" value="{{option.bonusRuleCode}}">{{option.bonusRuleCode}}</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="portlet-box portlet-gutter ui-buttons-col" ng-show="isOTRuleShow">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                            <div class="flex d-flex flex-column">
                                                <h3>{{selectedRuleTitle}}</h3>
                                            </div>
                                        </div>
                                        <div class="portlet-body no-padding" style="min-height:735px">
                                            <div class="row no-margin">
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <label for="remarks" class="control-label">OT Rule</label>
                                                        <select id="shiftRuleCode" ng-hide="IsAddNewShiftInput" class="form-control form-control-sm" ng-model="shiftRule.shiftRuleCode" ng-change="shiftRuleChange(shiftRule.shiftRuleCode)" required>
                                                            <option value="">Select Option</option>
                                                            <option ng-repeat="option in shiftRuleDDL" ng-selected="shiftRule.shiftRuleCode == option.shiftRuleCode" value="{{option.shiftRuleCode}}">{{option.shiftRuleCode}}</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="portlet-box portlet-gutter ui-buttons-col" ng-show="isFinalSettlementRuleShow">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                            <div class="flex d-flex flex-column">
                                                <h3>{{selectedRuleTitle}}</h3>
                                            </div>
                                        </div>
                                        <div class="portlet-body no-padding" style="min-height:735px">
                                            <div class="row no-margin">
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <label for="remarks" class="control-label">Final Settlement Rule</label>
                                                        <select id="shiftRuleCode" ng-hide="IsAddNewShiftInput" class="form-control form-control-sm" ng-model="shiftRule.shiftRuleCode" ng-change="shiftRuleChange(shiftRule.shiftRuleCode)" required>
                                                            <option value="">Select Option</option>
                                                            <option ng-repeat="option in shiftRuleDDL" ng-selected="shiftRule.shiftRuleCode == option.shiftRuleCode" value="{{option.shiftRuleCode}}">{{option.shiftRuleCode}}</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="portlet-box portlet-gutter ui-buttons-col" ng-show="isAttnLateDeductionRuleShow">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                            <div class="flex d-flex flex-column">
                                                <h3>{{selectedRuleTitle}}</h3>
                                            </div>
                                        </div>
                                        <div class="portlet-body no-padding" style="min-height:735px">
                                            <div class="row no-margin">
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <label for="remarks" class="control-label">Attendance Late Deduction Rule</label>
                                                        <select id="shiftRuleCode" ng-hide="IsAddNewShiftInput" class="form-control form-control-sm" ng-model="shiftRule.shiftRuleCode" ng-change="shiftRuleChange(shiftRule.shiftRuleCode)" required>
                                                            <option value="">Select Option</option>
                                                            <option ng-repeat="option in shiftRuleDDL" ng-selected="shiftRule.shiftRuleCode == option.shiftRuleCode" value="{{option.shiftRuleCode}}">{{option.shiftRuleCode}}</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="portlet-box portlet-gutter ui-buttons-col" ng-show="isAdditionalSalaryRuleShow">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                            <div class="flex d-flex flex-column">
                                                <h3>{{selectedRuleTitle}}</h3>
                                            </div>
                                        </div>
                                        <div class="portlet-body no-padding" style="min-height:735px">
                                            <div class="row no-margin">
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <label for="remarks" class="control-label">Additional Salary Rule</label>
                                                        <select id="shiftRuleCode" ng-hide="IsAddNewShiftInput" class="form-control form-control-sm" ng-model="shiftRule.shiftRuleCode" ng-change="shiftRuleChange(shiftRule.shiftRuleCode)" required>
                                                            <option value="">Select Option</option>
                                                            <option ng-repeat="option in shiftRuleDDL" ng-selected="shiftRule.shiftRuleCode == option.shiftRuleCode" value="{{option.shiftRuleCode}}">{{option.shiftRuleCode}}</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
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
    <div class="row mb-30 mt-30">
        <div class="col-lg-12">
            <div class="box-footer clearfix">
                <div class="text-right">
                    <button type="submit" class="btn btn-gradient-success">Save</button>
                    <button type="button" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
                </div>
            </div>
        </div>
    </div>
</form>