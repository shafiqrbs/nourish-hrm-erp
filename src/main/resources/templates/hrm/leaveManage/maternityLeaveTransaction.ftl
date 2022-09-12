<div ng-controller="maternityLeaveTransactionManageController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="MaternityLeaveTransactionForm" ng-submit="saveForm(MaternityLeaveTransactionForm.$valid,maternityLeaveTransaction)">
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
                                <h3>Maternity Leave Transaction Info</h3>
                                <span class="portlet-subtitle">All Maternity Leave Transaction Info Record For Specific Employee</span>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                    <kendo-grid options="EmployeeMaternityLeaveTransactionGridOptions" style="height:180px;"></kendo-grid>
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
                                <h3>Maternity Form</h3>
                            </div>
                            <div class="d-flex flex justify-content-end">
                                <div class="btn-group">
                                    <!--<a href="#" class="btn btn-gradient-success btn-icon-o">
                                        <i class="fa fa-plus"></i>
                                    </a> -->
                                </div>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-2 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group date">
                                        <label for="mleaveFromDate" class="control-label">From Date</label>
                                        <input type="text" class="form-control datetimepicker-input form-control-sm" id="mleaveFromDate" data-toggle="datetimepicker" data-target="#mleaveFromDate" ng-model="maternityLeaveTransaction.fromDate" placeholder="YYYY-MM-DD" autocomplete="off" />
                                    </div>
                                    <div class="form-group">
                                        <label for="totalDays" class="control-label">Total Days</label>
                                        <input type="number" class="form-control form-control-sm" id="totalDays" placeholder="" ng-model="maternityLeaveTransaction.totalLeaveDays">
                                    </div>
                                </div>
                                <#--First column end-->
                                    <div class="col-lg-2 b-r pt-20 pb-20 no-border-lg-down">
                                        <div class="form-group date">
                                            <label for="toDate" class="control-label">To Date</label>
                                            <input type="text" class="form-control datetimepicker-input form-control-sm" id="mleaveToDate" data-toggle="datetimepicker" data-target="#mleaveToDate" ng-model="maternityLeaveTransaction.toDate" placeholder="YYYY-MM-DD" autocomplete="off" />
                                        </div>
                                        <div class="form-group date">
                                            <label for="EDDDate" class="control-label">EDD Date</label>
                                            <input type="text" class="form-control datetimepicker-input form-control-sm" id="EDDDate" data-toggle="datetimepicker" data-target="#EDDDate" ng-model="maternityLeaveTransaction.edd" placeholder="YYYY-MM-DD" autocomplete="off" />
                                        </div>

                                    </div>
                                <#--Second column end-->
                                    <div class="col-lg-2 b-r pt-20 pb-20 no-border-lg-down">
                                        <div class="form-group">
                                            <label for="firstPaymentMOde" class="control-label">First Payment Mode</label>
                                            <input type="number" class="form-control form-control-sm" id="firstPaymentMOde" placeholder="Percentage" ng-model="maternityLeaveTransaction.firstPaymentPCT">
                                        </div>
                                        <div class="form-group date">
                                            <input type="text" class="form-control datetimepicker-input form-control-sm" id="firstPaymentMOdeDate" data-toggle="datetimepicker" data-target="#firstPaymentMOdeDate" ng-model="maternityLeaveTransaction.firstPaymentDate" placeholder="YYYY-MM-DD" autocomplete="off" />
                                        </div>
                                    </div>
                                <#--Third column end-->
                                    <div class="col-lg-2 b-r pt-20 pb-20 no-border-lg-down">
                                        <div class="form-group">
                                            <label for="secondPaymentMOde" class="control-label">Second Payment Mode</label>
                                            <input type="number" class="form-control form-control-sm" id="secondPaymentMOde" placeholder="Percentage" ng-model="maternityLeaveTransaction.secondPaymentPCT">
                                        </div>
                                        <div class="form-group date">
                                            <input type="text" class="form-control datetimepicker-input form-control-sm" id="secondPaymentMOdeDate" data-toggle="datetimepicker" data-target="#secondPaymentMOdeDate" ng-model="maternityLeaveTransaction.secondPaymentDate" placeholder="YYYY-MM-DD" autocomplete="off" />
                                        </div>
                                    </div>
                                <#--Forth column column end-->
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding">
                                        <div class="flex d-flex flex-column">
                                            <h3>Payment Details</h3>
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
                    <button type="reset" class="btn btn-gradient-danger">Cancel</button>
                </div>
            </div>
        </div>
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

<script type="text/javascript">
    $('#mleaveFromDate').datetimepicker({
        format: 'YYYY-MM-DD'
    })

    $('#mleaveToDate').datetimepicker({
        format: 'YYYY-MM-DD'
    })

    $('#EDDDate').datetimepicker({
        format: 'YYYY-MM-DD'
    })

    $('#firstPaymentMOdeDate').datetimepicker({
        format: 'YYYY-MM-DD'
    })

    $('#secondPaymentMOdeDate').datetimepicker({
        format: 'YYYY-MM-DD'
    })
</script>
