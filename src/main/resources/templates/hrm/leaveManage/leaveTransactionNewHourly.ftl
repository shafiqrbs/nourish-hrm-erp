<div ng-controller="LeaveManagementController">
    <div class="">
        <form class="form-horizontal form-general" name="EmpQualificationInfoForm" ng-submit="saveQualificationForm(EmpQualificationInfoForm.$valid,employeePQualificationInfo)">
            <div class="row">
                <div class="col-lg-3 body-aside-table">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <div class="form-group input-dynamic-add mb-0">
                                    <input type="text" ng-model="employeeOfficialInfo.operationCode"
                                           class="form-control form-control-sm" id="operationCode"
                                           placeholder="Search With Employee Code">
                                    <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                        <i class="fa fa-search"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="body-aside-table-inside">
                                <div class="body-aside-table-wrap">
                                    <kendo-grid options="employeeSearchInformationGridOptions"></kendo-grid>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Personal Information</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label class="control-label">Employee Photo</label>
                                        <div class="employee-photo pull-right">
                                            <#--<img src="http://via.placeholder.com/232x232" ng-show="isDefaultImage"/>-->
                                            <#--<img ng-src="{{profilePicture}}" ng-show="isProfileImage"/>-->
                                                <img ng-src="http://via.placeholder.com/250x297" type="" width="250" height="297" src="http://via.placeholder.com/250x297">
                                                <img ng-src="http://via.placeholder.com/250x297" ng-show="isProfileImage" src="http://via.placeholder.com/250x297" class="ng-hide">
                                            <div class="image-overly btn-group">
                                                <a class="btn btn-gradient-light" href="javascript:void(0)"><i
                                                        class="fa fa-camera"></i></a>
                                                <a class="btn btn-gradient-light" href="javascript:void(0)"><i
                                                        class="fa fa-upload"></i></a>
                                                <a class="btn btn-gradient-light" href="javascript:void(0)"><i
                                                        class="fa fa-trash"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <#--First column end-->
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="salutation" class="control-label">Salutation</label>
                                        <input disabled type="text" class="form-control form-control-sm" id="salutation" placeholder="Salutation" ng-model="employeeGeneralInfo.nationalIDCardNo">
                                    </div>
                                    <div class="form-group">
                                        <label for="fname" class="control-label">First Name</label>
                                        <input disabled type="text" class="form-control form-control-sm" id="fname" placeholder="First Name" ng-model="employeeGeneralInfo.fname">
                                    </div>
                                    <div class="form-group">
                                        <label for="mname" class="control-label">Middle Name</label>
                                        <input disabled type="text" class="form-control form-control-sm" id="mname" placeholder="Middle Name" ng-model="employeeGeneralInfo.mname">
                                    </div>
                                    <div class="form-group">
                                        <label for="lname" class="control-label">Last Name</label>
                                        <input disabled type="text" class="form-control form-control-sm" id="lname" placeholder="Last Name" ng-model="employeeGeneralInfo.lname">
                                    </div>
                                    <div class="form-group">
                                        <label for="nickname" class="control-label">Nick Name</label>
                                        <input disabled type="text" class="form-control form-control-sm" id="nickname" placeholder="Nick Name" ng-model="employeeGeneralInfo.nick">
                                    </div>
                                    <div class="form-group">
                                        <label for="punchcard" class="control-label">Punch Card No</label>
                                        <input disabled type="text" class="form-control form-control-sm" id="punchcard" placeholder="Punch Card No" ng-model="employeeGeneralInfo.punchCardNo">
                                    </div>
                                </div>
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="nid" class="control-label">NID</label>
                                        <input disabled type="text" class="form-control form-control-sm" id="nid" placeholder="NID" ng-model="employeeGeneralInfo.nationalIDCardNo">
                                    </div>
                                    <div class="form-group date">
                                        <label for="dateofjoining" class="control-label">Date of Joining</label>
                                        <input id="datetimepicker_mask" placeholder="Click Me" type="text" class="form-control form-control-sm">
                                    </div>
                                    <div class="form-group date">
                                        <label for="dateofconfirmation" class="control-label">Date of Confirmation</label>
                                        <input id="datetimepicker_mask" placeholder="Click Me" type="text" class="form-control form-control-sm">
                                    </div>
                                    <div class="form-group">
                                        <label for="nationality" class="control-label">Nationality</label>
                                        <input disabled type="text" class="form-control form-control-sm" id="nationality" placeholder="Nationality" ng-model="employeeGeneralInfo.nationalIDCardNo">
                                    </div>
                                    <div class="form-group">
                                        <label for="status" class="control-label">Status</label>
                                        <input disabled type="text" class="form-control form-control-sm" id="status" placeholder="Status" ng-model="employeeGeneralInfo.nationalIDCardNo">
                                    </div>
                                    <div class="form-group">
                                        <label for="leaveRule" class="control-label">Leave Rule</label>
                                        <input disabled type="text" class="form-control form-control-sm" id="leaveRule" placeholder="Status" ng-model="employeeGeneralInfo.nationalIDCardNo">
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Leave Form</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group select-dynamic-add">
                                        <label for="leaveType" class="control-label">Leave Type</label>
                                        <select id="leaveType" class="form-control" ng-model="employeeGeneralInfo.employment">
                                            <option value="">Select Option</option>
                                        </select>
                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                    <div class="form-group date">
                                        <label for="leaveDate" class="control-label">Leave Date</label>
                                        <input id="datetimepicker_mask" placeholder="Click Me" type="text" class="form-control form-control-sm">
                                    </div>
                                    <div class="form-group date">
                                        <label for="fromHour" class="control-label">From Hour</label>
                                        <input id="datetimepicker_mask" placeholder="Click Me" type="text" class="form-control form-control-sm">
                                    </div>
                                    <div class="form-group date">
                                        <label for="toHour" class="control-label">To Hour</label>
                                        <input id="datetimepicker_mask" placeholder="Click Me" type="text" class="form-control form-control-sm">
                                    </div>
                                </div>
                                <#--First column end-->
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="leaveReason" class="control-label">Leave Reason</label>
                                        <input type="text" class="form-control form-control-sm" id="leaveReason" placeholder="" ng-model="employeeGeneralInfo.nationalIDCardNo">
                                    </div>
                                    <div class="form-group">
                                        <label for="availingPlace" class="control-label">Availing Place</label>
                                        <input type="text" class="form-control form-control-sm" id="availingPlace" placeholder="" ng-model="employeeGeneralInfo.nationalIDCardNo">
                                    </div>
                                    <div class="form-group">
                                        <label for="totalHours" class="control-label">Total Hours</label>
                                        <input type="text" class="form-control form-control-sm" id="totalHours" placeholder="" ng-model="employeeGeneralInfo.nationalIDCardNo">
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="action-btn-add-new">
                                                <div class="text-right">
                                                    <button type="submit" class="btn btn-gradient-info">Clear</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <#--Second column end-->
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                                    <div class="flex d-flex flex-column">
                                                        <h3>Leave Availed</h3>
                                                    </div>
                                                </div>
                                                <div class="portlet-body no-padding">
                                                    <div class="row no-margin">
                                                        <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                                            <kendo-grid options="LeaveProcessList"></kendo-grid>
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

        <div class="row">
            <div class="col-lg-12">
                <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                    <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                        <div class="flex d-flex flex-column">
                            <h3>Leave Allocation Information</h3>
                            <span class="portlet-subtitle">All Leave Allocation Information Record</span>
                        </div>
                    </div>
                    <div class="portlet-body no-padding">
                        <div class="row no-margin">
                            <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                <kendo-grid options="LeaveProcessList"></kendo-grid>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
