<div ng-controller="paymentManageController">
    <div class="rounded bg-white">
        <form class="form-horizontal form-general" name="EmpQualificationInfoForm"
              ng-submit="saveQualificationForm(EmpQualificationInfoForm.$valid,employeePQualificationInfo)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-3 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding mb-15">
                                            <div class="flex d-flex flex-column">
                                                <h3 class="pl-15">Attendance Payment Information</h3>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-group select-dynamic-add">
                                                <label for="attendancePaymentName" class="control-label">Attendance Payment Name</label>
                                                <select id="attendancePaymentName" class="form-control form-control-sm"
                                                        ng-model="employeeGeneralInfo.employment">
                                                    <option>Select Option</option>
                                                </select>
                                                <a href="javascript:void(0)"
                                                   class="btn btn-gradient-success btn-icon-o add-new">
                                                    <i class="fa fa-search"></i>
                                                </a>
                                            </div>
                                            <div class="form-group">
                                                <label for="description" class="control-label">Description</label>
                                                <textarea class="form-control form-control-sm" id="description" ng-model="employeeGeneralInfo.refarenceAddress"placeholder="Attendance Staff" rows="3"></textarea>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                            <div class="flex d-flex flex-column">
                                                <h3>Attendance Payment Rule(s)</h3>
                                            </div>
                                        </div>
                                        <div class="portlet-body no-padding">
                                            <div class="row no-margin">
                                                <div class="col-lg-12 b-r pt-20 pb-20 no-border-lg-down">
                                                    <kendo-grid options="employeeInformationGridOptions"></kendo-grid>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input id="a1" type="radio" value="Applied For Attendance Bonus" name="Radio"  checked="">
                                            <label for="a1">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">Applied For Attendance Bonus</span>
                                            </label>
                                        </div><br/>
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input id="a2" type="radio" value="Applied For Team Bonus" name="Radio">
                                            <label for="a2">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">Applied For Team Bonus</span>
                                            </label>
                                        </div><br/>
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input id="a3" type="radio" value="Both" name="Radio">
                                            <label for="a3">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">Both</span>
                                            </label>
                                        </div>
                                    </div>

                                </div>
                                <#--First column end-->
                                <div class="col-lg-9 pt-20 pb-20 no-border-lg-down">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group select-dynamic-add">
                                                <label for="attendancePaymentRuleName" class="control-label">Attendance Payment Rule Name</label>
                                                <select id="attendancePaymentRuleName" class="form-control form-control-sm"
                                                        ng-model="employeeGeneralInfo.employment">
                                                    <option>Select Option</option>
                                                </select>
                                                <a href="javascript:void(0)"
                                                   class="btn btn-gradient-success btn-icon-o add-new">
                                                    <i class="fa fa-plus"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-30">
                                        <div class="col-lg-8 b-r  no-border-lg-down">
                                            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                                <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding mb-15">
                                                    <div class="flex d-flex flex-column">
                                                        <h3 class="pl-15">This Rule for</h3>
                                                    </div>
                                                </div>

                                                <div class="col-lg-12">
                                                    <div class="form-group">
                                                        <div class="customUi-radio radioUi-primary mr-2 pb-2">
                                                            <input id="b1" type="radio" value="Absenteeism Calculation" name="Radio">
                                                            <label for="b1">
                                                                <span class="label-radio"></span>
                                                                <span class="label-helper">Absenteeism Calculation</span>
                                                            </label>
                                                        </div>
                                                        <div class="customUi-radio radioUi-primary mr-2 pb-2">
                                                            <input id="b2" type="radio" value="Late Calculation" name="Radio">
                                                            <label for="b2">
                                                                <span class="label-radio"></span>
                                                                <span class="label-helper">Late Calculation</span>
                                                            </label>
                                                        </div>
                                                        <div class="customUi-radio radioUi-primary mr-2 pb-2">
                                                            <input id="b3" type="radio" value="Early Out Calculation" name="Radio">
                                                            <label for="b3">
                                                                <span class="label-radio"></span>
                                                                <span class="label-helper">Early Out Calculation</span>
                                                            </label>
                                                        </div>
                                                        <div class="customUi-radio radioUi-primary mr-2 pb-2">
                                                            <input id="b4" type="radio" value="Late and Early Out Calculation" name="Radio">
                                                            <label for="b4">
                                                                <span class="label-radio"></span>
                                                                <span class="label-helper">Late & Early Out Calculation</span>
                                                            </label>
                                                        </div>
                                                        <div class="customUi-radio radioUi-primary mr-2 pb-2">
                                                            <input id="b5" type="radio" value="Attendance Bonus Calculation" name="Radio">
                                                            <label for="b5">
                                                                <span class="label-radio"></span>
                                                                <span class="label-helper">Attendance Bonus Calculation</span>
                                                            </label>
                                                        </div>
                                                        <div class="customUi-radio radioUi-primary mr-2 pb-2">
                                                            <input id="b6" type="radio" value="Half Day Calculation" name="Radio">
                                                            <label for="b6">
                                                                <span class="label-radio"></span>
                                                                <span class="label-helper">Half Day Calculation</span>
                                                            </label>
                                                        </div>
                                                        <div class="customUi-radio radioUi-primary  pb-2">
                                                            <input id="b7" type="radio" value="Holiday Bonus Calculation" name="Radio">
                                                            <label for="b7">
                                                                <span class="label-radio"></span>
                                                                <span class="label-helper">Holiday Bonus Calculation</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>



                                        </div>
                                        <div class="col-lg-4 pb-20 no-border-lg-down">
                                            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                                <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding mb-15">
                                                    <div class="flex d-flex flex-column">
                                                        <h3 class="pl-15">Rule Setting</h3>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                            <div class="flex d-flex flex-column">
                                                <h3>Payment Criteria</h3>
                                            </div>
                                            <div class="d-flex flex justify-content-end">
                                                <div class="">
                                                    <a href="">Add New Payment Criteria</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="portlet-body no-padding">
                                            <div class="row no-margin"  style="min-height:100px">
                                                <div class="col-lg-12 b-r pt-20 pb-20 no-border-lg-down">

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                            <div class="flex d-flex flex-column">
                                                <h3>Payment Amount</h3>
                                            </div>
                                            <div class="d-flex flex justify-content-end">
                                                <div class="btn-group">
                                                    <button type="submit" class="btn btn-gradient-info">Add New Payment Amount</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="portlet-body no-padding">
                                            <div class="row no-margin"  style="min-height:100px">
                                                <div class="col-lg-12 b-r pt-20 pb-20 no-border-lg-down">
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
