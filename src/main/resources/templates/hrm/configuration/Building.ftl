<div ng-controller="BuildingController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form  class="form-horizontal form-general" name="BuildingSettingForm" ng-submit="saveForm(BuildingSettingForm.$valid,building)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="buildingName" class="control-label">Building Name</label>
                                        <input type="text" ng-model="building.buildingName"  class="form-control form-control-sm" id="buildingName" placeholder="Building Name" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="buildingCode" class="control-label">Building Code</label>
                                        <input type="text" ng-model="building.buildingCode" class="form-control form-control-sm" id="buildingCode" placeholder="Building Code">
                                    </div>
                                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                        <input id="checked" type="checkbox" name="agree" ng-model="building.isDefault">
                                        <label for="checked">
                                            <span class="label-checkbox"></span>
                                            <span class="label-helper">Make Building default</span>
                                        </label>
                                    </div>
                                </div>
                                <#--First column end-->
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="companyName" class="control-label">Company Name</label>
                                        <select ng-model="building.companyName" id="companyName" class="form-control form-control-sm" required>
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in companySetting" ng-selected="building.companyName == option.companyName" value="{{option.companyName}}">{{option.companyName}}</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="sequence" class="control-label">Sequence</label>
                                        <input type="number" ng-model="building.sequence"  class="form-control form-control-sm" id="sequence" placeholder="Sequence">
                                    </div>
                                </div>
                                <#--Second column end-->
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="address" class="control-label form-control-sm">Address</label>
                                        <textarea ng-model="building.address"  class="form-control" id="address" placeholder="Address" rows="3"></textarea>
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
                            <h3>All Building Information</h3>
                            <span class="portlet-subtitle">All building related information</span>
                        </div>
                    </div>
                    <div class="portlet-body no-padding">
                        <div class="row no-margin">
                            <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                <kendo-grid options="CompanyBuildingOptions" height="200"></kendo-grid>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>