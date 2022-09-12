<div class="row" ng-controller="attendanceEntryController">
    <div class="col-lg-3 body-aside-table">
        <div class="portlet-box portlet-gutter ui-buttons-col">
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
        <form class="form-horizontal form-interviewcard" name="AttendanceEntryForm" ng-submit="saveForm(AttendanceEntryForm.$valid,attendanceEntryInfo)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-columnn">
                                <h3>Manual Attendence Entry</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="ui-buttons-col">
                                        <div class="portlet-body no-padding">
                                            <div class="row no-margin">
                                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                                    <div class="form-group">
                                                        <label class="control-label">Employee Photo</label>
                                                        <div class="employee-photo pull-right">
                                                            <img width="145" height="183" src="{{profilePicture}}">
                                                        </div>
                                                    </div>
                                                </div>
                                                <#--First column end-->
                                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="form-group">
                                                                <label for="fname" class="control-label">First Name</label>
                                                                <input disabled type="text" class="form-control form-control-sm" id="fname" ng-model="employeeInfo.firstName" />
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="lname" class="control-label">Last Name</label>
                                                                <input disabled type="text" class="form-control form-control-sm" id="lname" ng-model="employeeInfo.lastName" />
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="punchcard" class="control-label">Punch Card No</label>
                                                                <input disabled type="text" class="form-control form-control-sm" id="punchcard" ng-model="employeeInfo.punchCardNo" />
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="department" class="control-label">Designation</label>
                                                                <input disabled type="text" class="form-control form-control-sm" id="department" ng-model="employeeInfo.designation">
                                                            </div>
                                                        </div>


                                                        <div class="col-lg-6">
                                                            <div class="form-group">
                                                                <label for="mname" class="control-label">Middle Name</label>
                                                                <input disabled type="text" class="form-control form-control-sm" id="mname" ng-model="employeeInfo.middleName" />
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="nickname" class="control-label">Nick Name</label>
                                                                <input disabled type="text" class="form-control form-control-sm" id="nickname" ng-model="employeeInfo.nickName">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="department" class="control-label">Department</label>
                                                                <input disabled type="text" class="form-control form-control-sm" id="department" ng-model="employeeInfo.department">
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <hr>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="form-group">
                                                                <label for="shiftid" class="control-label">Shift ID</label>
                                                                <input disabled type="text" class="form-control form-control-sm" id="shiftid" ng-model="employeeInfo.shiftID">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="intime" class="control-label">In Time</label>
                                                                <input disabled type="text" class="form-control form-control-sm" id="intime" ng-model="employeeInfo.checkInTime" />
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="tiffinintime" class="control-label">Tiffin In Time</label>
                                                                <input disabled type="text" class="form-control form-control-sm" id="tiffinintime" ng-model="employeeInfo.tiffinInTime" />
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="form-group">
                                                                <label for="shifttype" class="control-label">Shift Type</label>
                                                                <input disabled type="text" class="form-control form-control-sm" id="shifttype" ng-model="employeeInfo.shiftType">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="outtime" class="control-label">Out Time</label>
                                                                <input disabled type="text" class="form-control form-control-sm" id="outtime" ng-model="employeeInfo.checkOutTime" />
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="tiffinouttime" class="control-label">Tiffin Out Time</label>
                                                                <input disabled type="text" class="form-control form-control-sm" id="tiffinouttime" ng-model="employeeInfo.tiffinOutTime" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <h6>Entry Information</h6>
                                                            <hr>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <div class="form-group required">
                                                                <label for="entrydate" class="control-label">Entry Date</label>
                                                                <input type="date" class="form-control form-control-sm" id="entrydate"
                                                                       ng-model="attendanceEntryInfo.workDate" required>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <!-- Check in -->
                                                            <div class="row">
                                                                <div class="col-lg-5">
                                                                    <div class="customUi-checkbox checkboxUi-primary pb-2" style="padding-bottom:0px !important;">
                                                                        <input id="cintime" name="cintime" type="checkbox" class="iCheck minimal"
                                                                               ng-model="attendanceEntryInfo.isCheckInTime" ng-click="attendanceEntryInputToggle()" />
                                                                        <label for="cintime" style="margin-bottom:0px !important;">
                                                                            <span class="label-checkbox"></span>
                                                                            <span class="label-helper">In Time</span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-7">
                                                                    <div class="form-group" style="margin-bottom:0px !important;">
                                                                        <input type="time" class="form-control form-control-sm" id="intime"
                                                                               ng-model="attendanceEntryInfo.checkInTime" ng-disabled="isCheckInTimeDisabled" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label for="entrydate" class="control-label" style="margin-bottom:0px;">Notes</label>
                                                                        <textarea id="attendanceComment" rows="1" ng-model="attendanceEntryInfo.checkInRemarks"
                                                                                  class="form-control form-control-sm" ng-disabled="isCheckInTimeDisabled"></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- Lunch Out -->
                                                            <div class="row">
                                                                <div class="col-lg-5">
                                                                    <div class="customUi-checkbox checkboxUi-primary pb-2">
                                                                        <input id="ctiffinouttime" name="ctiffinouttime" type="checkbox" class="minimal"
                                                                               ng-model="attendanceEntryInfo.isLunchOutTime" ng-click="attendanceEntryInputToggle()" />
                                                                        <label for="ctiffinouttime">
                                                                            <span class="label-checkbox"></span>
                                                                            <span class="label-helper">LOut Time</span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-7">
                                                                    <div class="form-group">
                                                                        <input type="time" class="form-control form-control-sm" id="tiffinouttime"
                                                                               ng-model="attendanceEntryInfo.lunchOutTime" ng-disabled="isLunchOutTimeDisabled" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label for="entrydate" class="control-label" style="margin-bottom:0px;">Notes</label>
                                                                        <textarea id="attendanceComment" rows="1" ng-model="attendanceEntryInfo.lunchOutRemarks"
                                                                                  class="form-control form-control-sm" ng-disabled="isLunchOutTimeDisabled"></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- Lunch In -->
                                                            <div class="row">
                                                                <div class="col-lg-5">
                                                                    <div class="customUi-checkbox checkboxUi-primary pb-2">
                                                                        <input id="ctiffinintime" name="ctiffinintime" type="checkbox" class="minimal"
                                                                               ng-model="attendanceEntryInfo.isLunchInTime" ng-click="attendanceEntryInputToggle()" />
                                                                        <label for="ctiffinintime">
                                                                            <span class="label-checkbox"></span>
                                                                            <span class="label-helper">LIn Time</span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-7">
                                                                    <div class="form-group">
                                                                        <input type="time" class="form-control form-control-sm" id="tiffinintime"
                                                                               ng-model="attendanceEntryInfo.lunchInTime" ng-disabled="isLunchInTimeDisabled" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label for="entrydate" class="control-label" style="margin-bottom:0px;">Notes</label>
                                                                        <textarea id="attendanceComment" rows="1" ng-model="attendanceEntryInfo.lunchInRemarks"
                                                                                  class="form-control form-control-sm" ng-disabled="isLunchInTimeDisabled"></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- Check Out -->
                                                            <div class="row">
                                                                <div class="col-lg-5">
                                                                    <div class="customUi-checkbox checkboxUi-primary pb-2">
                                                                        <input id="couttime" name="couttime" type="checkbox" class="minimal"
                                                                               ng-model="attendanceEntryInfo.isCheckOutTime" ng-click="attendanceEntryInputToggle()" />
                                                                        <label for="couttime">
                                                                            <span class="label-checkbox"></span>
                                                                            <span class="label-helper">Out Time</span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-7">
                                                                    <div class="form-group">
                                                                        <input type="time" class="form-control form-control-sm" id="outtime"
                                                                               ng-model="attendanceEntryInfo.checkOutTime" ng-disabled="isCheckOutTimeDisabled" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label for="entrydate" class="control-label" style="margin-bottom:0px;">Notes</label>
                                                                        <textarea id="attendanceComment" rows="1" ng-model="attendanceEntryInfo.checkOutRemarks"
                                                                                  class="form-control form-control-sm" ng-disabled="isCheckOutTimeDisabled"></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="form-group">
                                                                <div class="text-right">
                                                                    <button type="submit" class="btn btn-gradient-success">Save</button>
                                                                    <button type="button" class="btn btn-gradient-danger" ng-click="interviewCardFormReset()">Cancel</button>
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
                </div>
            </div>
        </form>
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