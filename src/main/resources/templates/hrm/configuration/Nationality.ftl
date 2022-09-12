<div ng-controller="NationalityController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="CountryForm" ng-submit="saveForm(CountryForm.$valid,country)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="nationalityName" class="control-label">Nationality Name</label>
                                        <input type="text" ng-model="domain.sampleName" class="form-control form-control-sm" id="nationalityName" placeholder="Nationality Name" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="displayCode" class="control-label">Display Code</label>
                                        <input type="text" ng-model="country.displayCode"  disabled class="form-control form-control-sm" id="displayCode" placeholder="Display Code">
                                    </div>
                                    <div class="form-group">
                                        <label for="sequence" class="control-label">Sequence</label>
                                        <input type="text" ng-model="country.sequenceNo"  class="form-control form-control-sm" id="sequence" placeholder="Sequence">
                                    </div>
                                </div>
                                <#--First column end-->
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                        <input id="checked" type="checkbox" ng-model="country.isDefault" name="agree" checked="">
                                        <label for="checked">
                                            <span class="label-checkbox"></span>
                                            <span class="label-helper">Make Nationality default</span>
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label for="description" class="control-label form-control-sm">Description</label>
                                        <textarea ng-model="country.descriptions"  class="form-control form-control-sm" id="description" placeholder="description" rows="3"></textarea>
                                    </div>

                                </div>
                                <#--Second column end-->
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">

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
                            <h3>All Nationalitys Information</h3>
                            <span class="portlet-subtitle">All Nationalitys related information</span>
                        </div>
                    </div>
                    <div class="portlet-body no-padding">
                        <div class="row no-margin">
                            <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                <kendo-grid options="NationalityInfoDataOptions"></kendo-grid>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>