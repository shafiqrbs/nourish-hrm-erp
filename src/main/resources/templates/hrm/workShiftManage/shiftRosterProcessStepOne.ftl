<form class="form-horizontal form-general" name="ShiftProcessStepThree" >
    <div class="row">
        <div class="col-lg-12">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                    <div class="flex d-flex flex-column">
                        <h3>Shift Rostering InFormation Setting</h3>
                    </div>
                    <div class="text-right">
                        <button type="submit" ng-click="openShiftRosterTab('stepTwoProcess')" class="btn btn-gradient-info">Next</button>
                    </div>
                </div>
                <div class="portlet-body no-padding">
                    <div class="row no-margin">
                        <div class="col-lg-12 pt-20 no-border-lg-down">
                            <div class="portlet-box portlet-gutter ui-buttons-col ">
                                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                    <div class="flex d-flex flex-column">
                                        <h3>Shift Roster Process Date Range</h3>
                                    </div>
                                </div>
                                <div class="portlet-body no-padding">
                                    <div class="row no-margin">
                                        <div class="col-lg-3 pt-20 b-r pb-20 no-border-lg-down">
                                            <div class="form-group date">
                                                <label for="fromDate" class="control-label">From Date</label>
                                                <input id="fromDate" type="date" class="form-control form-control-sm" ng-model="shiftProcess.fromDate" />
                                            </div>
                                            <div class="form-group date">
                                                <label for="toDate" class="control-label">To Date</label>
                                                <input type="date" class="form-control form-control-sm" id="toDate" ng-model="shiftProcess.toDate" />
                                          </div>
                                        </div>
                                        <#--First column end-->
                                        <div class="col-lg-9 pt-20 pb-20 no-border-lg-down">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                                            <div class="flex d-flex flex-column">
                                                                <h3>Shift Rule(s) Information</h3>
                                                            </div>
                                                        </div>
                                                        <div class="portlet-body no-padding">
                                                            <div class="row no-margin">
                                                                <div class="col-lg-12 b-r pt-20 pb-20 no-border-lg-down">
                                                                    <kendo-grid options="shiftRuleRosteringDetailGridOptions"></kendo-grid>
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
                <div class="form-group"></div>
            </div>
        </div>
    </div>

    <div class="row mb-30">
        <div class="col-lg-12">
            <div class="box-footer clearfix">
                <div class="text-right">
                    <#--<button type="submit" class="btn btn-gradient-success">Save</button>-->
                    <button type="button" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
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