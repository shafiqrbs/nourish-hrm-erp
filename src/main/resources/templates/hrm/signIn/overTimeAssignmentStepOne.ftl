<div ng-controller="signInController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="EmpQualificationInfoForm" ng-submit="saveQualificationForm(EmpQualificationInfoForm.$valid,employeePQualificationInfo)">
            <div class="row">
                <div class="col-lg-12 mt-30">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Step One Over Time</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group date">
                                        <label for="fromDate" class="control-label">From Date</label>
                                        <input id="datetimepicker_mask" placeholder="Click Me" type="text" class="form-control form-control-sm">
                                    </div>
                                    <div class="form-group date">
                                        <label for="toDate" class="control-label">To Date</label>
                                        <input id="datetimepicker_mask" placeholder="Click Me" type="text" class="form-control form-control-sm">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label text-danger">Only Power user can use multiple date option</label>
                                    </div>

                                </div>
                                <#--First column end-->
                                <div class="col-lg-8 pt-20 pb-20 no-border-lg-down">

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