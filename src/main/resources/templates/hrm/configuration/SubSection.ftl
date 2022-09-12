<div ng-controller="SubSectionController">
    <div class="rounded shadow-sm p-3 bg-white">
        <div class="row modal-hd" ng-show="IsPopup">
            <div class="col-lg-8 modal-heading">Sub section Setting</div>
            <div class="col-lg-4 text-right modal-button">
                <a ng-click="exitModal()" class="modal-close-btn"><i class="fa fa-times" aria-hidden="true"></i></a>
            </div>
        </div>
        <form class="form-horizontal form-general" name="SubsectionForm" ng-submit="saveForm(SubsectionForm.$valid,subSection)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="subSectionName" class="control-label">Sub Section Name</label>
                                        <input type="text" ng-model="subSection.subSectionName" class="form-control form-control-sm" id="subSectionName" placeholder="Sub Section Name" required="">
                                    </div>
                                    <div class="form-group">
                                        <label for="subSectionCode" class="control-label">Sub Section Code</label>
                                        <input type="text" ng-model="subSection.subSectionCode" class="form-control form-control-sm" id="subSectionCode" placeholder="Sub Section Code">
                                    </div>
                                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                        <input id="checked" type="checkbox" name="agree" checked="">
                                        <label for="checked">
                                            <span class="label-checkbox"></span>
                                            <span class="label-helper">Make SubSection default</span>
                                        </label>
                                    </div>
                                </div>
                                <#--First column end-->
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="section" class="control-label">Section</label>
                                        <div class="select-addition">
                                            <select ng-model="subSection.sectionName" id="section" class="form-control form-control-sm" required>
                                                <option value="">Select Option</option>
                                                <option ng-repeat="option in section" ng-selected="subSection.sectionName == option.sectionName" value="{{option.sectionName}}">{{option.sectionName}}</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="sequence" class="control-label">Sequence</label>
                                        <input type="number" ng-model="subSection.sequence" class="form-control form-control-sm" id="sequence" placeholder="Sequence">
                                    </div>
                                </div>
                                <#--Second column end-->
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="notes" class="control-label">Notes</label>
                                        <textarea ng-model="subSection.notes" class="form-control form-control-sm" id="notes" placeholder="Notes" rows="3"></textarea>
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
                            <button type="submit" class="btn btn-gradient-success">Save</button>
                            <button type="button" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
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
                            <h3>All SubSection Information</h3>
                            <span class="portlet-subtitle">All subSection related information</span>
                        </div>
                    </div>
                    <div class="portlet-body no-padding">
                        <div class="row no-margin">
                            <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                <kendo-grid options="CompanySubSectionOptions" style="height:200px"></kendo-grid>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>