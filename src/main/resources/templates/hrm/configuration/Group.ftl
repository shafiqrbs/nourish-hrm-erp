<div ng-controller="GroupsController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="CompanyGroupForm" ng-submit="saveForm(CompanyGroupForm.$valid,groups)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="groupName" class="control-label">Group Name</label>
                                        <input type="text" ng-model="groups.groupName" class="form-control form-control-sm" id="groupName" placeholder="Group Name">
                                    </div>
                                    <div class="form-group">
                                        <label for="sequence" class="control-label">Sequence</label>
                                        <input type="number" ng-model="groups.sequence" class="form-control form-control-sm" id="sequence" placeholder="Sequence">
                                    </div>
                                </div>
                                <#--First column end-->
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="groupcode" class="control-label">Group Code</label>
                                        <input type="text" ng-model="groups.groupCode" class="form-control form-control-sm" id="groupcode" placeholder="Group Code">
                                    </div>
                                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                        <input id="checked" type="checkbox" name="agree" ng-model="groups.isDefault">
                                        <label for="checked">
                                            <span class="label-checkbox"></span>
                                            <span class="label-helper">Make Group default</span>
                                        </label>
                                    </div>

                                </div>
                                <#--Second column end-->
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="sectionNote" class="control-label">Notes</label>
                                        <textarea class="form-control form-control-sm" ng-model="groups.notes" id="sectionNote" placeholder="Notes" rows="3"></textarea>
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
                            <h3>All Group Information</h3>
                            <span class="portlet-subtitle">All group related information</span>
                        </div>
                    </div>
                    <div class="portlet-body no-padding">
                        <div class="row no-margin">
                            <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                <kendo-grid options="CompanyGroupOptions" style="height:200px"></kendo-grid>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>