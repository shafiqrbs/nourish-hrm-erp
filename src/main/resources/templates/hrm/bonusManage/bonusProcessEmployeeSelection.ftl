<div ng-controller="bonusManageController">
    <div class="">
        <form class="form-horizontal form-general" name="EmpQualificationInfoForm" ng-submit="saveQualificationForm(EmpQualificationInfoForm.$valid,employeePQualificationInfo)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-12">
                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                            <div class="flex d-flex flex-column">
                                                <h3>Employee Information</h3>
                                            </div>
                                        </div>
                                        <div class="portlet-body no-padding">
                                            <div class="row" style="margin: 15px 0 !important;">
                                                <div class="col-lg-12 no-border-lg-down">
                                                    <div class="row no-margin">
                                                        <div class="col-lg-9 no-border-lg-down">
                                                            <div class="form-group mb-0">
                                                                <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                                    <input id="checked" type="checkbox" name="agree">
                                                                    <label for="checked">
                                                                        <span class="label-checkbox"></span>
                                                                        <span class="label-helper">Select All</span>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-3 no-border-lg-down">
                                                            <div class="form-group input-dynamic-add mb-0" style="text-align:right;">
                                                                <input type="text" ng-model="pSearchCriteria" class="form-control form-control-sm"
                                                                       ng-enter="searchEmployeeInfo(pSearchCriteria)" id="" placeholder="Search criteria type here" />
                                                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new"
                                                                   ng-click="searchEmployeeInfo(pSearchCriteria)">
                                                                    <i class="fa fa-search"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <kendo-grid options="EmployeeAllDataOptions" style="height:400px;"></kendo-grid>
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
