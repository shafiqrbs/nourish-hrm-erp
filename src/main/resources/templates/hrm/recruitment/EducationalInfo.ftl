<form class="form-horizontal form-general" name="EducationInfoForm" ng-submit="saveEducationForm(EducationInfoForm.$valid,candidateEducationInfo)">
    <div class="row">
        <div class="col-lg-12">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                <div class="portlet-body no-padding">
                    <div class="row no-margin">
                        <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                            <div class="form-group required">
                                <label for="examName" class="control-label">Type Of Education</label>
                                <select id="examName" class="form-control form-control-sm" ng-model="candidateEducationInfo.examName" required>
                                    <option value="">Select Education Type</option>
                                    <option value="PSC">PSC</option>
                                    <option value="JSC/JDC">JSC/JDC</option>
                                    <option value="SSC/Dakhil/Equivalent">SSC/Dakhil/Equivalent</option>
                                    <option value="SSC(Vocational)">SSC(Vocational)</option>
                                    <option value="HSC/Alim">HSC/Alim</option>
                                    <option value="HSC(Vocational)">HSC(Vocational)</option>
                                    <option value="HSC(BM)">HSC(BM)</option>
                                    <option value="Diploma in Commerce">Diploma in Commerce</option>
                                    <option value="Diploma in Business Studies">Diploma in Business Studies</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="instituteName" class="control-label">Institue Name</label>
                                <input type="text" class="form-control form-control-sm" id="instituteName" placeholder="Institue Name"  ng-model="candidateEducationInfo.instituteName"/>
                            </div>
                            <div class="form-group required">
                                <label for="whichGroup" class="control-label">Major Subject</label>
                                <input type="text" class="form-control form-control-sm" id="whichGroup" placeholder="Major Subject"  ng-model="candidateEducationInfo.whichGroup" required />
                            </div>
                        </div>
                    <#--First column end-->
                        <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                            <div class="form-group">
                                <label for="exmrool" class="control-label">Examination Roll</label>
                                <input type="text" class="form-control form-control-sm" id="exmrool" placeholder="Examination Roll" ng-model="candidateEducationInfo.examinationRoll" />
                            </div>
                            <div class="form-group">
                                <label for="exmreg" class="control-label">Registration No.</label>
                                <input type="text" class="form-control form-control-sm" id="exmreg" placeholder="Registration No." ng-model="candidateEducationInfo.registrationNo"/>
                            </div>
                            <div class="form-group required">
                                <label for="result" class="control-label">Result / Scrore</label>
                                <input type="text" class="form-control form-control-sm" id="result" placeholder="Result / Scrore" ng-model="candidateEducationInfo.result" required />
                            </div>
                        </div>
                        <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                            <div class="form-group select-dynamic-add">
                                <label for="educountry" class="control-label">Country</label>
                                    <select id="educountry" class="form-control form-control-sm" ng-model="candidateEducationInfo.country">
                                        <option value="">Select Option</option>
                                        <option ng-repeat="option in countries" ng-selected="candidateEducationInfo.country == option.name"
                                                value="{{option.name}}">{{option.name}}</option>
                                    </select>
                                    <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new" ng-click="Country()">
                                        <i class="fa fa-plus"></i>
                                    </a>
                            </div>
                            <div class="form-group required">
                                <label for="examYear" class="control-label">Passing Year</label>
                                <input type="number" class="form-control form-control-sm" id="examYear" placeholder="Passing Year"  ng-model="candidateEducationInfo.examYear" required />
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
                    <button type="submit" ng-disabled="isEducationFormButtonDisabled" class="btn btn-gradient-success">Save</button>
                    <button type="button" ng-disabled="isEducationFormButtonDisabled" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
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
                    <h3>All Educational Qualification</h3>
                    <span class="portlet-subtitle">All Educational Qualification Record</span>
                </div>
            </div>
            <div class="portlet-body no-padding">
                <div class="flex d-flex flex-column">
                   <kendo-grid options="educationalGridOptions" style="height: 180px;"></kendo-grid>
                </div>
            </div>
        </div>
    </div>
</div>