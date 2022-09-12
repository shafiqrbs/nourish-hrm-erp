<div ng-controller="ShiftPlanController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="ShiftPlanForm" ng-submit="saveForm(ShiftPlanForm.$valid,shiftPlan)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Shift Plan</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding">
                                            <div class="flex d-flex flex-column">
                                                <h3 class="pl-15">Shift Information</h3>
                                            </div>
                                        </div>
                                        <div class="row pt-15 pb-15 pl-15 pr-15">

                                            <div class="col-lg-6">
                                                <div class="form-group select-dynamic-add">
                                                    <label for="ShiftID" class="control-label">Shift ID</label><br/>
                                                    <div ng-hide="IsAddNewShiftInput">
                                                        <select id="ShiftID" ng-hide="IsAddNewShiftInput" class="form-control form-control-sm"  style="width:86%;display:inline-block;"
                                                                ng-model="shiftPlan.shiftID" ng-change="getShiftPlanInfo(shiftPlan.shiftID)" required>
                                                            <option value="">Select Option</option>
                                                            <option ng-repeat="option in shiftDDL" ng-selected="shiftPlan.shiftID == option.shiftID" value="{{option.shiftID}}">{{option.shiftID}}</option>
                                                        </select>
                                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new" ng-show="IsAddNewShiftPlan" ng-click="newShiftPlanToggleBtn('DDL')">
                                                            <i class="fa fa-plus"></i>
                                                        </a>
                                                    </div>
                                                    <div ng-show="IsAddNewShiftInput">
                                                        <input type="text" class="form-control form-control-sm" ng-model="shiftPlan.shiftID" style="width:86%;display:inline-block;" />
                                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new" ng-hide="IsAddNewShiftPlan" ng-click="newShiftPlanToggleBtn('New')">
                                                            <i class="fa fa-chevron-circle-down"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="alais" class="control-label">Alais</label>
                                                    <input type="text" ng-model="shiftPlan.alais" class="form-control form-control-sm" id="alais" placeholder="Alais">
                                                </div>
                                                <div class="form-group">
                                                    <div class="customUi-checkbox checkboxUi-primary mt-0 pb-2" style="margin-top:50px">
                                                        <input ng-model="shiftPlan.default" id="checked" type="checkbox" name="agree" checked="">
                                                        <label for="checked">
                                                            <span class="label-checkbox"></span>
                                                            <span class="label-helper">Default</span>
                                                        </label>
                                                    </div>

                                                </div>
                                                <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding">
                                                    <div class="flex d-flex flex-column">
                                                        <h3>OT Rounding</h3>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="roundFor" class="control-label">Round For</label>
                                                    <input type="text" ng-model="shiftPlan.roundFor" class="form-control form-control-sm" id="roundFor" placeholder="Round For">
                                                </div>
                                                <div class="form-group">
                                                    <label for="morningOTRoundFor" class="control-label">Morning OT Round For</label>
                                                    <input type="text" ng-model="shiftPlan.morningOTRoundFor" class="form-control form-control-sm" id="morningOTRoundFor" placeholder="Morning OT Round For">
                                                </div>
                                                <div class="form-group">
                                                    <div class="customUi-checkbox checkboxUi-primary mt-0 pb-2">
                                                        <input id="checked3" type="checkbox" ng-model="shiftPlan.ignoreMorningOTInHoliday" name="agree" checked="">
                                                        <label for="checked3">
                                                            <span class="label-checkbox"></span>
                                                            <span class="label-helper">Ignore Morning OT In Holiday</span>
                                                        </label>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group select-dynamic-add">
                                                    <label for="ShiftType" class="control-label">Shift Type</label>
                                                    <div ng-hide="IsAddNewShiftTypeInput">
                                                        <select ng-model="shiftPlan.shiftType" id="ShiftType" style="width:86%;display:inline-block;" class="form-control form-control-sm" required>
                                                            <option value="">Select Option</option>
                                                            <option ng-repeat="option in shiftTypeDDL" ng-selected="shiftPlan.shiftType == option.shiftType" value="{{option.shiftType}}">{{option.shiftType}}</option>
                                                        </select>
                                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new" ng-show="IsAddNewShiftType" ng-click="newShiftTypeToggleBtn('DDL')">
                                                            <i class="fa fa-plus"></i>
                                                        </a>
                                                    </div>
                                                    <div ng-show="IsAddNewShiftTypeInput">
                                                        <input type="text" ng-model="shiftPlan.shiftType" class="form-control form-control-sm" style="width:86%;display:inline-block;" />
                                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new" ng-hide="IsAddNewShiftType" ng-click="newShiftTypeToggleBtn('New')">
                                                            <i class="fa fa-chevron-circle-down"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="descriptions" class="control-label">Descriptions</label>
                                                    <textarea ng-model="shiftPlan.descriptions" class="form-control form-control-sm" id="descriptions" placeholder="Descriptions" rows="3"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                        <input ng-model="shiftPlan.active" id="checked1" type="checkbox" name="agree" checked="">
                                                        <label for="checked1">
                                                            <span class="label-checkbox"></span>
                                                            <span class="label-helper">Active</span>
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="roundAfter" class="control-label">Round After</label>
                                                    <input type="text" ng-model="shiftPlan.roundAfter" class="form-control form-control-sm" id="roundAfter" placeholder="Round After">
                                                </div>
                                                <div class="form-group">
                                                    <label for="morningOTRoundAfter" class="control-label">Morning OT Round After</label>
                                                    <input type="text" ng-model="shiftPlan.morningOTRoundAfter" class="form-control form-control-sm" id="morningOTRoundAfter" placeholder="Morning OT Round After">
                                                </div>
                                                <div class="form-group">
                                                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                        <input id="checked2" type="checkbox" ng-model="shiftPlan.ignoreMorningOTInWeekend" name="agree" checked="">
                                                        <label for="checked2">
                                                            <span class="label-checkbox"></span>
                                                            <span class="label-helper">Ignore Morning OT In Weekend</span>
                                                        </label>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>


                                </div>
                                <#--First column end-->
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding">
                                            <div class="flex d-flex flex-column">
                                                <h3 class="pl-15">In Out Information</h3>
                                            </div>
                                        </div>

                                        <div class="row pt-15 pb-15 pl-15 pr-15">
                                            <div class="col-lg-6 pt-20 pb-20 no-border-lg-down">
                                                <div class="row">
                                                    <div class="col-lg-6"></div>
                                                    <div class="col-lg-6"></div>
                                                </div>
                                                <div class="form-group time">
                                                    <label for="intime" class="control-label">In Time</label>
                                                    <input id="intime" type="time" ng-model="shiftPlan.inTime" class="form-control form-control-sm" />
                                                </div>
                                                <div class="form-group time">
                                                    <label for="inTimeStartMargin" class="control-label">In Time Start Margin</label>
                                                    <input id="inTimeStartMargin" type="time" ng-model="shiftPlan.inTimeStartMargin" class="form-control form-control-sm">
                                                </div>
                                                <div class="form-group time">
                                                    <label for="absentEndMargin" class="control-label">Absent End Margin</label>
                                                    <input id="absentEndMargin" type="time" ng-model="shiftPlan.absentEndMargin" class="form-control form-control-sm">
                                                </div>
                                            </div>
                                            <div class="col-lg-6 pt-20 pb-20 no-border-lg-down">
                                                <div class="form-group time">
                                                    <label for="outTime" class="control-label">Out Time</label>
                                                    <input id="outTime" type="time" ng-model="shiftPlan.outTime" class="form-control form-control-sm">
                                                </div>
                                                <div class="form-group time">
                                                    <label for="outTimeEndMargin" class="control-label">Out Time End Margin</label>
                                                    <input id="outTimeEndMargin" type="time" ng-model="shiftPlan.outTimeEndMargin" class="form-control form-control-sm">
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding">
                                            <div class="flex d-flex flex-column">
                                                <h3 class="pl-15">Break Information</h3>
                                            </div>
                                        </div>

                                        <div class="row pt-15 pb-15 pl-15 pr-15">
                                            <div class="col-lg-6 b-r pt-20 pb-20 no-border-lg-down">
                                                <div class="form-group time">
                                                    <label for="breakInTime" class="control-label">Break In Time</label>
                                                    <input id="breakInTime" type="time" ng-model="shiftPlan.breakInTime" class="form-control form-control-sm">
                                                </div>
                                                <div class="form-group time">
                                                    <label for="breakInEndMargin" class="control-label">Break In End Margin</label>
                                                    <input id="breakInEndMargin" type="time" ng-model="shiftPlan.breakInEndMargin" class="form-control form-control-sm">
                                                </div>
                                            </div>
                                            <div class="col-lg-6 pt-20 pb-20 no-border-lg-down">
                                                <div class="form-group time">
                                                    <label for="breakOutTime" class="control-label">Break Out Time</label>
                                                    <input id="breakOutTime" type="time" ng-model="shiftPlan.breakOutTime" class="form-control form-control-sm">
                                                </div>
                                                <div class="form-group time">
                                                    <label for="breakPeriod" class="control-label">Break Period</label>
                                                    <input id="breakPeriod" type="text" ng-model="shiftPlan.breakPeriod" class="form-control form-control-sm">
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>

                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding">
                                            <div class="flex d-flex flex-column">
                                                <h3 class="pl-15">Total Information</h3>
                                            </div>
                                        </div>

                                        <div class="row pt-15 pb-15 pl-15 pr-15">

                                            <div class="col-lg-6 pt-20 pb-20 no-border-lg-down">
                                                <div class="form-group time">
                                                    <label for="workingHour" class="control-label">Working Hour</label>
                                                    <input id="workingHour" type="number" ng-model="shiftPlan.workingHour" class="form-control form-control-sm">
                                                </div>

                                                <div class="form-group">
                                                    <label for="lateMargin" class="control-label">Late Margin</label>
                                                    <input type="number" ng-model="shiftPlan.lateMargin" class="form-control form-control-sm" id="lateMargin">
                                                </div>
                                                <div class="form-group">
                                                    <label for="earlyOutMargin" class="control-label">Early Out Margin</label>
                                                    <input type="number" ng-model="shiftPlan.earlyOutMargin" class="form-control form-control-sm" id="earlyOutMargin">
                                                </div>
                                                <div class="form-group">
                                                    <label for="earlyOutAbsentEndMargin" class="control-label">Early Out Absent End Margin</label>
                                                    <input type="number" ng-model="shiftPlan.earlyOutAbsentEndMargin" class="form-control form-control-sm" id="earlyOutAbsentEndMargin" placeholder="Early Out Absent End Margin">
                                                </div>
                                            </div>
                                            <div class="col-lg-6 pt-20 pb-20 no-border-lg-down">
                                                <div class="form-group">
                                                    <label for="specialLateMargin" class="control-label">Special Late Margin</label>
                                                    <input type="number" ng-model="shiftPlan.specialLateMargin" class="form-control form-control-sm" id="specialLateMargin">
                                                </div>
                                                <div class="form-group">
                                                    <select id="promotedposition" class="form-control form-control-sm" ng-model="employeeGeneralInfo.employment">
                                                        <option>Select Option</option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                        <input id="checked4" type="checkbox" ng-model="shiftPlan.processInSameDay" name="agree" checked="">
                                                        <label for="checked4">
                                                            <span class="label-checkbox"></span>
                                                            <span class="label-helper">Process Out Time within the same day .</span>
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="row mb-10">
                                                    <div class="col-lg-12">
                                                        <div class="box-footer clearfix">
                                                            <div class="text-right">
                                                                <button type="submit" class="btn btn-gradient-info">Overt Time Slab</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <input type="text" class="form-control form-control-sm" id="" placeholder="">
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
                    <button type="reset" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
                </div>
            </div>
        </div>
    </div>
</div>

<style type="text/css">
    .select-dynamic-add select {
        width: 87%;
        display: inline-block;
    }
</style>

<script type="text/javascript">
    $(function () {
        $('#intimepicker').datetimepicker({
            format: 'LT'
        });
    });
</script>
