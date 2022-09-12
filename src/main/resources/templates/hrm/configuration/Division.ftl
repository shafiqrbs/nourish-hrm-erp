<div ng-controller="DivisionController">
    <div class="rounded shadow-sm p-3 bg-white">
        <div class="row modal-hd" ng-show="IsPopup">
            <div class="col-lg-8 modal-heading">Division Setting</div>
            <div class="col-lg-4 text-right modal-button">
                <a ng-click="exitModal()" class="modal-close-btn"><i class="fa fa-times" aria-hidden="true"></i></a>
            </div>
        </div>
        <form class="form-horizontal form-general" name="DivisionForm" ng-submit="saveForm(DivisionForm.$valid,division)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="divisionName" class="control-label">Division Name</label>
                                        <input type="text" ng-model="division.name" class="form-control form-control-sm" id="divisionName" placeholder="Division Name" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="sequence" class="control-label">Sequence</label>
                                        <input type="number" ng-model="division.sequenceNo"  class="form-control form-control-sm" id="sequence" placeholder="Sequence">
                                    </div>
                                </div>
                                <#--First column end-->
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="displayCode" class="control-label">Display Code</label>
                                        <input type="text" ng-model="division.displayCode" class="form-control form-control-sm" id="displayCode" placeholder="Display Code">
                                        <div class="col-sm-8">
                                        </div>
                                    </div>
                                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                        <input id="checked" type="checkbox" name="agree" ng-model="division.isDefault" />
                                        <label for="checked">
                                            <span class="label-checkbox"></span>
                                            <span class="label-helper">Make Division default</span>
                                        </label>
                                    </div>
                                </div>
                                <#--Second column end-->
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="description" class="control-label form-control-sm">Description</label>
                                        <textarea ng-model="division.descriptions"  class="form-control form-control-sm" id="description" placeholder="description" rows="3"></textarea>
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
                            <h3>All Divisions Information</h3>
                            <span class="portlet-subtitle">All divisions related information</span>
                        </div>
                    </div>
                    <div class="portlet-body no-padding">
                        <div class="row no-margin">
                            <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                <kendo-grid options="DivisionDataOptions" style="height:200px;"></kendo-grid>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>