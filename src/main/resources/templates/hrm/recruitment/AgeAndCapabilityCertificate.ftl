<form class="form-horizontal form-ageandcapability" name="AgeAndCapability" ng-submit="">
    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
            <div class="flex d-flex flex-columnn">
                <h3>Age Capability Certificate</h3>
            </div>
        </div>
        <div class="ageAndCapability_area">

            <div class="identification_wrapper">
                <div class="input-icon-group">
                    <h6>Identification : </h6>
                </div>

                <div class="row">

                    <div class="col-lg-6">
                        <div class="identification_info">

                            <div class="form-group mb-0">
                                <div class="input-icon-group mb-5">
                                    <label for="identification_name">1) Name</label>
                                </div>

                                <p>: <input type="text" class="form-control form-control-sm" id="identification_name" aria-describedby="emhelp"></p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="identification_info">

                            <div class="form-group mb-0">
                                <div class="input-icon-group mb-5">
                                    <label for="identification_fatherHusbandName">2) Father / Husband Name</label>
                                </div>

                                <p>: <input type="text" class="form-control form-control-sm" id="identification_fatherHusbandName" aria-describedby="emhelp"></p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-12">
                        <div class="identification_info identification_address">

                            <div class="form-group mb-0">
                                <div class="input-icon-group mb-5">
                                    <label for="identification_address">3) Address</label>
                                </div>

                                <p>: <textarea type="text" class="form-control form-control-sm" id="identification_address" aria-describedby="emhelp"></textarea></p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="identification_info">

                            <div class="form-group mb-0">
                                <div class="input-icon-group mb-5">
                                    <label for="identification_cardNo">4) Card No</label>
                                </div>

                                <p>: <input type="text" class="form-control form-control-sm" id="identification_cardNo" aria-describedby="emhelp"></p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="identification_info">

                            <div class="form-group mb-0">
                                <div class="input-icon-group mb-5">
                                    <label for="identification_designation">5) Designation</label>
                                </div>

                                <p>: <input type="text" class="form-control form-control-sm" id="identification_designation" aria-describedby="emhelp"></p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="identification_info">

                            <div class="form-group mb-0">
                                <div class="input-icon-group mb-5">
                                    <label for="identification_designation">6) Birthday Date (In the words of the workers)</label>
                                </div>

                                <p>: <input type="text" class="form-control form-control-sm" id="identification_designation" aria-describedby="emhelp"></p>
                            </div>
                        </div>
                    </div>


                </div>
            </div>

            <div class="worker_acceptance_wrapper mt-20">

                <div class="worker_acceptance_title">
                    <div class="input-icon-group">
                        <h6 class="mb-5">Workers Consent : </h6>
                    </div>
                </div>


                <p class="mb-5">I understand, acknowledge and give my consent to perform the required medical test to appoint my age </p>

                <div class="worker_signature_wrapper">
                    <div class="worker_signature_info">
                        <div class="input-icon-group">
                            <label for="worker_signature">Signature</label>
                        </div>

                        <div class="input-icon-group">
                            <label for="worker_signature_date">Date</label>
                        </div>
                    </div>
                    <div class="worker_signature_input">
                        <div class="form-group">
                            <p>:<input type="text" class="form-control form-control-sm" id="worker_signature" aria-describedby="emhelp"></p>
                        </div>

                        <div class="form-group">
                            <p>:<input type="text" class="form-control form-control-sm" id="worker_signature_date" aria-describedby="emhelp"></p>
                        </div>
                    </div>
                </div>

                <p class="mb-0">7. Medical Test (Day Light and Secretly done)</p>
                <div class="row">

                    <div class="col-lg-4">
                        <div class="form-group worker_height">
                            <label for=""worker_height>A) Height <span>:</span></label>
                            <div class="input-icon-append">
                                <input type="text" class="form-control form-control-sm" id="worker_height" aria-describedby="emhelp">
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="form-group worker_weight">
                            <label for=""worker_height>B) Weight <span>:</span></label>
                            <div class="input-icon-append">
                                <input type="text" class="form-control form-control-sm" id="worker_height" aria-describedby="emhelp">
                            </div>
                        </div>
                    </div>

                </div>

                <p>C) Dental structure : (i) At least 18 years old: 8/7 and 8/7 (ii) 14-17 years : 7/7 and 7/7</p>
                <p class="women_period">D) Period (Only for women) : First date of period : <input type="text" class="form-control form-control-sm" id="worker_period" aria-describedby="emhelp"></p>
                <p class="mb-0">E) Beard - (Only for boys )</p>
                <p class="pl-15">Complete grown (At least 18 years old) / Incomplete ( 14-17 years old)</p>

                <p class="others">F) Others <span>:</span><input type="text" class="form-control form-control-sm" id="worker_period" aria-describedby="emhelp"></p>

            </div>

            <div class="doctors_discus">

                <div class="worker_acceptance_title mt-20">
                    <div class="input-icon-group">
                        <h6 class="mb-5">Doctor's Opinions : </h6>
                    </div>
                </div>

                <div class="doctors_discus_info">
                    <p>Following the doctor's test mentioned about and verifying the given information, the labour's age is :  <input type="text" class="form-control form-control-sm" id="worker_period" aria-describedby="emhelp"> year's old</p>
                </div>
            </div>

            <div class="row mt-30">
                <div class="col-lg-6">
                    <div class="office_signature float-left">
                        <input id="doctor_signature_name" type="text" class="form-control form-control-sm">
                        <p>Doctor Signature</p>
                    </div>
                </div>
            </div>

        </div>

    </div>

    </div><!--row-->

    <div class="row mb-30 mt-30">
        <div class="col-lg-12">
            <div class="box-footer clearfix">
                <div class="text-right">
                    <button type="submit" class="btn btn-gradient-success">Save</button>
                    <button type="submit" class="btn btn-gradient-primary">Approved</button>
                    <button type="submit" class="btn btn-gradient-warning">Reject</button>
                    <button type="button" class="btn btn-gradient-info" ng-click="ageAndCapabilityCertificatePrint()">Print</button>
                    <button type="reset" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
                </div>
            </div>
        </div>
</form>
<div id="printPreviewContainer"><#include "../printPreview/AgeAndCapabilityCertificateForm.ftl"/></div>