<form class="form-horizontal form-general" name="EmpRuleInfoForm" ng-submit="saveRuleForm(EmpRuleInfoForm.$valid,employeeRuleInfo)">
    <div class="row">
        <div class="col-lg-12">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                <div class="portlet-body no-padding">
                    <div class="row no-margin">
                        <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                            <div class="form-group">
                                <label for="leaveRuleCode" class="control-label">Leave Rule</label>
                                <select id="leaveRuleCode" class="form-control form-control-sm" ng-model="employeeRuleInfo.leaveRuleCode">
                                    <option value="">Select Option</option>
                                    <option ng-repeat="option in leaveRules" ng-selected="employeeRuleInfo.leaveRuleCode == option.leaveRuleName" value="{{option.leaveRuleName}}">{{option.leaveRuleName}}</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="maternityLeaveRuleCode" class="control-label">Maternity Leave</label>
                                <select id="maternityLeaveRuleCode" class="form-control form-control-sm" ng-model="employeeRuleInfo.maternityLeaveRuleCode">
                                    <option value="">Select Option</option>
                                    <option ng-repeat="option in maternityLeaveRules" ng-selected="employeeRuleInfo.maternityLeaveRuleCode == option.maternityLeaveRuleID" value="{{option.maternityLeaveRuleID}}">{{option.maternityLeaveRuleID}}</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="paymentPolicy" class="control-label">Payment Policy</label>
                                <select id="paymentPolicy" class="form-control form-control-sm"ng-model="employeeRuleInfo.paymentPolicy">
                                    <option value="">Select Option</option>
                                    <option>PP-11-1</option>
                                </select>
                            </div>
                            <div class="d-block" hook="same-as-present">
                                <div class="customUi-checkbox checkboxUi-primary pb-2">
                                    <input type="checkbox" id="isDefault" ng-model="employeeRuleInfo.ifRoasterApplicable">
                                    <label for="isDefault">
                                        <span class="label-checkbox"></span>
                                        <span class="label-helper">If Shift Roaster applicable</span>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group" ng-hide="employeeRuleInfo.ifRoasterApplicable">
                                <label for="shiftroster" class="control-label">Shift Plan</label>
                                <select id="shiftroster" class="form-control form-control-sm" ng-model="employeeRuleInfo.shiftPlan">
                                    <option value="">Select Option</option>
                                    <option ng-repeat="option in shiftPlans" ng-selected="employeeRuleInfo.shiftPlan == option.shiftID" value="{{option.shiftID}}">{{option.shiftID}}</option>
                                </select>
                            </div>
                            <div class="form-group"  ng-show="employeeRuleInfo.ifRoasterApplicable">
                                <label for="shiftroster" class="control-label">Shift Rule</label>
                                <select id="shiftroster" class="form-control form-control-sm" ng-model="employeeRuleInfo.shiftRosterRule">
                                    <option value="">Select Option</option>
                                    <option ng-repeat="option in shiftRules" ng-selected="employeeRuleInfo.shiftRosterRule == option.shiftRuleCode" value="{{option.shiftRuleCode}}">{{option.shiftRuleCode}}</option>
                                </select>
                            </div>
                        </div>
                        <#--First column end-->
                        <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                            <div class="form-group">
                                <label for="salaryGradeCode" class="control-label">Salary Grade</label>
                                <select id="salaryGradeCode" class="form-control form-control-sm"ng-model="employeeRuleInfo.salaryGradeCode">
                                    <option value="">Select Option</option>
                                    <option>Temporary</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="attendanceRuleCode" class="control-label">Attendence Rule</label>
                                <select id="attendanceRuleCode" class="form-control form-control-sm"ng-model="employeeRuleInfo.attendanceRuleCode">
                                    <option value="">Select Option</option>
                                    <option>Temporary</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="currencyRuleCode" class="control-label">Currency Rule</label>
                                <select id="currencyRuleCode" class="form-control form-control-sm"ng-model="employeeRuleInfo.currencyRuleCode">
                                    <option value="">Select Option</option>
                                    <option>Temporary</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="dateOfS" class="control-label">DOS</label>
                                <input type="date" class="form-control form-control-sm" id="dateOfS" ng-model="employeeRuleInfo.dos""/>
                            </div>
                        </div>
                        <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                            <div class="form-group">
                                <label for="bankName" class="control-label">Bank Name</label>
                                <select id="bankName" class="form-control form-control-sm" ng-model="employeeRuleInfo.bankName">
                                    <option value="">Select Option</option>
                                    <option ng-repeat="option in bankInfos" ng-selected="employeeRuleInfo.bankName == option.name" value="{{option.name}}">{{option.name}}</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="branchName" class="control-label">Branch Name</label>
                                <input type="text" class="form-control form-control-sm" id="accountName" placeholder="Branch name" ng-model="employeeRuleInfo.branchName"/>
                            </div>
                            <div class="form-group">
                                <label for="accountName" class="control-label">Account Name</label>
                                <input type="text" class="form-control form-control-sm" id="accountName" placeholder="Account Name" ng-model="employeeRuleInfo.accountName"/>
                            </div>
                            <div class="form-group">
                                <label for="accountNo" class="control-label">Account No.</label>
                                <input type="text" class="form-control form-control-sm" id="accountNo" placeholder="Account No."  ng-model="employeeRuleInfo.accountNo"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="box-footer clearfix">
                <div class="text-right">
                    <button type="submit" ng-disabled="isRuleFormButtonDisabled" class="btn btn-gradient-success">Save</button>
                    <button type="button" ng-disabled="isRuleFormButtonDisabled" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
                </div>
            </div>
        </div>
    </div>
</form>

<script type="text/javascript">
    $('#dateOfS').datetimepicker({
        format: 'YYYY-MM-DD'
    });
</script>