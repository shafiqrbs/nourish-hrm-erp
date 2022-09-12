<form class="form-horizontal form-general" name="CalendarStepThree" ng-submit="pushWorkOffCalender(CalendarStepThree.$valid)">
    <div class="row">
        <div class="col-lg-12">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                    <div class="flex d-flex flex-column">
                        <h3>Processed Calendar Information</h3>
                    </div>
                </div>
                <div class="portlet-body no-padding">
                    <div class="row no-margin">
                        <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                            <kendo-grid options="ProcessedEmployeeAllDataOptions" style="height:400px;"></kendo-grid>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group mb-0">
                <label class="control-label pr-20 text-warning">Already Approved</label>
                <label class="control-label text-primary">Overwrite</label>
            </div>
        </div>
    </div>
    <div class="row mb-30">
        <div class="col-lg-12">
            <div class="box-footer clearfix">
                <div class="text-right">
                    <button type="submit" ng-click="openShiftRosterTab('stepTwoCalendar')" class="btn btn-gradient-info">Back</button>
                    <button type="submit" class="btn btn-gradient-success">Save</button>
                    <button type="button" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
                </div>
            </div>
        </div>
    </div>
</form>