<div ng-controller="LineController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="LineForm" ng-submit="saveForm(LineForm.$valid,line)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="lineName" class="control-label">Line Name</label>
                                        <input type="text" ng-model="line.lineName" class="form-control form-control-sm" id="lineName" placeholder="Line Name">
                                    </div>
                                    <div class="form-group">
                                        <label for="lineCode" class="control-label">Line Code</label>
                                        <input type="text" ng-model="line.lineCode" class="form-control form-control-sm" id="lineCode" placeholder="Line Code">
                                    </div>
                                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                        <input id="checked" type="checkbox" name="agree" ng-model="line.isDefault">
                                        <label for="checked">
                                            <span class="label-checkbox"></span>
                                            <span class="label-helper">Make Line default</span>
                                        </label>
                                    </div>
                                </div>
                                <#--First column end-->
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <!--
                                    <div class="form-group select-dynamic-add">
                                        <label for="building" class="control-label">Building</label>
                                        <div class="select-addition">
                                            <select ng-model="line.floors" ng-options="option.floorName for option in building track by option.id" id="buildingName" class="form-control form-control-sm" required>
                                                <option value="">Select Option</option>
                                            </select>
                                            <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                <i class="fa fa-plus"></i>
                                            </a>
                                        </div>
                                    </div>
                                    -->
                                    <div class="form-group">
                                        <label for="floor" class="control-label">Floor</label>
                                        <select ng-model="line.floorName" id="floorName" class="form-control form-control-sm" required>
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in floors" ng-selected="line.floorName == option.floorName" value="{{option.floorName}}">{{option.floorName}}</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="sequence" class="control-label">Sequence</label>
                                        <input type="text" ng-model="line.sequence" class="form-control form-control-sm" id="sequence" placeholder="Sequence">
                                    </div>
                                </div>
                                <#--Second column end-->
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="notes" class="control-label">Notes</label>
                                        <textarea ng-model="line.notes" class="form-control form-control-sm" id="notes" placeholder="Notes" rows="3"></textarea>
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
                            <h3>All Line Information</h3>
                            <span class="portlet-subtitle">All line related information</span>
                        </div>
                    </div>
                    <div class="portlet-body no-padding">
                        <div class="row no-margin">
                            <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                <kendo-grid options="CompanyLineOptions" height="200"></kendo-grid>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>