<form class="form-horizontal form-Addictioncertificate" name="Addictioncertificate" ng-submit="">

<#--<div class="header_wrapper">-->
<#--<div class="row">-->

<#--</div>-->
<#--</div>-->

    <div class="row justify-content-center">
        <div class="col-lg-12">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                    <div class="flex d-flex flex-columnn">
                        <h3>Fitness Certificate</h3>
                    </div>
                </div>
                <div class="form-group fitness_char_wrapper pt-50 pl-30 pr-30">
                    <p>This is to certify that Mr./Mrs./Miss <input id="cName" type="text"
                                                                    class="form-control form-control-sm certify_name">
                    </p>
                    <p> Son/Wife/Daughter of <input id="cName" type="text"
                                                    class="form-control form-control-sm certify_name2"></p>
                    <p>Is one of the employee of the factory. With his/her Consent for Examining physical fitnecc, I
                        declare that he/she is fit for regular duty and he/she is not suffering from any infectious
                        diseases.</p>
                    <p>I wish him/her sucess in life.</p>
                </div>
                <div class="signature_wrapper pt-50 pl-30 pr-30">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="signature_info_nures float-left">
                                <input id="cName" type="text" class="form-control form-control-sm">
                                <p>Nurse</p>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="signature_info_doctors float-right">
                                <input id="cName" type="text" class="form-control form-control-sm">
                                <p>Doctor's</p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="row mb-30 mt-30">
                <div class="col-lg-12">
                    <div class="box-footer clearfix">
                        <div class="text-right">
                            <button type="submit" class="btn btn-gradient-success">Save</button>
                            <button type="submit" class="btn btn-gradient-primary">Approved</button>
                            <button type="submit" class="btn btn-gradient-warning">Reject</button>
                            <button type="button" class="btn btn-gradient-info" ng-click="fitnessCertificatePrint()">Print</button>
                            <button type="reset" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--row-->
</form>
<div id="printPreviewContainer"><#include "../printPreview/FitnessCertificateForm.ftl"/></div>