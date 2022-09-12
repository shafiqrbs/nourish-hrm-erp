<div ng-controller="disciplinaryActionManageController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="EmpQualificationInfoForm" ng-submit="saveQualificationForm(EmpQualificationInfoForm.$valid,employeePQualificationInfo)">
            <div class="row">
                <div class="col-lg-3 body-aside-table">
                    <div class="form-group select-dynamic-add">
                        <label for="actionCode" class="control-label">Disciplinary Action Code</label>
                        <select id="actionCode" class="form-control">
                            <option></option>
                        </select>
                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                            <i class="fa fa-plus"></i>
                        </a>
                    </div>
                    <div class="form-group select-dynamic-add">
                        <label for="actionType" class="control-label">Disciplinary Action Type</label>
                        <select id="actionType" class="form-control">
                            <option></option>
                        </select>
                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                            <i class="fa fa-plus"></i>
                        </a>
                    </div>
                    <div class="form-group date">
                        <label for="occurrenceDate" class="control-label">Occurrence Date</label>
                        <input id="datetimepicker_mask" placeholder="Click Me" type="text" class="form-control form-control-sm">
                    </div>
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <div class="form-group input-dynamic-add mb-0">
                                    <label for="" class="control-label">[Type for search][Press enter for select]</label>
                                    <input type="text" ng-model="employeeOfficialInfo.operationCode"
                                           class="form-control form-control-sm" id="operationCode"
                                           placeholder="Search With Employee Code">
                                    <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                        <i class="fa fa-search"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Team Member Information</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="body-aside-table-inside">
                                <div class="body-aside-table-wrap">
                                    <kendo-grid options="EmployeeAllDataOptions" style="height:450px;"></kendo-grid>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <div class="form-group input-dynamic-add mb-0">
                                    <label for="" class="control-label">[Type for search][Press enter for select]</label>
                                    <input type="text" ng-model="employeeOfficialInfo.operationCode"
                                           class="form-control form-control-sm" id="operationCode"
                                           placeholder="Search With Employee Code">
                                    <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                        <i class="fa fa-search"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Employee Information</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="body-aside-table-inside">
                                <div class="body-aside-table-wrap">
                                    <kendo-grid options="employeeSearchInformationGridOptions"></kendo-grid>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                        <input id="checked" type="checkbox" name="agree" checked="">
                        <label for="checked">
                            <span class="label-checkbox"></span>
                            <span class="label-helper">Show Only Selected Employee</span>
                        </label>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Description</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding" style="min-height:300px">
                            <div class="row no-margin">
                                <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Action Information</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding" style="min-height:300px">
                            <div class="row no-margin">
                                <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">

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

<style type="text/css">
    .body-aside-table-inside{
        overflow:hidden;
    }
    .k-pager-sizes, .k-pager-wrap .k-link{
        min-width:.5em !important;
    }
</style>
