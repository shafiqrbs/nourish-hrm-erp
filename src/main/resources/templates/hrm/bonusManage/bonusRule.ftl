<div ng-controller="bonusRulesController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="BonusRuleForm" ng-submit="saveForm(BonusRuleForm.$valid,bonusRulesInfo)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-columnn">
                                <h3>Bonus Rule</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b" style="min-height:25px;margin-bottom: 12px;">
                                            <div class="flex d-flex flex-column">
                                                <h3 class="pl-15">Policy Definition</h3>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="form-group select-dynamic-add">
                                                        <label for="availFrom" class="control-label">Bonus Code</label>
                                                        <div ng-hide="IsAddNewBonusRuleInput">
                                                            <select ng-model="bonusRulesInfo.bonusCode" ng-change="getBonusRuleDetailsByCode(bonusRulesInfo.bonusCode)" id="bonusRuleCode" class="form-control form-control-sm form-control-custom" required>
                                                                <option value="">Select Option</option>
                                                                <option ng-repeat="option in bonusRulesList" ng-selected="bonusRulesInfo.bonusCode == option.bonusRuleCode" value="{{option.bonusRuleCode}}">{{option.bonusRuleCode}}</option>
                                                            </select>
                                                            <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new" ng-show="IsAddNewBonusRule" ng-click="newBonusRuleToggleBtn('DDL')"><i class="fa fa-plus"></i></a>
                                                        </div>
                                                        <div ng-show="IsAddNewBonusRuleInput">
                                                            <input type="text" ng-model="bonusRulesInfo.bonusCode" class="form-control form-control-sm form-control-custom" />
                                                            <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new" ng-hide="IsAddNewBonusRule" ng-click="newBonusRuleToggleBtn('New')"><i class="fa fa-chevron-circle-down"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="availFrom" class="control-label">Avail From</label>
                                                        <select id="availFrom" class="form-control form-control-sm" ng-model="bonusRulesInfo.availFrom">
                                                            <option value="">Select Option</option>
                                                            <option value="DOJ">DOJ</option>
                                                            <option value="DOC">DOC</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group" style="margin-bottom:0px;">
                                                        <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                            <input id="c-checkboxnid" type="checkbox" ng-model="bonusRulesInfo.active">
                                                            <label for="c-checkboxnid">
                                                                <span class="label-checkbox"></span>
                                                                <span class="label-helper">Is Active Policy</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="form-group date">
                                                        <label for="effectiveDate" class="control-label">Effective Date</label>
                                                        <input id="datetimepicker_mask" ng-model="bonusRulesInfo.effectiveDate" placeholder="" type="text" class="form-control form-control-sm">
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <label for="description" class="control-label">Description</label>
                                                        <textarea class="form-control form-control-sm" id="description" ng-model="bonusRulesInfo.description" style="height: 141px;"></textarea>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="DayAfter" class="control-label">Day After</label>
                                                        <input type="text" class="form-control form-control-sm" id="DayAfter" ng-model="bonusRulesInfo.calculationAfter">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>




                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                            <div class="flex d-flex flex-column">
                                                <h3>Approved Information</h3>
                                            </div>
                                        </div>
                                        <div class="portlet-body no-padding" style="min-height:200px">
                                            <div class="row no-margin">
                                                <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                                    <kendo-grid options="bonusRulesApprovedGridOptions" style="height:250px;"></kendo-grid>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <#--First column end-->
                                <div class="col-lg-8 pt-20 pb-20 no-border-lg-down">
                                    <div class="row">
                                        <div  class="col-lg-12 pb-20 no-border-lg-down">
                                            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                                <div class="portlet-header flex-row flex d-flex align-items-center b-b" style="min-height:25px;margin-bottom: 8px;">
                                                    <div class="flex d-flex flex-column">
                                                        <h3 class="pl-15">Payment Policy</h3>
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="form-group">
                                                                <label for="staffCategory" class="control-label">Staff Category</label>
                                                                <select id="staffCategory" class="form-control form-control-sm"
                                                                        ng-model="bonusRulesInfo.staffCategory">
                                                                    <option value="">Select Option</option>
                                                                    <option ng-repeat="option in staffCategories"
                                                                            ng-selected="employeeOfficialInfo.staffCategory == option.name"
                                                                            value="{{option.name}}">{{option.name}}
                                                                    </option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-3">
                                                            <div class="form-group">
                                                                <label for="MaxServiceLength" class="control-label">Max.Service Length</label>
                                                                <input type="number" class="form-control form-control-sm" id="MaxServiceLength" ng-model="bonusRulesInfo.minServiceLen">
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-3">
                                                            <div class="form-group">
                                                                <label for="MinServiceLength" class="control-label">Min.Service Length</label>
                                                                <input type="number" class="form-control form-control-sm" id="MinServiceLength" ng-model="bonusRulesInfo.maxServiceLen">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="form-group" style="margin-bottom:0px;">
                                                                <div class="customUi-radio radioUi-primary  pb-2">
                                                                    <input id="a1" type="radio" value="F" name="fixedOrPercentage" ng-model="bonusRulesInfo.sCriteria" ng-click="fixedOrPercentage('F')">
                                                                    <label for="a1">
                                                                        <span class="label-radio"></span>
                                                                        <span class="label-helper">Fixed</span>
                                                                    </label>
                                                                </div>
                                                                <div class="customUi-radio radioUi-primary  pb-2">
                                                                    <input id="a2" type="radio" value="%" name="fixedOrPercentage" ng-model="bonusRulesInfo.sCriteria" checked="" ng-click="fixedOrPercentage('P')">
                                                                    <label for="a2">
                                                                        <span class="label-radio"></span>
                                                                        <span class="label-helper">Percentage</span>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row" ng-show="IsFixed">
                                                        <div class="col-lg-3">
                                                            <div class="form-group">
                                                                <label for="Amount" class="control-label">Amount</label>
                                                                <input type="text" class="form-control form-control-sm" id="Amount" ng-model="bonusRulesInfo.amount">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row" ng-show="IsPercentage">
                                                        <div class="col-lg-3">
                                                            <div class="form-group">
                                                                <label for="Amount" class="control-label">Amount(%)</label>
                                                                <input type="text" class="form-control form-control-sm" id="Amount" placeholder="Amount(%)" ng-model="bonusRulesInfo.amount">
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-3">
                                                            <div class="form-group">
                                                                <label for="salaryHead" class="control-label">Salary Head</label>
                                                                <select ng-model="bonusRulesInfo.salaryHeadID" id="salaryHeadCode" ng-disabled="IsSalaryHeadDisabled" class="form-control form-control-sm">
                                                                    <option value="">Select Option</option>
                                                                    <option ng-repeat="option in salaryHeadList" ng-selected="SalaryRule.salaryHeadID == option.salaryHeadID" value="{{option.salaryHeadID}}">{{option.salaryHeadID}}</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <!--
                                    <div class="row mb-0">
                                        <div class="col-lg-12">
                                            <div class="box-footer clearfix">
                                                <div class="text-right mb-20">
                                                    <button type="submit" class="btn btn-gradient-info">Define</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    -->
                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                            <div class="flex d-flex flex-column">
                                                <h3>Define Policy</h3>
                                            </div>
                                        </div>
                                        <div class="portlet-body no-padding" style="min-height:100px">
                                            <div class="row no-margin">
                                                <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                                    <kendo-grid options="bonusRulesGridOptions" style="height:250px;"></kendo-grid>
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
