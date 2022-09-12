<div ng-controller="LeaveManagementController">
    <div class="bg-white">
        <form class="form-horizontal form-general" name="EmpQualificationInfoForm" ng-submit="saveQualificationForm(EmpQualificationInfoForm.$valid,employeePQualificationInfo)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Leave Policy Information</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group input-dynamic-add mb-0">
                                        <label for="policyId" class="control-label">Policy ID</label>
                                        <input type="text" ng-model="employeeOfficialInfo.policyId" class="form-control form-control-sm" id="policyId" placeholder="Search With Employee Code">
                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                    <div class="form-group select-dynamic-add">
                                        <label for="leaveType" class="control-label">Leave Type</label>
                                        <select id="leaveType" class="form-control form-control-sm" ng-model="employeeGeneralInfo.employment">
                                            <option>Select Option</option>
                                        </select>
                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>

                                </div>
                                <#--First column end-->
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="descriptions" class="control-label">Description</label>
                                        <textarea class="form-control form-control-sm" id="descriptions" placeholder="Descriptions" rows="3"></textarea>
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

            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-6 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding">
                                        <div class="flex d-flex flex-column">
                                            <h3>Leave Deduction Information</h3>
                                        </div>
                                    </div>
                                    <div class="row no-margin">
                                        <div class="col-lg-8 pt-20 pb-20 no-border-lg-down">
                                            <div class="form-group">
                                                <div class="customUi-radio radioUi-primary  pb-2">
                                                    <input id="a1" type="radio" value="Fixed" name="Leave Deduction"  checked="">
                                                    <label for="a1">
                                                        <span class="label-radio"></span>
                                                        <span class="label-helper">Fixed</span>
                                                    </label>
                                                </div>
                                                <div class="customUi-radio radioUi-primary  pb-2">
                                                    <input id="a2" type="radio" value="Percentage" name="Leave Deduction">
                                                    <label for="a2">
                                                        <span class="label-radio"></span>
                                                        <span class="label-helper">Percentage</span>
                                                    </label>
                                                </div>
                                                <div class="customUi-radio radioUi-primary  pb-2">
                                                    <input id="a3" type="radio" value="Partial" name="Leave Deduction">
                                                    <label for="a2">
                                                        <span class="label-radio"></span>
                                                        <span class="label-helper">Partial</span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group select-dynamic-add">
                                                <label for="head" class="control-label">Leave Head</label>
                                                <select id="head" class="form-control form-control-sm" ng-model="employeeGeneralInfo.employment">
                                                    <option>Select Option</option>
                                                </select>
                                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                    <i class="fa fa-plus"></i>
                                                </a>
                                            </div>
                                            <div class="form-group">
                                                <label for="calculateAfter" class="control-label">Amount %</label>
                                                <input type="text" class="form-control form-control-sm" placeholder="Amount %" id="calculateAfter">
                                            </div>
                                            <div class="form-group">
                                                <label for="calculateAfter" class="control-label">Days in Month Calculate Deduction</label>
                                                <input type="text" class="form-control form-control-sm" placeholder="Days">
                                            </div>
                                            <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                <input id="checked" type="checkbox" name="agree" checked="">
                                                <label for="checked">
                                                    <span class="label-checkbox"></span>
                                                    <span class="label-helper">Deduction is for per Leave day</span>
                                                </label>
                                            </div>

                                        </div>
                                        <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">

                                        </div>

                                    </div>
                                    <div class="row mb-30">
                                        <div class="col-lg-12">
                                            <div class="box-footer clearfix">
                                                <div class="text-right">
                                                    <button type="submit" class="btn btn-gradient-info">Define Policy</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                                    <div class="flex d-flex flex-column">
                                                        <h3>Defined Policy</h3>
                                                        <span class="portlet-subtitle">All Defined Policy Record</span>
                                                    </div>
                                                </div>
                                                <div class="portlet-body no-padding">
                                                    <div class="row no-margin">
                                                        <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                                            <kendo-grid options="LDefinedPolicyList"></kendo-grid>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                                <#--First column end-->
                                <div class="col-lg-6 pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding">
                                        <div class="flex d-flex flex-column">
                                            <h3>Leave Encashment Information</h3>
                                        </div>
                                    </div>
                                    <div class="row no-margin">
                                        <div class="col-lg-8 pt-20 pb-20 no-border-lg-down">
                                            <div class="form-group">
                                                <div class="customUi-radio radioUi-primary  pb-2">
                                                    <input id="b1" type="radio" value="Fixed" name="Leave Deduction"  checked="">
                                                    <label for="b1">
                                                        <span class="label-radio"></span>
                                                        <span class="label-helper">Fixed</span>
                                                    </label>
                                                </div>
                                                <div class="customUi-radio radioUi-primary  pb-2">
                                                    <input id="b2" type="radio" value="Percentage" name="Leave Deduction">
                                                    <label for="b2">
                                                        <span class="label-radio"></span>
                                                        <span class="label-helper">Percentage</span>
                                                    </label>
                                                </div>
                                                <div class="customUi-radio radioUi-primary  pb-2">
                                                    <input id="b3" type="radio" value="Partial" name="Leave Deduction">
                                                    <label for="b2">
                                                        <span class="label-radio"></span>
                                                        <span class="label-helper">Partial</span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group select-dynamic-add">
                                                <label for="firstHead" class="control-label">1st Head</label>
                                                <select id="firstHead" class="form-control form-control-sm" ng-model="employeeGeneralInfo.employment">
                                                    <option>Select Option</option>
                                                </select>
                                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                    <i class="fa fa-plus"></i>
                                                </a>
                                            </div>
                                            <div class="form-group select-dynamic-add">
                                                <label for="secondHead" class="control-label">2nd Head</label>
                                                <select id="secondHead" class="form-control form-control-sm" ng-model="employeeGeneralInfo.employment">
                                                    <option>Select Option</option>
                                                </select>
                                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                    <i class="fa fa-plus"></i>
                                                </a>
                                            </div>
                                            <div class="form-group">
                                                <label for="firstAmount" class="control-label">1st Amount</label>
                                                <input type="text" class="form-control form-control-sm" placeholder="" id="firstAmount">
                                            </div>
                                            <div class="form-group">
                                                <label for="secondAmount" class="control-label">2nd Amount</label>
                                                <input type="text" class="form-control form-control-sm" placeholder="" id="secondAmount">
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">Which is</label><br/>
                                                <div class="customUi-radio radioUi-primary  pb-2">
                                                    <input id="c1" type="radio" value="Higher" name="Radio1"  checked="">
                                                    <label for="c1">
                                                        <span class="label-radio"></span>
                                                        <span class="label-helper">Higher </span>
                                                    </label>
                                                </div>
                                                <div class="customUi-radio radioUi-primary  pb-2">
                                                    <input id="c2" type="radio" value="Lower" name="Radio1">
                                                    <label for="c2">
                                                        <span class="label-radio"></span>
                                                        <span class="label-helper"> Lower</span>
                                                    </label>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">

                                        </div>

                                    </div>
                                    <div class="row mb-30">
                                        <div class="col-lg-12">
                                            <div class="box-footer clearfix">
                                                <div class="text-right">
                                                    <button type="submit" class="btn btn-gradient-info">Define Policy</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                                    <div class="flex d-flex flex-column">
                                                        <h3>Defined Policy</h3>
                                                        <span class="portlet-subtitle">All Defined Policy Record</span>
                                                    </div>
                                                </div>
                                                <div class="portlet-body no-padding">
                                                    <div class="row no-margin">
                                                        <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                                            <kendo-grid options="LDefinedPolicyList"></kendo-grid>
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

            <div class="row mb-30">
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

    </div>
</div>