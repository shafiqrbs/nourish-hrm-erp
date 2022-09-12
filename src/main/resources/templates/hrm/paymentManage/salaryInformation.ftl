<div ng-controller="EmployeeSalaryInfoController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="EmpQualificationInfoForm" ng-submit="saveQualificationForm(EmpQualificationInfoForm.$valid,employeePQualificationInfo)">
            <div class="row">
                <div class="col-lg-3 body-aside-table">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <div class="form-group input-dynamic-add mb-0">
                                    <input type="text" ng-model="pSearchCriteria"
                                           class="form-control form-control-sm" ng-enter="EmployeeGridFilter(pSearchCriteria)"
                                           placeholder="Search criteria type here" autocomplete="off" />
                                    <a href="javascript:void(0)" ng-click="EmployeeGridFilter(pSearchCriteria)" class="btn btn-gradient-success btn-icon-o add-new">
                                        <i class="fa fa-search"></i>
                                    </a>
                                </div>
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
                </div>
                <div class="col-lg-9">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                            <div class="flex d-flex flex-column">
                                                <h3>Salary Information</h3>
                                            </div>
                                        </div>
                                        <!--
                                        <div class="form-group select-dynamic-add">
                                            <label for="gradeCode" class="control-label">Grade Code</label>
                                            <select id="gradeCode" class="form-control" ng-model="employeeGeneralInfo.employment">
                                                <option>Select Option</option>
                                            </select>
                                            <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                <i class="fa fa-plus"></i>
                                            </a>
                                        </div>
                                        <div class="form-group select-dynamic-add">
                                            <label for="stepCode" class="control-label">Step Code</label>
                                            <select ng-model="SalaryInformation.salaryRuleCode" id="salaryRuleCode" class="form-control form-control-sm" required>
                                                <option value="">Select Option</option>
                                                <option ng-repeat="option in salaryRulesList" ng-selected="SalaryRule.salaryRuleCode == option.salaryRuleCode" value="{{option.salaryRuleCode}}">{{option.salaryRuleCode}}</option>
                                            </select>
                                            <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                <i class="fa fa-plus"></i>
                                            </a>
                                        </div>
                                        -->
                                        <div class="form-group pl-15 pr-15 pt-15">
                                            <label for="salaryRuleCode" class="control-label">Salary Rule Code</label>
                                            <select ng-model="salaryRuleCode" id="salaryRuleCode" class="form-control form-control-sm">
                                                <option value="">Select Option</option>
                                                <option ng-repeat="option in salaryRulesList" ng-selected="salaryRuleCode == option.salaryRuleCode" value="{{option.salaryRuleCode}}">{{option.salaryRuleCode}}</option>
                                            </select>
                                        </div>
                                        <div class="row mb-15 pr-15">
                                            <div class="col-lg-12">
                                                <div class="box-footer clearfix">
                                                    <div class="text-right">
                                                        <button type="button" ng-disabled="IsViewButtonDisabled" ng-click="getSalaryRuleInfo()" class="btn btn-gradient-info">View</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <#--First column end-->
                                <div class="col-lg-8 pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                            <div class="flex d-flex flex-column">
                                                <h3>Salary Rule Information</h3>
                                            </div>
                                        </div>
                                        <div class="portlet-body no-padding" style="min-height:500px">
                                            <div class="row" style="margin-top:20px;">
                                                <div class="col-lg-3" style="text-align:right;">
                                                    <label>Gross (In total)</label>
                                                </div>
                                                <div class="col-lg-3">
                                                    <input type="number" class="form-control" ng-model="employeeGrossSalary" />
                                                </div>
                                                <div class="col-lg-6">
                                                    <button type="button" class="btn btn-gradient-info" ng-click="CalculateSalary()">Calculate</button>
                                                </div>
                                            </div>
                                            <div class="row no-margin">
                                                <div class="col-lg-12 b-r pt-20 pb-20 no-border-lg-down">
                                                    <kendo-grid options="employeeSalaryInfoGridOptions"></kendo-grid>
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
                    <button type="button" class="btn btn-gradient-success" ng-click="saveEmployeeSalary(employeeCode,salaryRuleCode,employeeGrossSalary)">Save</button>
                </div>
            </div>
        </div>
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
