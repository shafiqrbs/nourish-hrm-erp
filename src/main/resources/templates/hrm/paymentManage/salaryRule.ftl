<div class="row" >
    <div class="col-lg-12 mb-30" ng-controller="SalaryRulesController">
        <div class="rounded shadow-sm bg-white">
            <!-- Nav tabs -->
            <!--<ul class="nav nav-pills" role="tablist">
                <li class="nav-item" ng-class="{'active':PaymentManageTab == 'salaryDefinedPolicy'}" ng-click="openPaymentManageTab('salaryDefinedPolicy')">
                    <a class="nav-link active show" href="/hr#!/payment/manage/salaryRule/salaryDefinedPolicy" role="tab" data-toggle="tab">Defined Policy</a>
                </li>
                <li class="nav-item" ng-class="{'active':PaymentManageTab == 'salaryFractionAdjust'}" ng-click="openPaymentManageTab('salaryFractionAdjust')">
                    <a class="nav-link" href="/hr#!/payment/manage/salaryRule/salaryFractionAdjust" role="tab" data-toggle="tab">Fraction Adjust</a>
                </li>
            </ul> -->

            <!-- Tab panes -->
            <div class="tab-content pt-3">
                <div class="active tab-pane">
                    <form class="form-horizontal form-general" name="SalaryRuleForm" ng-submit="saveForm(SalaryRuleForm.$valid,SalaryRule)">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="">
                                    <div class="portlet-body no-padding">
                                        <div class="row no-margin">
                                            <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                                <div class="salary_rule_info_area">
                                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding mb-15">
                                                            <div class="flex d-flex flex-column">
                                                                <h3 class="pl-15">Salary Rule Information</h3>
                                                            </div>
                                                        </div>
                                                        <div class="salary_rule_info">
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
                                                                <select ng-model="SalaryRule.salaryHeadID" id="salaryHeadCode" ng-disabled="IsSalaryHeadDisabled" class="form-control form-control-sm" required>
                                                                    <option value="">Select Option</option>
                                                                    <option ng-repeat="option in salaryHeadList" ng-selected="SalaryRule.salaryHeadID == option.salaryHeadID" value="{{option.salaryHeadID}}">{{option.salaryHeadID}}</option>
                                                                </select>
                                                            </div>
                                                            <div class="form-group input-dynamic-add">
                                                                <label for="salaryHead" class="control-label">Amount</label>
                                                                <input type="number" class="form-control form-control-sm" ng-model="SalaryRule.parentHeadValue" />
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="salaryHead" class="control-label">Type</label>
                                                                <br />
                                                                <div class="customUi-radio radioUi-primary  pb-2">
                                                                    <div style="float:left;width:70px;">
                                                                        <input id="fixedAmount" type="radio" ng-model="SalaryRule.sCriteria" ng-change="ParentHeadToggle(SalaryRule.sCriteria)" value="F">
                                                                        <label for="fixedAmount">
                                                                            <span class="label-radio"></span>
                                                                            <span class="label-helper">Fixed</span>
                                                                        </label>
                                                                    </div>
                                                                    <div style="float:left;width:120px;">
                                                                        <input id="pctAmount" type="radio" ng-model="SalaryRule.sCriteria" ng-change="ParentHeadToggle(SalaryRule.sCriteria)" value="%">
                                                                        <label for="pctAmount">
                                                                            <span class="label-radio"></span>
                                                                            <span class="label-helper">Percentage</span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group select-dynamic-add" ng-show="IsParentHead">
                                                                <label for="salaryHead" class="control-label">Parent Salary Head</label>
                                                                <select ng-model="SalaryRule.parentHeadID" id="parentHeadID" class="form-control form-control-sm">
                                                                    <option value="">Select Option</option>
                                                                    <option ng-repeat="option in salaryHeadList" ng-selected="SalaryRule.parentHeadID == option.salaryHeadID" value="{{option.salaryHeadID}}">{{option.salaryHeadID}}</option>
                                                                </select>
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


                    </form>
                </div>

            </div>
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
</div>

<style type="text/css">
    .customUi-checkbox label span.label-helper, .customUi-radio label span.label-helper, .customUi-switchToggle label span.label-helper {
        margin-left: 0;
    }
</style>