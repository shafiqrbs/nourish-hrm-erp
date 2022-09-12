<div ng-controller="SalaryRulesController">
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
                                        <div ng-hide="IsAddNewSalaryRuleInput">
                                            <select ng-model="SalaryRule.salaryRuleCode" ng-change="getAllSalaryRuleByCode(SalaryRule.salaryRuleCode)" id="salaryRuleCode" class="form-control form-control-sm" required>
                                                <option value="">Select Option</option>
                                                <option ng-repeat="option in salaryRulesList" ng-selected="SalaryRule.salaryRuleCode == option.salaryRuleCode" value="{{option.salaryRuleCode}}">{{option.salaryRuleCode}}</option>
                                            </select>
                                            <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new" ng-show="IsAddNewSalaryRule" ng-click="newSalaryPlanToggleBtn('DDL')"><i class="fa fa-plus"></i></a>
                                        </div>
                                        <div ng-show="IsAddNewSalaryRuleInput">
                                            <input type="text" ng-model="SalaryRule.salaryRuleCode" class="form-control form-control-sm" />
                                            <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new" ng-hide="IsAddNewSalaryRule" ng-click="newSalaryPlanToggleBtn('New')"><i class="fa fa-chevron-circle-down"></i></a>
                                        </div>
                                    </div>
                                    <div class="form-group select-dynamic-add">
                                        <label for="salaryHead" class="control-label">Salary Head</label>
                                        <select ng-model="SalaryRule.salaryHeadID" id="salaryHeadCode" class="form-control form-control-sm" required>
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in salaryHeadList" ng-selected="SalaryRule.salaryHeadID == option.salaryHeadID" value="{{option.salaryHeadID}}">{{option.salaryHeadID}}</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="radio" value="F" ng-model="SalaryRule.sCriteria" name="Radio1" class="iCheck" checked>
                                            Fixed
                                        </label>
                                        <label>
                                            <input type="radio" value="P" name="Radio1" ng-model="SalaryRule.sCriteria" class="iCheck">
                                            Percentage
                                        </label>
                                    </div>
                                    <div class="form-group input-dynamic-add">
                                        <label for="salaryHead" class="control-label">Amount</label>
                                        <input type="text" class="form-control form-control-sm" ng-model="salaryTypes.parentHeadValue" />
                                    </div>
                                    <div class="form-group">
                                        <input type="checkbox" id="isDefault" ng-model="salaryTypes.isFixed" />
                                        <label class="control-label" for="isDefault">Is Disbursement</label>
                                    </div>
                                    <div class="form-group">
                                        <input type="checkbox" id="isDefault" ng-model="salaryTypes.isFixed" />
                                        <label class="control-label" for="isDefault">Is Perquisite</label>
                                    </div>
                                    <div class="form-group">
                                        <label for="salaryHead" class="control-label">Parent</label>
                                        <select id="salaryHead" class="form-control form-control-sm">
                                            <option value="">Select Option</option>
                                        </select>
                                    </div>
                                </div>
                                <#--First column end-->
                                <div class="col-lg-8 pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                            <div class="flex d-flex flex-column">
                                                <h3>Defined Policy Information</h3>
                                            </div>
                                        </div>
                                        <div class="portlet-body no-padding">
                                            <div class="row no-margin">
                                                <div class="col-lg-12 b-r pt-20 pb-20 no-border-lg-down">
                                                    <kendo-grid options="salaryRulesGridOptions"></kendo-grid>
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
