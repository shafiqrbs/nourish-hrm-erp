<div ng-controller="ManualShiftAssignmentController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="ManualShiftInfoForm" ng-submit="saveManualShiftForm(ManualShiftInfoForm.$valid,manualShift)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Manual Shift Assignment</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-9 b-r pt-20 pb-20 no-border-lg-down">
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
                                                        <div class="col-lg-8 no-border-lg-down">
                                                            <div class="form-group mb-0">
                                                                <div class="customUi-checkbox checkboxUi-primary  pb-2" style="margin:10px 0px -10px 8px;">
                                                                    <input id="checked" type="checkbox" name="agree"
                                                                           ng-model="manualShift.allEmployeeCode">
                                                                    <label for="checked">
                                                                        <span class="label-checkbox"></span>
                                                                        <span class="label-helper">Select All</span>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4 no-border-lg-down">
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
                                                    <div class="row no-margin">
                                                        <div class="col-lg-12 b-r pt-20 pb-20 no-border-lg-down" style="padding-top: 0 !important;">
                                                            <kendo-grid style="height:300px;" options="EmployeeAllDataOptions"></kendo-grid>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <#--Second column end-->
                                <div class="col-lg-3 pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding">
                                        <div class="flex d-flex flex-column">
                                            <h3>Type of Shift</h3>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input  id="a1" type="radio"  value="Fixed Shift" name="Type Shift"  checked=""
                                                    ng-model="manualShift.shift">
                                            <label for="a1">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">Fixed Shift</span>
                                            </label>
                                        </div>
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input id="a2" type="radio" value="Roster Shift" name="Type Shift"
                                                   ng-model="manualShift.shift">
                                            <label for="a2">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">Roster Shift</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding">
                                        <div class="flex d-flex flex-column">
                                            <h3>Type Of Information Transfer</h3>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input id="b1" type="radio" value="Daily" name="Type Information Transfer"  checked=""
                                                   ng-model="manualShift.shiftTransferType" ng-change="changeShiftTransferType(manualShift.shiftTransferType)">
                                            <label for="b1">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">Daily</span>
                                            </label>
                                        </div>
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input id="b2" type="radio" value="Temporary" name="Type Information Transfer"
                                                   ng-model="manualShift.shiftTransferType" ng-change="changeShiftTransferType(manualShift.shiftTransferType)">
                                            <label for="b2">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">Temporary</span>
                                            </label>
                                        </div>
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input id="b3" type="radio" value="Permanent" name="Type Information Transfer"
                                                   ng-model="manualShift.shiftTransferType" ng-change="changeShiftTransferType(manualShift.shiftTransferType)">
                                            <label for="b3">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">Permanent</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group date">
                                        <label for="currentDate" class="control-label">Current Date</label>
                                        <input type="date" class="form-control form-control-sm" id="currentDate" ng-model="manualShift.currentDate"/>
                                    </div>
                                    <div class="form-group date" ng-hide="isDaily">
                                        <label for="toDate" class="control-label">To Date</label>
                                        <input type="text" placeholder="Click Me"  class="form-control datetimepicker-input form-control-sm" id="toDate"
                                               data-toggle="datetimepicker" data-target="#toDate" ng-model="manualShift.toDate"/>
                                    </div>
                                    <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding">
                                        <div class="flex d-flex flex-column">
                                            <h3>Shift Information</h3>
                                        </div>
                                    </div>
                                    <div class="form-group"  ng-show="manualShift.shift=='Fixed Shift'">
                                        <label for="selectShift" class="control-label">Select Shift</label><br/>
                                        <select id="selectShift" class="form-control form-control-sm" ng-model="manualShift.shiftID ">
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in shiftDDL" ng-selected="manualShift.shiftID == option.shiftID"
                                                    value="{{option.shiftID}}">{{option.shiftID}}</option>
                                        </select>
                                    </div>
                                    <div class="form-group"  ng-hide="manualShift.shift=='Fixed Shift'">
                                        <label for="shiftRoster" class="control-label">Select Shift Rule</label>
                                        <select id="shiftRoster" class="form-control form-control-sm" ng-model="manualShift.shiftRule">
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in shiftRules" ng-selected="manualShift.shiftRule == option.shiftRuleCode" value="{{option.shiftRuleCode}}">{{option.shiftRuleCode}}</option>
                                        </select>
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

<script type="text/javascript">
    $('#currentDate').datetimepicker({
        format: 'YYYY-MM-DD'
    });

    $('#toDate').datetimepicker({
        format: 'YYYY-MM-DD'
    })

</script>