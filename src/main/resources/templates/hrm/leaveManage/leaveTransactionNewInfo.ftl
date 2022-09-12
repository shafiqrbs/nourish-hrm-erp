<div ng-controller="leaveTransactionInfoManageController">
    <div class="">
        <form class="form-horizontal form-general" name="EmpLeaveTransactionInfoForm" ng-submit="saveForm(EmpLeaveTransactionInfoForm.$valid,leaveTransactionInfo)">
            <div class="row">
                <div class="col-lg-3 body-aside-table">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <div class="form-group input-dynamic-add mb-0">
                                    <input type="text" ng-enter="EmployeeGridFilter(pSearchCriteria)" ng-model="pSearchCriteria"
                                           class="form-control form-control-sm" id="employeeCodeSearchFilter"
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
                                            <img width="145" height="183" src="{{profilePicture}}">
                                        </div>
                                    </div>
                                </div>
                                <#--First column end-->
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label for="salutation" class="control-label">Salutation</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.salutation">
                                            </div>
                                            <div class="form-group">
                                                <label for="mname" class="control-label">Middle Name</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.middleName">
                                            </div>
                                            <div class="form-group">
                                                <label for="nickname" class="control-label">Nick Name</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.nickName">
                                            </div>
                                            <div class="form-group">
                                                <label for="punchcard" class="control-label">Department</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.department">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label for="fname" class="control-label">First Name</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.firstName">
                                            </div>
                                            <div class="form-group">
                                                <label for="lname" class="control-label">Last Name</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.lastName">
                                            </div>
                                            <div class="form-group">
                                                <label for="punchcard" class="control-label">Punch Card No</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.punchCardNo">
                                            </div>
                                            <div class="form-group">
                                                <label for="punchcard" class="control-label">Designation</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.designation">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label for="nid" class="control-label">NID</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.nid">
                                            </div>
                                            <div class="form-group date">
                                                <label for="dateofconfirmation" class="control-label">DOC</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.dateOfConfirmation">
                                            </div>
                                            <div class="form-group">
                                                <label for="status" class="control-label">Status</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.employeeStatus">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group date">
                                                <label for="dateofjoining" class="control-label">Date of Joining</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.dateOfJoin">
                                            </div>
                                            <div class="form-group">
                                                <label for="nationality" class="control-label">Nationality</label>
                                                <input disabled type="text" class="form-control form-control-sm" placeholder="Nationality" ng-model="employeeInfo.nationality">
                                            </div>
                                        </div>
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
                                <div class="col-lg-3 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label for="leaveType" class="control-label">Leave Type</label>
                                                <select ng-model="leaveTransactionInfo.leavePolicyID" id="leaveType" class="form-control form-control-sm" required>
                                                    <option value="">Select Option</option>
                                                    <option ng-repeat="option in allLeaveTypeDDL" ng-selected="leaveTransactionInfo.leavePolicyID == option.leavePolicyID" value="{{option.leavePolicyID}}">{{option.leaveType}}</option>
                                                </select>
                                            </div>
                                            <div class="form-group date">
                                                <label for="leaveToDate" class="control-label">To Date</label>
                                                <input type="date" class="form-control form-control-sm" id="leaveToDate" ng-model="leaveTransactionInfo.toDate" autocomplete="off" />
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group date">
                                                <label for="leaveFromDate" class="control-label">From Date</label>
                                                <input type="date" class="form-control form-control-sm" id="leaveFromDate" ng-model="leaveTransactionInfo.fromDate" autocomplete="off" />
                                            </div>
                                            <div class="form-group">
                                                <label for="totalDays" class="control-label">Total Days</label>
                                                <input type="number" class="form-control form-control-sm" id="totalDays" placeholder="" ng-model="leaveTransactionInfo.leaveDays">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <#--First column end-->
                                <div class="col-lg-3 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label for="leaveReason" class="control-label">Leave Reason</label>
                                                <textarea class="form-control form-control-sm" ng-model="leaveTransactionInfo.leaveReason" style="height:50px;"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label for="leaveAddress" class="control-label">Address while on Leave</label>
                                                <input type="text" class="form-control form-control-sm" id="leaveAddress" placeholder="" ng-model="leaveTransactionInfo.leaveAvailPlace">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                    <input id="checked1" ng-model="leaveTransactionInfo.isPostApproved" type="checkbox" name="Approved" value="Post Approved">
                                                    <label for="checked1">
                                                        <span class="label-checkbox"></span>
                                                        <span class="label-helper">Post Approved</span>
                                                    </label>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                    <input id="checked2" ng-model="leaveTransactionInfo.isPreApproved" type="checkbox" name="Approved" value="Pre Approved">
                                                    <label for="checked2">
                                                        <span class="label-checkbox"></span>
                                                        <span class="label-helper">Pre Approved</span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>



                                    <div class="row mb-30">
                                        <div class="col-lg-12">
                                            <div class="box-footer clearfix">
                                                <div class="text-right">
                                                    <button type="submit" class="btn btn-gradient-info">Apply</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <#--Second column end-->
                                <div class="col-lg-6 pt-20 pb-20 no-border-lg-down">
                                    <kendo-grid options="EmployeeLeaveAppliedDataOptions" style="height:200px;"></kendo-grid>
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
                                <h3>Leave Allocation Information</h3>
                                <span class="portlet-subtitle">All Leave Allocation Information Record</span>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                    <kendo-grid options="EmployeeLeaveAllocationGridOptions" style="height:200px;"></kendo-grid>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--
            <div class="row mb-30">
                <div class="col-lg-12">
                    <div class="box-footer clearfix">
                        <div class="text-right">
                            <button type="submit" class="btn btn-gradient-success">Save</button>
                            <button type="reset" class="btn btn-gradient-danger">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
            -->
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

    .k-filter-row th, .k-grid-header th.k-header {
        padding: 0em 0 !important;
        text-align: center !important;
    }
</style>
