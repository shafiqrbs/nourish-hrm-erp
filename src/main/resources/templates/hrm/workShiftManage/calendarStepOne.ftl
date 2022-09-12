<form class="form-horizontal form-general" name="CalendarStepOne">
    <div class="row">
        <div class="col-lg-12">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                    <div class="flex d-flex flex-column">
                        <h3>Calendar Information Setting</h3>
                    </div>
                    <div class="text-right">
                        <button type="button" ng-click="openShiftRosterTab('stepTwoCalendar')" class="btn btn-gradient-info">Next</button>
                    </div>
                </div>
                <div class="portlet-body no-padding">
                    <div class="row no-margin mb-15">
                        <div class="col-lg-3 pr-0 pt-20 pb-20 no-border-lg-down">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="portlet-box portlet-gutter ui-buttons-col">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                            <div class="flex d-flex flex-column">
                                                <h3>Date Setting</h3>
                                            </div>
                                        </div>
                                        <div class="portlet-body no-padding" style="min-height:720px">
                                            <div class="col-lg-12">
                                                <div class="form-group date">
                                                    <label for="fromDate" class="control-label">From Date</label>
                                                    <input type="date" class="form-control form-control-sm" id="fromDate" ng-model="fromDate"/>
                                                </div>
                                                <div class="form-group date">
                                                    <label for="toDate" class="control-label">To Date</label>
                                                    <input type="date" class="form-control form-control-sm" id="toDate" ng-model="toDate" ng-blur="setHolidayGridData()"/>
                                                </div>
                                                <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                                    <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                                        <div class="flex d-flex flex-column">
                                                            <h3>Select your date(S)</h3>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body no-padding" style="min-height:300px">
                                                        <div class="row no-margin">
                                                            <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                                                <kendo-grid options="HolidayDateSelectionGridOptions" style="height:300px;"></kendo-grid>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group mb-0"><br/>
                                                    <div class="customUi-radio radioUi-primary  pb-2">
                                                        <input id="b1" type="radio" ng-model="shiftNature" value="Fixed" ng-change="setShiftNature('Fixed')" name="shiftNature" />
                                                        <label for="b1">
                                                            <span class="label-radio"></span>
                                                            <span class="label-helper">Fixed Shift</span>
                                                        </label>
                                                    </div>
                                                    <div class="customUi-radio radioUi-primary  pb-2">
                                                        <input id="b2" type="radio" ng-model="shiftNature" value="Rostering" ng-change="setShiftNature('Rostering')" name="shiftNature" />
                                                        <label for="b2">
                                                            <span class="label-radio"></span>
                                                            <span class="label-helper">Roster Shift</span>
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="form-group mb-15"><br/>
                                                    <div class="form-group select-dynamic-add">
                                                        <label for="dayType" class="control-label">Day Type</label>
                                                        <select id="dayType" class="form-control form-control-sm" ng-model="dayType">
                                                            <option value="W">Weekend</option>
                                                            <option value="H">Holiday</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <#--First column end-->
                        <div class="col-lg-9 pt-20 pb-20 no-border-lg-down">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="portlet-box portlet-gutter ui-buttons-col">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                            <div class="flex d-flex flex-column">
                                                <h3>Shift and Day Status Setting</h3>
                                            </div>
                                        </div>
                                        <div class="portlet-body no-padding" style="min-height:735px">
                                            <div class="row no-margin">
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <div class="customUi-radio radioUi-primary  pb-2">
                                                            <input id="d1" type="radio" value="All Shift"  name="ShiftSelector" ng-click="openShiftSelection('All Shift')" checked="">
                                                            <label for="d1">
                                                                <span class="label-radio"></span>
                                                                <span class="label-helper">All Shift</span>
                                                            </label>
                                                        </div>
                                                        <div class="customUi-radio radioUi-primary  pb-2">
                                                            <input id="d2" type="radio" name="ShiftSelector" value="Select From List" ng-click="openShiftSelection('Select From List')" />
                                                            <label for="d2">
                                                                <span class="label-radio"></span>
                                                                <span class="label-helper">Select From List</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="remarks" class="control-label">Remarks</label>
                                                        <input type="text" ng-model="remarks" class="form-control form-control-sm" id="remarks" placeholder="Remarks">
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">

                                                </div>
                                            </div>
                                            <div class="row no-margin" ng-show="isShowShiftSelectGrid">
                                                <div class="col-lg-12">
                                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                                            <div class="flex d-flex flex-column">
                                                                <h3>Shift Information</h3>
                                                            </div>
                                                        </div>
                                                        <div class="portlet-body no-padding" style="min-height:460px">
                                                            <div class="row no-margin">
                                                                <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                                                    <kendo-grid options="shiftPlanGridOptions"></kendo-grid>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <#--<div class="form-group">
                                                        <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                            <input id="checked2" type="checkbox" name="agree">
                                                            <label for="checked2">
                                                                <span class="label-checkbox"></span>
                                                                <span class="label-helper">Unchecked shift(S) information will be deleted</span>
                                                            </label>
                                                        </div>
                                                    </div>-->
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


<script type="text/javascript">
    $('#fromDate').datetimepicker({
        format: 'YYYY-MM-DD'
    });

    $('#toDate').datetimepicker({
        format: 'YYYY-MM-DD'
    })

</script>

<div class="row mb-30 mt-30">
    <div class="col-lg-12">
        <div class="box-footer clearfix">
            <div class="text-right">
                <#--<button type="submit" class="btn btn-gradient-success">Save</button>-->
                <button type="button" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
            </div>
        </div>
    </div>
</div>