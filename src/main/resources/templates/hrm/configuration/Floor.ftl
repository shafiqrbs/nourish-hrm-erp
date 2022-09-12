<div ng-controller="FloorController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="FloorForm" ng-submit="saveForm(FloorForm.$valid,floor)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="floorName" class="control-label">Floor Name</label>
                                        <input type="text" ng-model="floor.floorName" class="form-control form-control-sm" id="floorName" placeholder="Floor Name" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="floorCode" class="control-label">Floor Code</label>
                                        <input type="text" ng-model="floor.floorCode" class="form-control form-control-sm" id="floorCode" placeholder="Floor Code">
                                    </div>
                                    <div class="form-group">
                                        <label for="sequence" class="control-label">Sequence</label>
                                        <input type="number" ng-model="floor.sequence" class="form-control form-control-sm" id="sequence" placeholder="Sequence">
                                    </div>
                                </div>
                                <#--First column end-->
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="buildingName" class="control-label">Building Name</label>
                                        <select ng-model="floor.buildingName" id="buildingName" class="form-control form-control-sm" required>
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in building" ng-selected="floor.buildingName == option.buildingName" value="{{option.buildingName}}">{{option.buildingName}}</option>
                                        </select>
                                    </div>
                                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                        <input id="checked" type="checkbox" name="agree" ng-model="floor.isDefault">
                                        <label for="checked">
                                            <span class="label-checkbox"></span>
                                            <span class="label-helper">Make floor default</span>
                                        </label>
                                    </div>

                                </div>
                                <#--Second column end-->
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="notes" class="control-label">Notes</label>
                                        <textarea ng-model="floor.notes" class="form-control form-control-sm" id="notes" placeholder="Notes" rows="3"></textarea>
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
        </form>

        <div class="row">
            <div class="col-lg-12">
                <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                    <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                        <div class="flex d-flex flex-column">
                            <h3>All Floor Information</h3>
                            <span class="portlet-subtitle">All floor related information</span>
                        </div>
                    </div>
                    <div class="portlet-body no-padding">
                        <div class="row no-margin">
                            <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                <kendo-grid options="CompanyFloorOptions" height="200"></kendo-grid>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>