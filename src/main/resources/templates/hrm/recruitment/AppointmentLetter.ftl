<form class="form-horizontal form-appoinmentletter" name="appoinmentletter" ng-submit="">
    <div class="row">
        <div class="col-lg-12">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                    <div class="flex d-flex flex-columnn">
                        <h3>Appointment Letter</h3>
                    </div>
                </div>
                <div class="applicant_area">
                    <div class="applicant_personal_info_wrapper">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="employee_name">Employee Name</label>
                                        </div>
                                        <p>: <input type="text" ng-model="candidateDetailsInfo.firstName" disabled class="form-control form-control-sm" id="employee_name" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="employee_phone">Mobile No:</label>
                                        </div>
                                        <p>: <input type="text" ng-model="candidateDetailsInfo.phone" disabled class="form-control form-control-sm" id="employee_phone" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="applicant_personal_info">

                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="employee_father_ame">Father Name</label>
                                        </div>

                                        <p>: <input type="text" ng-model="candidateDetailsInfo.fathersName" disabled class="form-control form-control-sm" id="employee_father_ame" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="employee_husband">Husband/Wife Name</label>
                                        </div>
                                        <p>: <input type="text" ng-model="candidateDetailsInfo.spouseName" disabled class="form-control form-control-sm" id="employee_husband" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="employee_motherName">Mother Name</label>
                                        </div>
                                        <p>: <input type="text" ng-model="candidateDetailsInfo.mothersName" disabled class="form-control form-control-sm" id="employee_motherName" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="input-icon-group mb-0 mt-20">
                                    <h6>Present Address: </h6>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="applicant_personal_info">
                                            <div class="form-group mb-0">
                                                <div class="input-icon-group mb-5">
                                                    <label for="employee_village">Village</label>
                                                </div>
                                                <p>: <input type="text" ng-model="candidateDetailsInfo.presentAddress" disabled class="form-control form-control-sm" id="employee_village" aria-describedby="emhelp"></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="applicant_personal_info">
                                            <div class="form-group mb-0">
                                                <div class="input-icon-group mb-5">
                                                    <label for="employee_postOffice">Post Office</label>
                                                </div>
                                                <p>: <input type="text" ng-model="candidateDetailsInfo.presentZIPCode" disabled class="form-control form-control-sm" id="employee_postOffice" aria-describedby="emhelp"></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="applicant_personal_info">
                                            <div class="form-group mb-0">
                                                <div class="input-icon-group mb-5">
                                                    <label for="employee_policeOffice">Police Office</label>
                                                </div>
                                                <p>: <input type="text" ng-model="candidateDetailsInfo.presentPS" disabled class="form-control form-control-sm" id="employee_policeOffice" aria-describedby="emhelp"></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="applicant_personal_info">
                                            <div class="form-group mb-0">
                                                <div class="input-icon-group mb-5">
                                                    <label for="employee_district">District</label>
                                                </div>
                                                <p>: <input type="text" ng-model="candidateDetailsInfo.presentDistrict" disabled class="form-control form-control-sm" id="employee_district" aria-describedby="emhelp"></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="input-icon-group mb-0 mt-20">
                                    <h6>Permanent Address: </h6>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="applicant_personal_info">
                                            <div class="form-group mb-0">
                                                <div class="input-icon-group mb-5">
                                                    <label for="employee_permanent_village">Village</label>
                                                </div>
                                                <p>: <input type="text" ng-model="candidateDetailsInfo.permanentAddress" disabled class="form-control form-control-sm" id="employee_permanent_village" aria-describedby="emhelp"></p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6">
                                        <div class="applicant_personal_info">
                                            <div class="form-group mb-0">
                                                <div class="input-icon-group mb-5">
                                                    <label for="employee_permanent_postOffice">Post Office</label>
                                                </div>
                                                <p>: <input type="text" ng-model="candidateDetailsInfo.permanentZIPCode" disabled class="form-control form-control-sm" id="employee_permanent_postOffice" aria-describedby="emhelp"></p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6">
                                        <div class="applicant_personal_info">
                                            <div class="form-group mb-0">
                                                <div class="input-icon-group mb-5">
                                                    <label for="employee_permanent_policeOffice">Police Office</label>
                                                </div>
                                                <p>: <input type="text" ng-model="candidateDetailsInfo.permanentPS" disabled class="form-control form-control-sm" id="employee_permanent_policeOffice" aria-describedby="emhelp"></p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6">
                                        <div class="applicant_personal_info">
                                            <div class="form-group mb-0">
                                                <div class="input-icon-group mb-5">
                                                    <label for="employee_permanent_district">District</label>
                                                </div>
                                                <p>: <input type="text" ng-model="candidateDetailsInfo.permanentDistrict" disabled class="form-control form-control-sm" id="employee_permanent_district" aria-describedby="emhelp"></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="row mt-20">
                            <div class="col-lg-6">
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="employee_designation">Designation</label>
                                        </div>
                                        <p>: <input type="text" ng-model="candidateDetailsInfo.applyForPosition" disabled class="form-control form-control-sm" id="employee_designation" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="employee_work_type">Type Of Work</label>
                                        </div>
                                        <p>: <input type="text" ng-model="candidateDetailsInfo.firstName" disabled class="form-control form-control-sm" id="employee_work_type" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="employee_joining_date">Joining Date</label>
                                        </div>
                                        <p>: <input type="date" ng-model="candidateDetailsInfo.dob" disabled class="form-control form-control-sm " id="employee_joining_date" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="employee_class">Labor Class</label>
                                        </div>
                                        <p>: <input type="text" ng-model="candidateDetailsInfo.applyForPosition" disabled class="form-control form-control-sm" id="employee_class" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="row mt-20">
                                    <div class="col-lg-4">
                                        <div class="input-icon-group mb-0">
                                            <h6>Salary Details </h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="salary_structure_wrapper">
                                    <div class="row">
                                        <div class="col-lg-12 b-r pt-20 pb-20 no-border-lg-down">
                                          <kendo-grid options="candidateAppointedSalaryInfoGridOptions"></kendo-grid>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="worker_benefit_wrapper">
                                    <div class="input-icon-group mb-0 mt-20">
                                        <h6>Other Benefit: </h6>
                                    </div>

                                    <div class="benefit_info">
                                        <ol>
                                            <li><b>Attendance Bonus: </b> In euerts of worker attending every working day of the month, the worker will be enfited to receiure <input type="text" class="form-control form-control-sm" id="worker_period" aria-describedby="emhelp"> Taka</li>
                                            <li><b>Festive Bonus(2 Bonuses): </b> After completion of 1 whole working year, the worker will receive 100% of their original wayes</li>
                                            <li><b>Materrity Benefits: </b> Female workers are eutihled to 16 weeks of paid holidays for materrity lewe</li>
                                            <li><b>Bonus Leaue: </b> Upon completion of working for 1 hour or more leabour will be eufiled to bonus / earned leaue or bonus / earned leaue to the existing labour laus</li>
                                            <li><b>Service Benefit: </b> According to the labour laws, workers aged between 5 and 10 are eafiled to 14 days upon uninterrupted completion of 1 year of work and workers aged ober 10 years are eutithed to require 30 days worth of wayes any other benefits under the labour laws will be prouded as well</li>
                                        </ol>
                                    </div>

                                    <div class="input-icon-group mb-0 mt-20">
                                        <h6>All Conditions of worker Recruitment: </h6>
                                    </div>
                                    <div class="benefit_info">
                                        <ol>
                                            <li><b>Entrance period: </b> You have to work as an entry period for the first 3 months. If your work for this period is not acceptable to the authorities, then the authorities can increase this time period by 3 more months Or you can be relieved by labor law</li>
                                            <li><b>Vacation: </b> You will be discharged for 10 days, leave leave 14 days, festival leave 11 days, maternity leave, 112 days (if applicable)</li>
                                            <li><b>Work Time:</b> Daily working hours are 8 hours and over 2 hours. Over time will be double the original wage</li>
                                            <li><b>Break Time: </b> Every worker will get 1 hour to rest</li>
                                            <li><b>Termination of owner by the employer</b> In case of permanent and other workers in the case of 120 days and 30 days respectively, for the duration of the written notice, the equivalent amount will be paid to the owner.</li>
                                            <li><b>Termination of employment by workers: </b> In case of permanent and other workers in the case of 60 days for the duration of the written notice, the equivalent amount will be paid to the owner</li>
                                            <li><b>The time of exemption from employment finally</b> All your credential authorities will be provided according to the labor law through the accounting department</li>
                                            <li><b>Transfer: </b> Your job is transferable to any section or any other organization of Khaled Group</li>
                                            <li><b>Group Insurance:</b> You will be brought under group insurance</li>
                                            <li><b>Salary Date: </b> Your monthly credentials will be made headlines on any day between the next 7 working days of the next month...</li>
                                            <li><b>Misconduct: </b> For the rigging, rioting, arson or vandalism of the organization, authorities may take action against you according to law.</li>
                                            <li><b>Service book: </b> The employer will arrange for you to open a service book. If you wish, you can get a copy of 20 copies of the same amount by submitting a cash deposit of 20 taka</li>
                                        </ol>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="office_signature_wrapper mt-60">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="office_signature float-left">
                                        <input id="office_signature_name" type="text" class="form-control form-control-sm">
                                        <p>Worker Signature</p>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="office_signature float-right">
                                        <input id="office_signature_date" type="text" class="form-control form-control-sm">
                                        <p>Authorities Signature</p>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>



                </div>

            </div>

            <div class="row mb-30 pr-15">
                <div class="col-lg-12">
                    <div class="box-footer clearfix">
                        <div class="text-right">
                            <button type="submit" class="btn btn-gradient-success">Save</button>
                            <button type="submit" class="btn btn-gradient-primary">Approved</button>
                            <button type="submit" class="btn btn-gradient-warning">Reject</button>
                            <button type="button" class="btn btn-gradient-info" ng-click="appointmentLetterFormPrint()">Print</button>
                            <button type="reset" class="btn btn-gradient-danger" ng-click="cancel()">Cancel
                            </button>
                        </div>
                    </div>
                </div>
            </div>

        </div>


    </div>
</form>
<div id="printPreviewContainer"><#include "../printPreview/AppointmentLetterForm.ftl"/></div>