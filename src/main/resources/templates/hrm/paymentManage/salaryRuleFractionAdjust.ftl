<div ng-controller="paymentManageController">
    <div class="rounded bg-white">
        <form class="form-horizontal form-general" name="EmpQualificationInfoForm"
              ng-submit="saveQualificationForm(EmpQualificationInfoForm.$valid,employeePQualificationInfo)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding mb-15">
                                        <div class="flex d-flex flex-column">
                                            <h3>Salary Rule Information</h3>
                                        </div>
                                    </div>
                                    <div class="form-group select-dynamic-add">
                                        <label for="salaryRuleCode" class="control-label">Salary Rule Code</label>
                                        <select id="salaryRuleCode" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.employment">
                                            <option>Select Option</option>
                                        </select>
                                        <a href="javascript:void(0)"
                                           class="btn btn-gradient-success btn-icon-o add-new">
                                            <i class="fa fa-search"></i>
                                        </a>
                                    </div>
                                    <div class="form-group select-dynamic-add">
                                        <label for="salaryHead" class="control-label">Salary Head</label>
                                        <select id="salaryHead" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.employment">
                                            <option>Select Option</option>
                                        </select>
                                        <a href="javascript:void(0)"
                                           class="btn btn-gradient-success btn-icon-o add-new">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>

                                </div>
                                <#--First column end-->
                                <div class="col-lg-8 pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-body no-padding" style="min-height:100px">
                                            <div class="row no-margin">
                                                <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                                    <label class="text-danger control-label">Note:At Least One Head Must be Fixed</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                            <div class="flex d-flex flex-column">
                                                <h3>Fraction Adjust Information</h3>
                                            </div>
                                        </div>
                                        <div class="portlet-body no-padding">
                                            <div class="row no-margin">
                                                <div class="col-lg-12 b-r pt-20 pb-20 no-border-lg-down">
                                                    <kendo-grid options="employeeInformationGridOptions"></kendo-grid>
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
