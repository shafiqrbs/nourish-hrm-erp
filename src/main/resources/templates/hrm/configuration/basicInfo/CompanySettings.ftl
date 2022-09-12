<style type="text/css">
    .grid {
      width: 100%;
      height: 400px;
    }
</style>
<div ng-controller="CompanySettingController" style="width:100%; height:auto; margin:0;">
    <!-- Main content -->
    <section class="content container-fluid m-top-0">

        <!--------------------------
          | Your Page Content Here |
          -------------------------->

        <div class="body-load-content-area">
            <div class="body-load-content-area-tab">
                <div class="body-content">
                    <form class="form-horizontal form-general" name="CompanySettingForm" ng-submit="saveForm(CompanySettingForm.$valid,companySettings)">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="header-action">
                                        <h3 class="heading">Add Company Information</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="companyName" class="col-sm-4 control-label">Company Name</label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="companySettings.companyName" class="form-control" id="companyName" placeholder="Company Name" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="companyId" class="col-sm-4 control-label">Company ID</label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="companySettings.companyID" disabled class="form-control" id="companyId" placeholder="Company ID">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">Company Logo</label>
                                        <div class="col-sm-8">
                                            <div class="company-logo pull-right">
                                                <img src="http://via.placeholder.com/232x100" style="width:214px;">

                                                <div class="image-overly">
                                                    <a class="btn btn-default" href="#"><i
                                                            class="fa fa-upload"></i></a>
                                                    <a class="btn btn-default" href="#"><i
                                                            class="fa fa-trash"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="companyAddress" class="col-sm-4 control-label">Address</label>
                                        <div class="col-sm-8">
                                            <textarea class="form-control" ng-model="companySettings.address" id="companyAddress" placeholder="Address" rows="5"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="companyPhone" class="col-sm-4 control-label">Company Phone</label>
                                        <div class="col-sm-8">
                                            <input type="tel" ng-model="companySettings.companyPhone" class="form-control" id="companyPhone" placeholder="Company Phone">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="sequence" class="col-sm-4 control-label">Sequence</label>
                                        <div class="col-sm-8">
                                            <input type="number" ng-model="companySettings.companyName" class="form-control" id="sequence" placeholder="Sequence">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="companyCountry" class="col-sm-4 control-label">Country</label>
                                        <div class="col-sm-8 select-addition">
                                            <select ng-model="companySettings.country" id="bcompany" class="form-control" ng-options="option.name for option in allCountries track by option.id" required>
                                                <option value="">Select Option</option>
                                            </select>
                                            <a class="btn btn-default add-new">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <!--
                                    <div class="form-group">
                                        <label for="companyState" class="col-sm-4 control-label">Company State</label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="companySettings.companyState" class="form-control" id="companyState" placeholder="Company State">
                                        </div>
                                    </div>
                                    -->
                                    <div class="form-group">
                                        <label for="companyCity" class="col-sm-4 control-label">Company City</label>
                                        <div class="col-sm-8 select-addition">
                                            <select ng-model="companySettings.companyCity" id="bcompany" class="form-control" ng-options="option.name for option in allCities track by option.name" required>
                                                <option value="">Select Option</option>
                                            </select>
                                            <a class="btn btn-default add-new">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="companyZip" class="col-sm-4 control-label">Zip</label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="companySettings.zip" class="form-control" id="companyZip" placeholder="Zip">
                                        </div>
                                    </div>
                                    <div class="form-group checkmark">
                                        <div class="col-sm-4">
                                        </div>
                                        <div class="col-sm-1">
                                            <input type="checkbox" class="minimal" checked>
                                        </div>
                                        <label for="district" class="col-sm-7 control-label" style="padding:1px 0 0 4px;">Make Company default</label>
                                    </div>
                                </div>
                            </div>
                            <hr/>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="companyContact" class="col-sm-4 control-label">Contact Name</label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="companySettings.contactName" class="form-control" id="companyContact" placeholder="Contact Name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="contactPhone" class="col-sm-4 control-label">Phone</label>
                                        <div class="col-sm-8">
                                            <input type="tel" ng-model="companySettings.contactPhone" class="form-control" id="contactPhone" placeholder="Contact Phone">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="contactDesignation" class="col-sm-4 control-label">Designation</label>
                                        <div class="col-sm-8 select-addition">
                                            <select ng-model="companySettings.designation" id="contactDesignation" class="form-control">
                                                <option value="">Select Option</option>
                                            </select>
                                            <a class="btn btn-default add-new">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="contactEmail" class="col-sm-4 control-label">Contact Email</label>
                                        <div class="col-sm-8">
                                            <input type="email" ng-model="companySettings.contactEmail" class="form-control" id="contactEmail" placeholder="Contact Email">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="contactLinkedIn" class="col-sm-4 control-label">Linkedin URL</label>
                                        <div class="col-sm-8">
                                            <input type="url" ng-model="companySettings.linkedinURL" class="form-control" id="contactLinkedIn" placeholder="Linkedin URL">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="contactFb" class="col-sm-4 control-label">Facebook URL</label>
                                        <div class="col-sm-8">
                                            <input type="url" ng-model="companySettings.facebookURL" class="form-control" id="contactFb" placeholder="Facebook URL">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="pull-right">
                                        <button type="submit" class="btn btn-success">Save</button>
                                        <button type="reset" class="btn btn-warning">Cancel</button>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="box-table">
                                        <div class="form-group header-action">
                                            <div class="col-md-12">
                                                <h3 class="heading">All Company Information</h3>
                                            </div>
                                        </div>

                                        <div class="box-table-wrap">
                                           <kendo-grid options="CompanyInfoDataOptions"></kendo-grid>

                                           <!-- <div ui-grid="companySettingGrid" class="grid" ui-grid-pagination></div> -->
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </section>
</div>

