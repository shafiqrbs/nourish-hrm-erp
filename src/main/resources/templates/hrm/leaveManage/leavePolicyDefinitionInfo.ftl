<div ng-controller="leavePolicyInfoManageController">
    <div class="bg-white">
        <form class="form-horizontal form-general" name="LeavePolicyInfoForm" ng-submit="saveForm(LeavePolicyInfoForm.$valid,leavePolicyInfo)">
            <#--<div class="row">-->
            <#--<div class="col-lg-12">-->
            <#--<div class="portlet-box portlet-gutter ui-buttons-col mb-30">-->
            <#---->
            <#--<div class="portlet-body no-padding">-->
            <#--<div class="row no-margin">-->
            <#--<div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">-->
            <#---->

            <#--</div>-->
            <#--&lt;#&ndash;First column end&ndash;&gt;-->
            <#--<div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">-->
            <#---->

            <#--</div>-->
            <#--&lt;#&ndash;Second column end&ndash;&gt;-->
            <#--<div class="col-lg-4 pt-20 pb-20 no-border-lg-down">-->
            <#---->

            <#--</div>-->
            <#--</div>-->
            <#--</div>-->
            <#--</div>-->
            <#--</div>-->
            <#--</div>-->

            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Leave Policy Info</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-3 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group mb-0">
                                        <label for="policyId" class="control-label">Policy ID</label>
                                        <input disabled type="text" ng-model="leavePolicyInfo.policyID" class="form-control form-control-sm" id="policyId" placeholder="(Auto Generate)">
                                    </div>
                                    <div class="form-group">
                                        <label for="leaveType" class="control-label">Leave Type</label>
                                        <select ng-model="leavePolicyInfo.leaveType" id="leaveType" class="form-control form-control-sm" required>
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in allLeaveTypeDDL" ng-selected="leavePolicyInfo.leaveType == option.leaveType" value="{{option.leaveType}}">{{option.leaveType}}</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="descriptions" class="control-label">Description</label>
                                        <textarea ng-model="leavePolicyInfo.policyDescription" class="form-control form-control-sm" id="descriptions" placeholder="Descriptions" rows="3"></textarea>
                                    </div>

                                </div>
                                <div class="col-lg-3 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="leaveCategory" class="control-label">Leave Category</label>
                                        <select ng-model="leavePolicyInfo.leaveCategory" id="leaveCategory" class="form-control form-control-sm" required>
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in allLeaveCategoryDDL" ng-selected="leavePolicyInfo.leaveCategory == option.leaveCategory" value="{{option.leaveCategory}}">{{option.leaveCategory}}</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="leaveCredit" class="control-label">Leave Credit</label>
                                        <select ng-model="leavePolicyInfo.leaveCredit" id="leaveCredit" class="form-control form-control-sm" required>
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in allLeaveCreditDDL" ng-selected="leavePolicyInfo.leaveCredit == option.leaveCredit" value="{{option.leaveCredit}}">{{option.leaveCredit}}</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Leave Days</label><br/>
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input id="a1" ng-model="leavePolicyInfo.dayStatus" type="radio" value="Fixed" name="Leave Days"  checked="">
                                            <label for="a1">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">Fixed</span>
                                            </label>
                                        </div>
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input id="a2" ng-model="leavePolicyInfo.dayStatus" type="radio" value="Based on Working Days" name="Leave Days">
                                            <label for="a2">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">Based on Working Days</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                        <input id="checked" ng-model="leavePolicyInfo.serviceLengthDependant" type="checkbox" name="agree">
                                        <label for="checked">
                                            <span class="label-checkbox"></span>
                                            <span class="label-helper">Leave Days Depends on Service Length</span>
                                        </label>
                                    </div>

                                </div>
                                <#--First column end-->
                                    <div class="col-lg-3 b-r pt-20 pb-20 no-border-lg-down">
                                        <div class="form-group">
                                            <label class="control-label">Leave Calculation Basic</label><br/>
                                            <div class="customUi-radio radioUi-primary  pb-2">
                                                <input id="b1" ng-model="leavePolicyInfo.leaveCalculationBasis" type="radio" value="DOJ" name="Leave Calculation Basic"  checked="" required>
                                                <label for="b1">
                                                    <span class="label-radio"></span>
                                                    <span class="label-helper">Date Of Join</span>
                                                </label>
                                            </div>
                                            <div class="customUi-radio radioUi-primary  pb-2">
                                                <input id="b2" ng-model="leavePolicyInfo.leaveCalculationBasis" type="radio" value="DOC" name="Leave Calculation Basic">
                                                <label for="b2">
                                                    <span class="label-radio"></span>
                                                    <span class="label-helper">Date Of Confirmation</span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="calculateAfter" class="control-label">Calculate After</label>
                                            <input type="text" ng-model="leavePolicyInfo.calculateAfter" class="form-control form-control-sm" id="calculateAfter" placeholder="Calculate After ( Months )" required>
                                        </div>
                                        <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                            <input id="checked1" ng-model="leavePolicyInfo.fYrLVProportionateBasedOnDOJDOC" type="checkbox" name="agree">
                                            <label for="checked1">
                                                <span class="label-checkbox"></span>
                                                <span class="label-helper">Proportionate Based on DOJ/DOC for First Month</span>
                                            </label>
                                        </div>
                                        <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                            <input id="checked2" ng-model="leavePolicyInfo.carryForwarded" type="checkbox" name="agree">
                                            <label for="checked2">
                                                <span class="label-checkbox"></span>
                                                <span class="label-helper">Leave Carry Forward</span>
                                            </label>
                                        </div>
                                        <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                            <input id="checked3" ng-model="leavePolicyInfo.consecutiveLimit" type="checkbox" name="agree">
                                            <label for="checked3">
                                                <span class="label-checkbox"></span>
                                                <span class="label-helper">Consecutive Limit</span>
                                            </label>
                                        </div>
                                        <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                            <input id="checked4" ng-model="leavePolicyInfo.allowAdvanceLeave" type="checkbox" name="agree">
                                            <label for="checked4">
                                                <span class="label-checkbox"></span>
                                                <span class="label-helper">Allow Advance Leave</span>
                                            </label>
                                        </div>

                                    </div>
                                <#--Second column end-->
                                <div class="col-lg-3 pt-20 pb-20 no-border-lg-down">
                                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                        <input id="checked5" ng-model="leavePolicyInfo.allowPreceedingHolidays" type="checkbox" name="agree">
                                        <label for="checked5">
                                            <span class="label-checkbox"></span>
                                            <span class="label-helper">Allow With Proceeding Holidays</span>
                                        </label>
                                    </div>
                                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                        <input id="checked6" ng-model="leavePolicyInfo.allowSucceedingHolidays" type="checkbox" name="agree">
                                        <label for="checked6">
                                            <span class="label-checkbox"></span>
                                            <span class="label-helper">Allow With Succeeding Holidays</span>
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label for="CalenderType" class="control-label">Calender Type</label>
                                        <select id="CalenderType" class="form-control form-control-sm"  ng-model="leavePolicyInfo.calenderType" required>
                                            <option value="">Select Option</option>
                                            <option value="EC">EC</option>
                                            <option value="CC">CC</option>
                                        </select>
                                    </div>
                                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                        <input id="checked7" ng-model="leavePolicyInfo.allowOpeningBalance" type="checkbox" name="agree">
                                        <label for="checked7">
                                            <span class="label-checkbox"></span>
                                            <span class="label-helper">Allow Opening Balance</span>
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label for="every" class="control-label">Every</label>
                                        <input type="text" ng-model="leavePolicyInfo.adjustedHour" class="form-control form-control-sm" id="every">
                                        <label for="every" class="control-label">hours of hourly leave will be adjusted as one day leave</label>
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
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="leaveDays" class="control-label">Leave Days</label>
                                        <input type="text" ng-model="leavePolicyInfo.leaveDays" class="form-control form-control-sm" id="leaveDays" placeholder="Leave Days" />
                                    </div>


                                </div>
                                <#--First column end-->
                                    <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                        <div class="form-group">
                                            <label for="maxAllocationDays" class="control-label">Max Allocation Days</label>
                                            <input type="text" ng-model="leavePolicyInfo.maxAllocationDays" class="form-control form-control-sm" id="maxAllocationDays" placeholder="Max Allocation Days" />
                                        </div>

                                    </div>
                                <#--Second column end-->
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

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
        </form>

        <div class="row">
            <div class="col-lg-12">
                <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                    <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                        <div class="flex d-flex flex-column">
                            <h3>Leave Policy Information</h3>
                            <span class="portlet-subtitle">All Leave Policy Information Record</span>
                        </div>
                    </div>
                    <div class="portlet-body no-padding">
                        <div class="row no-margin">
                            <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                <kendo-grid options="LeavePolicyInformationDataOptions"></kendo-grid>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>