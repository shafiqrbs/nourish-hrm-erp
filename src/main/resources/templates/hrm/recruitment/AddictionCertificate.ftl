<form class="form-horizontal form-Addictioncertificate" name="Addictioncertificate" ng-submit="">
    <div class="row justify-content-center">
        <div class="col-lg-12">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                    <div class="flex d-flex flex-columnn">
                        <h3>Fitness Certificate</h3>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="form-group">
                        <#--<label for="certi">This is to certify that Mr./Mrs/Miss</label>-->
                        <#--<input id="certi" type="certi" class="form-control form-control-sm" placeholder="Name">-->
                            <h3>Addiction Certificate To Whom It May Concern</h3>
                            <p>This is to certify that Mr./Mrs./Miss.  <input id="cName" type="text" class="form-control form-control-sm certify_name" ></p>
                            <p>Son/Wife?daughter of <input id="cName" type="text" class="form-control form-control-sm certify_name" > </p>
                            <p>is one of the employees of the factory. With his/her Consent for observing the following sign, I found that he/she is not addicated to any alcohol or drugs.</p>
                        <#--<p>Mr./Mrs/Miss </br><span>Addiction Certificate</span></p>-->
                    </div>
                    <#--<div class="form-group">-->
                    <#--<label for="son">Son/Wife/Daughter Name</label>-->
                    <#--<input id="son" type="text" class="form-control form-control-sm" placeholder="Name of Son / Wife / Daughter">-->
                    <#--</div>-->

                    <div class="form-group">
                        <div class="customUi-checkbox d-block checkboxUi-primary pr-2 ">
                            <input type="checkbox" id="checkboxemployegmailemployreference">
                            <label for="checkboxemployegmailemployreference">
                                <span class="label-checkbox"> </span>
                                <span class="label-helper">Check teeth and gum checkbox</span>
                            </label>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="customUi-checkbox d-block checkboxUi-primary pr-2 ">
                            <input type="checkbox" id="checkboxemployegmailemployreference2">
                            <label for="checkboxemployegmailemployreference2">
                                <span class="label-checkbox"> </span>
                                <span class="label-helper">Check tongue and lips</span>
                            </label>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="customUi-checkbox d-block checkboxUi-primary pr-2 ">
                            <input type="checkbox" id="checkboxemployegmailemployreference3">
                            <label for="checkboxemployegmailemployreference3">
                                <span class="label-checkbox"> </span>
                                <span class="label-helper">Check eye</span>
                            </label>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="customUi-checkbox d-block checkboxUi-primary pr-2 ">
                            <input type="checkbox" id="checkboxemployegmailemployreference4">
                            <label for="checkboxemployegmailemployreference4">
                                <span class="label-checkbox"> </span>
                                <span class="label-helper">Other sign</span>
                            </label>
                        </div>
                    </div>

                    <p>I wish him / her success in life</p>

                    <div class="signature_wrapper mt-60">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="signature_info_nures float-left">
                                    <input id="cName" type="text" class="form-control form-control-sm" >
                                    <p>Nurse</p>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="signature_info_doctors float-right">
                                    <input id="cName" type="text" class="form-control form-control-sm" >
                                    <p>Doctor's</p>
                                </div>

                            </div>
                        </div>
                    </div>




                </div>
            </div><!--portlet-->

            <div class="row mb-30 mt-30">
                <div class="col-lg-12">
                    <div class="box-footer clearfix">
                        <div class="text-right">
                            <button type="submit" class="btn btn-gradient-success">Save</button>
                            <button type="submit" class="btn btn-gradient-primary">Approved</button>
                            <button type="submit" class="btn btn-gradient-warning">Reject</button>
                            <button type="button" class="btn btn-gradient-info" ng-click="addictionCertificatePrint()">Print</button>
                            <button type="reset" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div><!--row-->


</form>
<div id="printPreviewContainer"><#include "../printPreview/AddictionCertificateForm.ftl"/></div>