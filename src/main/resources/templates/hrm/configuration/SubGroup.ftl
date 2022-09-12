<div ng-controller="SubGroupController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="CompanySubGroupForm" ng-submit="saveForm(CompanySubGroupForm.$valid,subGroup)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="subGroupName" class="control-label">Sub Group Name</label>
                                        <input type="text" ng-model="subGroup.subGroupName" class="form-control  form-control-sm" id="subGroupName" placeholder="Sub Group Name" required="">
                                    </div>
                                    <div class="form-group">
                                        <label for="subGroupCode" class="control-label">Sub Group Code</label>
                                        <input type="text" ng-model="subGroup.subGroupCode" class="form-control form-control-sm" id="subGroupCode" placeholder="Sub Section Code">
                                    </div>
                                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                        <input id="checked" type="checkbox" name="agree" ng-model="subGroup.isDefault">
                                        <label for="checked">
                                            <span class="label-checkbox"></span>
                                            <span class="label-helper">Make SubGroup default</span>
                                        </label>
                                    </div>
                                </div>
                                <#--First column end-->
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="groupName" class="control-label">Group Name</label>
                                        <div class="select-addition">
                                            <select ng-model="subGroup.groupName" id="section" class="form-control form-control-sm" required>
                                                <option value="">Select Option</option>
                                                <option ng-repeat="option in groups" ng-selected="subGroup.groupName == option.groupName" value="{{option.groupName}}">{{option.groupName}}</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="sequence" class="control-label">Sequence</label>
                                        <input type="number" ng-model="subGroup.sequence" class="form-control form-control-sm" id="sequence" placeholder="Sequence">
                                    </div>
                                </div>
                                <#--Second column end-->
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="notes" class="control-label">Notes</label>
                                        <textarea ng-model="subGroup.notes" class="form-control form-control-sm" id="notes" placeholder="Notes" rows="3"></textarea>
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
                            <h3>All SubGroup Information</h3>
                            <span class="portlet-subtitle">All subGroup related information</span>
                        </div>
                    </div>
                    <div class="portlet-body no-padding">
                        <div class="row no-margin">
                            <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                <kendo-grid options="CompanySubGroupOptions" style="height:200px"></kendo-grid>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>