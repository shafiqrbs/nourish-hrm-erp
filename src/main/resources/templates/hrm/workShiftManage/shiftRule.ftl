<div ng-controller="ShiftRuleController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="ShiftRuleForm" ng-submit="saveForm(ShiftRuleForm.$valid,shiftRule)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Shift Rule</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-5 pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding">
                                            <div class="flex d-flex flex-column">
                                                <h3 class="pl-15">Shift Rule Information</h3>
                                            </div>
                                        </div>
                                        <div class="form-group select-dynamic-add pt-15 pb-15 pl-15 pr-15">
                                            <label for="shiftRuleCode" class="control-label">Shift Rule Code</label><br/>
                                            <div ng-hide="IsAddNewShiftRule">
                                                <select id="shiftRuleCode" ng-hide="IsAddNewShiftInput" class="form-control form-control-sm" ng-model="shiftRule.shiftRuleCode" ng-change="shiftRuleChange(shiftRule.shiftRuleCode)" required>
                                                    <option value="">Select Option</option>
                                                    <option ng-repeat="option in shiftRuleDDL" ng-selected="shiftRule.shiftRuleCode == option.shiftRuleCode" value="{{option.shiftRuleCode}}">{{option.shiftRuleCode}}</option>
                                                </select>
                                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new" ng-click="newShiftRuleToggleBtn('DDL')">
                                                    <i class="fa fa-plus"></i>
                                                </a>
                                            </div>
                                            <div ng-show="IsAddNewShiftRule">
                                                <input type="text" class="form-control form-control-sm" ng-model="shiftRule.shiftRuleCode" style="width:88%;display:inline-block;" />
                                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new" ng-click="newShiftRuleToggleBtn('New')">
                                                    <i class="fa fa-chevron-circle-down"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="form-group pt-15 pb-15 pl-15 pr-15">
                                            <label for="descriptions" class="control-label">Descriptions</label>
                                            <textarea ng-model="shiftRule.descriptions" class="form-control form-control-sm" id="descriptions" placeholder="Security(Day)" rows="3"></textarea>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                                    <div class="flex d-flex flex-column">
                                                        <h3>Shift Rostering Detail</h3>
                                                    </div>
                                                </div>
                                                <div class="portlet-body no-padding">
                                                    <div class="row no-margin">
                                                        <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                                            <kendo-sortable options="sortableOptions">
                                                                <kendo-grid options="shiftRuleRosterDetailGridOptions"></kendo-grid>
                                                            </kendo-sortable>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                            <input id="checked" type="checkbox" name="agree" checked="">
                                            <label for="checked">
                                                <span class="label-checkbox"></span>
                                                <span class="label-helper">Make it default shift rule</span>
                                            </label>
                                        </div>
                                    </div>

                                </div>
                                <#--First column end-->
                                <div class="col-lg-7 pt-20 pb-20 no-border-lg-down">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                                    <div class="flex d-flex flex-column">
                                                        <h3>Rule(s)</h3>
                                                    </div>
                                                </div>
                                                <div class="portlet-body no-padding">
                                                    <div class="row no-margin">
                                                        <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                                            <kendo-grid options="shiftRuleDetailGridOptions"></kendo-grid>
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
