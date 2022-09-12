<form class="form-horizontal form-general" name="EmpQualificationInfoForm" ng-submit="saveQualificationForm(EmpQualificationInfoForm.$valid,employeePQualificationInfo)">
    <div class="row">
        <div class="col-lg-12">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                <div class="portlet-body no-padding">
                    <div class="row no-margin">
                        <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                            <div class="form-group required">
                                <label for="degreeTitle" class="control-label">Certification Name</label>
                                <input type="text" class="form-control form-control-sm" id="degreeTitle" placeholder="Certification Title" ng-model="employeePQualificationInfo.certificationName" required />
                            </div>
                            <div class="form-group">
                                <label for="crtnumber" class="control-label">Certification No.</label>
                                <input type="text" class="form-control form-control-sm" id="crtnumber" placeholder="Certification No." ng-model="employeePQualificationInfo.certificationNo"/>
                            </div>
                            <div class="form-group required">
                                <label for="courseduration" class="control-label">Course Duration</label>
                                <input type="text" class="form-control form-control-sm" id="courseduration" placeholder="Course Duration" ng-model="employeePQualificationInfo.courseDuration" required />
                            </div>
                        </div>
                    <#--First column end-->
                        <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                            <div class="form-group">
                                <label for="pcvendor" class="control-label">Issued By</label>
                                <select id="pcvendor" class="form-control form-control-sm" ng-model="employeePQualificationInfo.issuedBy">
                                    <option value="">Select Option</option>
                                </select>
                            </div>
                            <div class="form-group select-dynamic-add">
                                <label for="country" class="control-label">Vendor Country</label>
                                <select id="country" class="form-control form-control-sm" ng-model="employeePQualificationInfo.country">
                                    <option value="">Select Option</option>
                                    <option ng-repeat="option in countries"
                                            ng-selected="employeePQualificationInfo.country == option.name"
                                            value="{{option.name}}">{{option.name}}
                                    </option>
                                </select>
                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new" ng-click="Country();">
                                    <i class="fa fa-plus"></i>
                                </a>
                            </div>
                            <div class="form-group date required">
                                <label for="pqCertificationDate" class="control-label">Certification Date</label>
                                <input type="date" class="form-control form-control-sm" id="pqCertificationDate" ng-model="employeePQualificationInfo.certifiedDate" required />
                                <!-- /.input group -->
                            </div>
                        </div>
                        <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                            <div class="form-group date">
                                <label for="expiryDate" class="control-label">Expiry Date</label>
                                <input type="date" class="form-control mt-5 form-control-sm" id="expiryDate" ng-model="employeePQualificationInfo.expiryDate""/>
                                <!-- /.input group -->
                            </div>
                            <div class="form-group">
                                <label for="crtnotes" class="control-label">Notes</label>
                                <textarea class="form-control form-control-sm" id="crtnotes" placeholder="Notes" rows="3"  ng-model="employeePQualificationInfo.notes"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row mb-30">
        <div class="col-lg-12">
            <div class="box-footer clearfix">
                <div class="text-right">
                    <button type="submit" ng-disabled="isQualificationFormButtonDisabled" class="btn btn-gradient-success">Save</button>
                    <button type="button" ng-disabled="isQualificationFormButtonDisabled" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
                </div>
            </div>
        </div>
    </div>
</form>

<div class="row">
    <div class="col-lg-12">
        <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
            <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                <div class="flex d-flex flex-column">
                    <h3>All Professional Qualification</h3>
                    <span class="portlet-subtitle">All Professional Qualification Record</span>
                </div>
            </div>
            <div class="portlet-body no-padding">
                <div class="row no-margin">
                    <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                        <kendo-grid options="ProfessionalQualificationOptions" style="height: 180px;"></kendo-grid>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
                                    