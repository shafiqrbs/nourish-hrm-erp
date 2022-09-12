<div ng-controller="leaveYearManageController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="EmpLeaveYearInfoForm" ng-submit="saveLeaveYearForm(EmpLeaveYearInfoForm.$valid,leaveYear)">
            <div class="row justify-content-center">
                <div class="col-lg-4">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Company Leave Calendar</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-12 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group date">
                                        <label for="leaveFromDate" class="control-label">From Date</label>
                                        <input type="date" class="form-control form-control-sm" id="leaveFromDate" ng-model="leaveYear.fromDate" autocomplete="off" />
                                    </div>
                                    <div class="form-group date">
                                        <label for="leaveToDate" class="control-label">To Date</label>
                                        <input type="date" class="form-control form-control-sm" id="leaveToDate" ng-model="leaveYear.toDate" autocomplete="off" />
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