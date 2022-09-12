<div ng-controller="employeeOthersController">
    <div class="rounded bg-white">
        <form class="form-horizontal form-general" name="EmpQualificationInfoForm"
              ng-submit="saveQualificationForm(EmpQualificationInfoForm.$valid,employeePQualificationInfo)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Increment Information Setting</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-3 pt-20 b-r pb-20 no-border-lg-down">
                                    <div class="form-group input-dynamic-add mb-0">
                                        <label for="transactionID" class="control-label">Transaction ID</label>
                                        <input type="text" class="form-control form-control-sm" id="transactionID"
                                               placeholder="Template ID">
                                        <a href="javascript:void(0)"
                                           class="btn btn-gradient-success btn-icon-o add-new">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                </div>
                            <#--First column end-->
                                <div class="col-lg-9 pt-20 pb-20 no-border-lg-down">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-3 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding mb-15">
                                        <div class="flex d-flex flex-column">
                                            <h3>Current Salary Rule Setting</h3>
                                        </div>
                                    </div>
                                    <div class="form-group select-dynamic-add">
                                        <label for="designation" class="control-label">Given Designation</label>
                                        <select id="designation" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.employment">
                                            <option>Select Option</option>
                                        </select>
                                        <a href="javascript:void(0)"
                                           class="btn btn-gradient-success btn-icon-o add-new">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                    <div class="form-group select-dynamic-add">
                                        <label for="gradeCode" class="control-label">Grade Code</label>
                                        <select id="gradeCode" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.employment">
                                            <option>Select Option</option>
                                        </select>
                                        <a href="javascript:void(0)"
                                           class="btn btn-gradient-success btn-icon-o add-new">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                    <div class="form-group select-dynamic-add">
                                        <label for="stepCode" class="control-label">Step Code</label>
                                        <select id="stepCode" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.employment">
                                            <option>Select Option</option>
                                        </select>
                                        <a href="javascript:void(0)"
                                           class="btn btn-gradient-success btn-icon-o add-new">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                    <div class="form-group select-dynamic-add">
                                        <label for="salaryRuleCode" class="control-label">Salary Rule Code</label>
                                        <select id="salaryRuleCode" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.employment">
                                            <option>Select Option</option>
                                        </select>
                                        <a href="javascript:void(0)"
                                           class="btn btn-gradient-success btn-icon-o add-new">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                        <input id="checked" type="checkbox" name="agree" checked="">
                                        <label for="checked">
                                            <span class="label-checkbox"></span>
                                            <span class="label-helper">Increment from existing salary information</span>
                                        </label>
                                    </div>

                                </div>
                            <#--First column end-->
                                <div class="col-lg-3 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding mb-15">
                                        <div class="flex d-flex flex-column">
                                            <h3>New Salary Rule Setting</h3>
                                        </div>
                                    </div>

                                    <div class="form-group select-dynamic-add">
                                        <label for="designationNew" class="control-label">Given Designation</label>
                                        <select id="designationNew" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.employment">
                                            <option value="">Select Option</option>
                                        </select>
                                        <a href="javascript:void(0)"
                                           class="btn btn-gradient-success btn-icon-o add-new">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                    <div class="form-group select-dynamic-add">
                                        <label for="gradeCodeNew" class="control-label">Grade Code</label>
                                        <select id="gradeCodeNew" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.employment">
                                            <option value="">Select Option</option>
                                        </select>
                                        <a href="javascript:void(0)"
                                           class="btn btn-gradient-success btn-icon-o add-new">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                    <div class="form-group select-dynamic-add">
                                        <label for="stepCodeNew" class="control-label">Step Code</label>
                                        <select id="stepCodeNew" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.employment">
                                            <option value="">Select Option</option>
                                        </select>
                                        <a href="javascript:void(0)"
                                           class="btn btn-gradient-success btn-icon-o add-new">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                    <div class="form-group select-dynamic-add">
                                        <label for="salaryRuleCodeNew" class="control-label">Salary Rule Code</label>
                                        <select id="salaryRuleCodeNew" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.employment">
                                            <option value="">Select Option</option>
                                        </select>
                                        <a href="javascript:void(0)"
                                           class="btn btn-gradient-success btn-icon-o add-new">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                    <div class="form-group select-dynamic-add">
                                        <label for="incrementTypeNew" class="control-label">Increment Type</label>
                                        <select id="incrementTypeNew" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.employment">
                                            <option value="">Select Option</option>
                                        </select>
                                        <a href="javascript:void(0)"
                                           class="btn btn-gradient-success btn-icon-o add-new">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                    <div class="form-group select-dynamic-add">
                                        <label for="incrementNameNew" class="control-label">Increment Name</label>
                                        <select id="incrementNameNew" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.employment">
                                            <option value="">Select Option</option>
                                        </select>
                                        <a href="javascript:void(0)"
                                           class="btn btn-gradient-success btn-icon-o add-new">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                    <div class="form-group date">
                                        <label for="effectivedate" class="control-label">Effective Date</label>
                                        <input id="datetimepicker_mask" placeholder="Click Me" type="text"
                                               class="form-control form-control-sm">
                                    </div>
                                </div>
                                <div class="col-lg-6 pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-header flex-row flex d-flex align-items-center b-b mb-15">
                                        <div class="flex d-flex flex-column">
                                            <h3>Salary Head(s) for Explicit Amount Increment</h3>
                                        </div>
                                    </div>
                                    <kendo-grid options="employeeSkillsInformationGridOptions"></kendo-grid>
                                </div>
                                <#--<div class="col-lg-6 pt-20 pb-20 no-border-lg-down">-->
                                    <#--<div class="portlet-box portlet-gutter ui-buttons-col mb-30">-->
                                        <#--<div class="portlet-header flex-row flex d-flex align-items-center b-b">-->
                                            <#--<div class="flex d-flex flex-column">-->
                                                <#--<h3>Salary Head(s) for Explicit Amount Increment</h3>-->
                                            <#--</div>-->
                                        <#--</div>-->
                                        <#--<div class="portlet-body no-padding">-->
                                            <#--<div class="row no-margin">-->
                                                <#--<div class="col-lg-12 pt-20 pb-20 no-border-lg-down">-->

                                                <#--</div>-->
                                            <#--</div>-->
                                        <#--</div>-->
                                    <#--</div>-->

                                <#--</div>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mb-30">
                <div class="col-lg-12">
                    <div class="box-footer clearfix">
                        <div class="text-right">
                            <button type="submit" class="btn btn-gradient-info">Next</button>
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
