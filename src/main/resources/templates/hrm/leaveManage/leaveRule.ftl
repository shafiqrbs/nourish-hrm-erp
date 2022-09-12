<div ng-controller="leaveRuleManageController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="EmpLeaveRuleInfoForm" ng-submit="saveLeaveRuleForm(EmpLeaveRuleInfoForm.$valid,leaveRule)">
            <div class="row justify-content-center">
                <div class="col-lg-4">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin justify-content-center">

                                <#--First column end-->
                                <div class="col-lg-12 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="leave-rule" class="control-label">Leave rule</label>
                                        <select id="LeaveRuleID" class="form-control form-control-sm" ng-model="leaveRule.leaveRuleID" ng-change="getLeaveRulePolicyInfo()" required>
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in LeaveRuleDDL" ng-selected="leaveRule.leaveRuleID == option.leaveRuleName" value="{{option.leaveRuleName}}">{{option.leaveRuleName}}</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="description" class="control-label">Description</label>
                                        <textarea class="form-control form-control-sm" id="description" rows="3">Leave rule for all</textarea>
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
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Leave Rule Information</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                    <kendo-grid options="LeaveRuleInformationDataOptions"></kendo-grid>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--
            <div class="row mb-30">
                <div class="col-lg-12">
                    <div class="box-footer clearfix">
                        <div class="text-right">
                            <button type="submit" class="btn btn-gradient-success">Save</button>
                            <button type="reset" class="btn btn-gradient-danger">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
            -->
        </form>

    </div>
</div>