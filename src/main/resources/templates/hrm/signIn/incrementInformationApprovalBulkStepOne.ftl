<div ng-controller="signInController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="EmpQualificationInfoForm" ng-submit="saveQualificationForm(EmpQualificationInfoForm.$valid,employeePQualificationInfo)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding">
                                            <div class="flex d-flex flex-column">
                                                <h3 class="pl-15">Criteria Setting</h3>
                                            </div>
                                        </div>
                                        <div class="form-group input-dynamic-add mb-0 pt-15 pb-15 pl-15 pr-15">
                                            <label for="specificCriteria" class="control-label">Select specific criteria code</label><br/>
                                            <input type="text" ng-model="employeeOfficialInfo.specificCriteriaCode" class="form-control form-control-sm" id="specificCriteria" placeholder="Select specific criteria code">
                                            <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                <i class="fa fa-search"></i>
                                            </a>
                                        </div>
                                    </div>



                                </div>
                                <#--First column end-->
                                <div class="col-lg-8 pt-20 pb-20 no-border-lg-down">
                                    <div class="row">
                                        <div class="col-lg-6 pt-20 pb-20 no-border-lg-down">
                                            <div class="form-group input-dynamic-add mb-0">
                                                <label for="" class="control-label">[Type for search][Press enter for select]</label><br/>
                                                <input type="text" ng-model="employeeOfficialInfo.operationCode" class="form-control form-control-sm" id="" placeholder="Search With Employee Code">
                                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                    <i class="fa fa-search"></i>
                                                </a>
                                            </div>

                                        </div>
                                        <div class="col-lg-6 pt-20 pb-20 no-border-lg-down">

                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                                    <div class="flex d-flex flex-column">
                                                        <h3>Employee Information</h3>
                                                    </div>
                                                </div>
                                                <div class="portlet-body no-padding">
                                                    <div class="row no-margin">
                                                        <div class="col-lg-12 pt-20 pb-20 no-border-lg-down mtt0">
                                                            <kendo-grid options="employeeInformationGridOptions"></kendo-grid>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                            <input id="checked" type="checkbox" name="agree">
                                            <label for="checked">
                                                <span class="label-checkbox"></span>
                                                <span class="label-helper">Select All</span>
                                            </label>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="box-footer clearfix">
                                                <div class="text-right">
                                                    <button type="submit" class="btn btn-gradient-info">Next</button>
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
