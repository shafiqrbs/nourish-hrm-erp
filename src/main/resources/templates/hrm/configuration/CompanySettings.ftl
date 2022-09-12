<div ng-controller="CompanySettingController">
    <form class="form-horizontal form-general" name="CompanySettingForm"
          ng-submit="saveForm(CompanySettingForm.$valid,companySettings)">
        <div class="row">
            <div class="col-lg-12">
                <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                    <div class="portlet-body no-padding">
                        <div class="row no-margin">
                            <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                <div class="form-group">
                                    <label for="companyName" class="control-label">Company Name</label>
                                    <input type="text" ng-model="companySettings.companyName" class="form-control form-control-sm"
                                        id="companyName" placeholder="Company Name" required>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Company Logo</label>
                                    <div class="company-logo">
                                        <img src="http://via.placeholder.com/232x232" ng-show="isDefaultImage"/>
                                        <img ng-src="{{profilePicture}}" ng-show="isProfileImage"/>
                                        <div class="image-overly btn-group">
                                            <a class="btn btn-gradient-light" href="javascript:void(0)"><i
                                                    class="fa fa-upload"></i></a>
                                            <a class="btn btn-gradient-light" href="javascript:void(0)"><i
                                                    class="fa fa-trash"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                    <input id="checked" type="checkbox" name="agree" ng-model="companySettings.isDefault" />
                                    <label for="checked">
                                        <span class="label-checkbox"></span>
                                        <span class="label-helper">Make Company default</span>
                                    </label>
                                </div>
                            </div>
                        <#--First column end-->
                            <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                <div class="form-group">
                                    <label for="companyAddress" class="control-label">Address</label>
                                    <textarea class="form-control form-control-sm" ng-model="companySettings.address"
                                              id="companyAddress" placeholder="Address" rows="5"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="companyPhone" class="control-label">Company Phone</label>
                                    <input type="tel" ng-model="companySettings.companyPhone"
                                           class="form-control form-control-sm" id="companyPhone" placeholder="Company Phone">
                                </div>
                            </div>
                            <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                <div class="form-group">
                                    <label for="companyCountry" class="control-label">Country</label>
                                    <select ng-model="companySettings.country" id="companyCountry" class="form-control form-control-sm" required>
                                        <option value="">Select Option</option>
                                        <option ng-repeat="option in allCountries" ng-selected="companySettings.country == option.name" value="{{option.name}}">{{option.name}}</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="companyCity" class="control-label">Company City</label>
                                    <select ng-model="companySettings.companyCity" id="companyCity" class="form-control form-control-sm" required>
                                        <option value="">Select Option</option>
                                        <option ng-repeat="option in allCities" ng-selected="companySettings.companyCity == option.name" value="{{option.name}}">{{option.name}}</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="companyZip" class="control-label">Zip</label>
                                    <input type="text" ng-model="companySettings.zip" class="form-control form-control-sm" id="companyZip" placeholder="Zip">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                    <div class="portlet-body no-padding">
                        <div class="row no-margin">
                            <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                <div class="form-group">
                                    <label for="companyContact" class="control-label">Contact Name</label>
                                    <input type="text" ng-model="companySettings.contactName"
                                           class="form-control form-control-sm" id="companyContact" placeholder="Contact Name">
                                </div>
                                <div class="form-group">
                                    <label for="contactPhone" class="control-label">Phone</label>
                                    <input type="tel" ng-model="companySettings.contactPhone"
                                           class="form-control form-control-sm" id="contactPhone" placeholder="Contact Phone">
                                </div>
                            </div>
                        <#--First column end-->
                            <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                <div class="form-group">
                                    <label for="contactDesignation" class="control-label">Designation</label>
                                    <select ng-model="companySettings.designation" id="contactDesignation" class="form-control form-control-sm">
                                        <option value="">Select Option</option>
                                        <option ng-repeat="option in allDesignation" ng-selected="companySettings.designation == option.name" value="{{option.name}}">{{option.name}}</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="contactEmail" class="control-label">Contact Email</label>
                                    <input type="email" ng-model="companySettings.contactEmail"
                                           class="form-control form-control-sm" id="contactEmail" placeholder="Contact Email">
                                </div>
                            </div>
                            <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                <div class="form-group">
                                    <label for="contactLinkedIn" class="control-label">Linked in URL</label>
                                    <input type="text" ng-model="companySettings.linkedInInfoURL"
                                           class="form-control form-control-sm" id="contactLinkedIn" placeholder="Linkedin URL">
                                </div>
                                <div class="form-group">
                                    <label for="contactFb" class="control-label">Facebook URL</label>
                                    <input type="text" ng-model="companySettings.facebookURL"
                                           class="form-control form-control-sm" id="contactFb" placeholder="Facebook URL">
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
                        <button type="reset" class="btn btn-gradient-danger">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                    <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                        <div class="flex d-flex flex-column">
                            <h3>All Company Information</h3>
                            <span class="portlet-subtitle">All company related information</span>
                        </div>
                    </div>
                    <div class="portlet-body no-padding">
                        <div class="row no-margin">
                            <div class="col-lg-12 b-r pt-20 pb-20 no-border-lg-down">
                                <kendo-grid options="CompanyInfoDataOptions" style="height:250px;"></kendo-grid>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>