<div ng-controller="signInController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="EmpQualificationInfoForm" ng-submit="saveQualificationForm(EmpQualificationInfoForm.$valid,employeePQualificationInfo)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Select Leave Rule and Leave Type</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                    <div class="row">
                                        <div class="col-lg-4 pt-20 no-border-lg-down">
                                            <div class="form-group select-dynamic-add">
                                                <label for="leaveRule" class="control-label">Leave Rule</label><br/>
                                                <select id="leaveRule" class="form-control form-control-sm" ng-model="employeePQualificationInfo.issuedBy">
                                                    <option>Select Option</option>
                                                </select>
                                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                    <i class="fa fa-plus"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 pt-20 no-border-lg-down">
                                            <div class="form-group select-dynamic-add">
                                                <label for="leaveType" class="control-label">Leave Type</label><br/>
                                                <select id="leaveType" class="form-control form-control-sm" ng-model="employeePQualificationInfo.issuedBy">
                                                    <option>Select Option</option>
                                                </select>
                                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                    <i class="fa fa-plus"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 pt-20 no-border-lg-down">
                                            <div class="form-group input-dynamic-add mb-0">
                                                <label for="" class="control-label">[Type for search][Press enter for select]</label>
                                                <input type="text" ng-model="employeeOfficialInfo.operationCode" class="form-control form-control-sm" id="" placeholder="Search With Employee Code">
                                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                    <i class="fa fa-search"></i>
                                                </a>
                                            </div>

                                        </div>
                                        <div class="col-lg-8 pt-20 pb-20 no-border-lg-down">

                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                                    <div class="flex d-flex flex-column">
                                                        <h3>Leave Transaction Information</h3>
                                                    </div>
                                                </div>
                                                <div class="portlet-body no-padding" style="min-height:150px">
                                                    <div class="row no-margin">
                                                        <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                <input id="checked" type="checkbox" name="agree">
                                                <label for="checked">
                                                    <span class="label-checkbox"></span>
                                                    <span class="label-helper">Select All</span>
                                                </label>
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
