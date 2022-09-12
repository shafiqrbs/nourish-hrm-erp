<div ng-controller="signInController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="EmpQualificationInfoForm"
              ng-submit="saveQualificationForm(EmpQualificationInfoForm.$valid,employeePQualificationInfo)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Entry Information</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-12 pt-20 no-border-lg-down">
                                    <div class="portlet-box portlet-gutter ui-buttons-col ">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                            <div class="flex d-flex flex-column">
                                                <h3>Attendance Date</h3>
                                            </div>
                                        </div>
                                        <div class="portlet-body no-padding">
                                            <div class="row no-margin">
                                                <div class="col-lg-4 pt-20 b-r pb-20 no-border-lg-down">
                                                    <div class="form-group date">
                                                        <label for="fromDate" class="control-label">From Date</label>
                                                        <input id="datetimepicker_mask" placeholder="Click Me" type="text" class="form-control form-control-sm">
                                                    </div>
                                                    <div class="form-group date">
                                                        <label for="toDate" class="control-label">To Date</label>
                                                        <input id="datetimepicker_mask" placeholder="Click Me" type="text" class="form-control form-control-sm">
                                                    </div>
                                                </div>
                                                <#--First column end-->
                                                <div class="col-lg-8 pt-20 pb-20 no-border-lg-down">
                                                        <div class="portlet-box portlet-gutter ui-buttons-col ">
                                                            <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                                                <div class="flex d-flex flex-column">
                                                                    <h3>Settings</h3>
                                                                </div>
                                                            </div>
                                                            <div class="portlet-body no-padding">
                                                                <div class="row no-margin">
                                                                    <div class="col-lg-12 pt-20 b-r pb-20 no-border-lg-down">
                                                                        <div class="row">
                                                                            <div class="col-lg-6 pt-20 b-r pb-20 no-border-lg-down">
                                                                                <div class="form-group">
                                                                                    <label for="minimumOvertimeHour" class="control-label">Minimum overtime hour</label>
                                                                                    <input type="text" class="form-control form-control-sm" id="minimumOvertimeHour" placeholder="">
                                                                                </div>

                                                                            </div>
                                                                            <div class="col-lg-6 pt-20 pb-20 no-border-lg-down">
                                                                                <div class="form-group">
                                                                                    <label for="fractionRoundUpHour" class="control-label">and Fraction roundup hour</label>
                                                                                    <input type="text" class="form-control form-control-sm" id="fractionRoundUpHour" placeholder="">
                                                                                </div>

                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label class="control-label">If anyone take leave but also he present</label><br/>
                                                                            <div class="customUi-radio radioUi-primary  pb-2">
                                                                                <input id="a1" type="radio" value="Separate this type of employee for extra Benefit" name="Radio"  checked="">
                                                                                <label for="a1">
                                                                                    <span class="label-radio"></span>
                                                                                    <span class="label-helper">Separate this type of employee for extra Benefit</span>
                                                                                </label>
                                                                            </div>
                                                                            <div class="customUi-radio radioUi-primary  pb-2">
                                                                                <input id="a2" type="radio" value="Ignore leave" name="Radio">
                                                                                <label for="a2">
                                                                                    <span class="label-radio"></span>
                                                                                    <span class="label-helper">Ignore leave</span>
                                                                                </label>
                                                                            </div>
                                                                            <div class="customUi-radio radioUi-primary  pb-2">
                                                                                <input id="a3" type="radio" value="Ignore attendance" name="Radio">
                                                                                <label for="a3">
                                                                                    <span class="label-radio"></span>
                                                                                    <span class="label-helper">Ignore attendance</span>
                                                                                </label>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label class="control-label">If anyone in workOff or in holiday but also he present</label><br/>
                                                                            <div class="customUi-radio radioUi-primary  pb-2">
                                                                                <input id="b1" type="radio" value="Separate this type of employee for extra Benefit" name="Radio1"  checked="">
                                                                                <label for="b1">
                                                                                    <span class="label-radio"></span>
                                                                                    <span class="label-helper">Separate this type of employee for extra Benefit</span>
                                                                                </label>
                                                                            </div>
                                                                            <div class="customUi-radio radioUi-primary  pb-2">
                                                                                <input id="b2" type="radio" value="Ignore workOff or holiday" name="Radio1">
                                                                                <label for="b2">
                                                                                    <span class="label-radio"></span>
                                                                                    <span class="label-helper">Ignore workOff or holiday</span>
                                                                                </label>
                                                                            </div>
                                                                            <div class="customUi-radio radioUi-primary  pb-2">
                                                                                <input id="b3" type="radio" value="Ignore attendance" name="Radio1">
                                                                                <label for="b3">
                                                                                    <span class="label-radio"></span>
                                                                                    <span class="label-helper">Ignore attendance</span>
                                                                                </label>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label class="control-label">If anyone in workOff or in holiday and also he takes leave then his/her day status will be</label><br/>
                                                                            <div class="customUi-radio radioUi-primary  pb-2">
                                                                                <input id="c1" type="radio" value="W/H" name="Radio2"  checked="">
                                                                                <label for="c1">
                                                                                    <span class="label-radio"></span>
                                                                                    <span class="label-helper">W/H</span>
                                                                                </label>
                                                                            </div>
                                                                            <div class="customUi-radio radioUi-primary  pb-2">
                                                                                <input id="c2" type="radio" value="LV" name="Radio2">
                                                                                <label for="c2">
                                                                                    <span class="label-radio"></span>
                                                                                    <span class="label-helper">LV</span>
                                                                                </label>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label class="control-label">PayHour Rounding</label><br/>
                                                                            <div class="customUi-radio radioUi-primary  pb-2">
                                                                                <input id="d1" type="radio" value="No Rounding" name="Radio3"  checked="">
                                                                                <label for="d1">
                                                                                    <span class="label-radio"></span>
                                                                                    <span class="label-helper">No Rounding</span>
                                                                                </label>
                                                                            </div>
                                                                            <div class="customUi-radio radioUi-primary  pb-2">
                                                                                <input id="d2" type="radio" value="Standard Rounding" name="Radio3">
                                                                                <label for="d2">
                                                                                    <span class="label-radio"></span>
                                                                                    <span class="label-helper">Standard Rounding</span>
                                                                                </label>
                                                                            </div>
                                                                            <div class="customUi-radio radioUi-primary  pb-2">
                                                                                <input id="d3" type="radio" value="Customized Rounding" name="Radio3">
                                                                                <label for="d3">
                                                                                    <span class="label-radio"></span>
                                                                                    <span class="label-helper">Customized Rounding</span>
                                                                                </label>
                                                                            </div>
                                                                        </div>
                                                                        <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                                            <input id="checked" type="checkbox" name="agree" checked="">
                                                                            <label for="checked">
                                                                                <span class="label-checkbox"></span>
                                                                                <span class="label-helper">This is final attendance data processing and in future nobody can change it.</span>
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                <#--First column end-->
                                                                    <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">

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
                            <div class="row no-margin">

                        </div>
                        <div class="form-group">
                            <label class="pl-20 control-label text-danger">Note:This setting will be applicable only for selected employee(s) and unapproved data.</label>
                        </div>

                    </div>
                </div>

            </div>

            <div class="row mb-30">
                <div class="col-lg-12">
                    <div class="box-footer clearfix">
                        <div class="text-right">
                            <button type="submit" class="btn btn-gradient-info">Next</button>
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
