<div ng-controller="paymentManageController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="EmpQualificationInfoForm" ng-submit="saveQualificationForm(EmpQualificationInfoForm.$valid,employeePQualificationInfo)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-body no-padding">
                        <div class="row no-margin">
                            <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                    <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                        <div class="flex d-flex flex-column">
                                            <h3>Definition of Salary Rule Information</h3>
                                        </div>
                                    </div>
                                    <div class="form-group select-dynamic-add pt-15 pl-15 pr-15 pb-15">
                                        <label for="otherSalaryRuleName" class="control-label">Other Salary Rule Name</label>
                                        <select id="otherSalaryRuleName" class="form-control form-control-sm" ng-model="employeePQualificationInfo.issuedBy">
                                            <option>Select Option</option>
                                        </select>
                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="box-footer clearfix">
                                                <div class="text-right pb-15 pr-15">
                                                    <button type="submit" class="btn btn-gradient-info">Define</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                            <#--First column end-->
                            <div class="col-lg-8 pt-20 pb-20 ">
                                <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                    <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                        <div class="flex d-flex flex-column">
                                            <h3>Other Salary Rule Information</h3>
                                        </div>
                                    </div>
                                    <div class="portlet-body no-padding">
                                        <div class="row no-margin">
                                            <div class="col-lg-12 pb-20 no-border-lg-down pagrertop0 mtt0 mt-15">
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

        </form>

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
</div>
