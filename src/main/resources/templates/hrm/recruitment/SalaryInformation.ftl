<div class="rounded shadow-sm p-3 bg-white">
    <form class="form-horizontal form-general" name="EmpQualificationInfoForm" ng-submit="saveQualificationForm(EmpQualificationInfoForm.$valid,employeePQualificationInfo)">
        <div class="row">
            <div class="col-lg-12">
                <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                    <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                        <div class="flex d-flex flex-column">
                            <h3>Add Salary Rule Information</h3>
                        </div>
                    </div>
                    <div class="portlet-body no-padding">
                        <div class="row no-margin">
                            <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                    <div class="form-group pl-15 pr-15 pt-15">
                                        <label for="salaryRuleCode" class="control-label">Salary Rule Code</label>
                                        <select ng-model="salaryRuleCode" id="salaryRuleCode" class="form-control form-control-sm" ng-disabled="isSalaryGenerateDisabled">
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in salaryRulesList" ng-selected="salaryRuleCode == option.salaryRuleCode" value="{{option.salaryRuleCode}}">{{option.salaryRuleCode}}</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <#--First column end-->
                            <div class="col-lg-8 pt-20 pb-20 no-border-lg-down">
                                <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                    <div class="portlet-body no-padding" style="min-height:500px">
                                        <div class="row" style="margin-top:20px;">
                                            <div class="col-lg-3" style="text-align:right;">
                                                <label>Gross (In total)</label>
                                            </div>
                                            <div class="col-lg-3">
                                                <input type="number" ng-disabled="isSalaryGenerateDisabled" class="form-control" ng-model="employeeGrossSalary" />
                                            </div>
                                            <div class="col-lg-6">
                                                <button type="button" ng-disabled="isSalaryGenerateDisabled" class="btn btn-gradient-info" ng-click="CalculateSalary(salaryRuleCode,employeeGrossSalary)">Calculate</button>
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
                <button type="button" class="btn btn-gradient-success" ng-click="saveEmployeeSalary(EmployeeTempCode,salaryRuleCode,employeeGrossSalary)" ng-disabled="isSalaryGenerateDisabled">Save</button>
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
