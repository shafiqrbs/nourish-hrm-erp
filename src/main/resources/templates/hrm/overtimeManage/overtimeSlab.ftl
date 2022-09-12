<div ng-controller="overtimeManageController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="EmpQualificationInfoForm" ng-submit="saveQualificationForm(EmpQualificationInfoForm.$valid,employeePQualificationInfo)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">

                                    <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding">
                                        <div class="flex d-flex flex-column">
                                            <h3>Slab Information</h3>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group select-dynamic-add">
                                                <label for="slabType" class="control-label">Slab Type</label><br/>
                                                <select id="slabType" class="form-control form-control-sm" ng-model="employeePQualificationInfo.issuedBy">
                                                    <option>Select Option</option>
                                                </select>
                                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                    <i class="fa fa-plus"></i>
                                                </a>
                                            </div>
                                            <div class="form-group">
                                                <label for="Rate" class="control-label">Rate</label>
                                                <input type="text" class="form-control form-control-sm" id="Rate" placeholder="Rate">
                                            </div>
                                            <div class="form-group select-dynamic-add">
                                                <label for="Sequence" class="control-label">Sequence</label><br/>
                                                <select id="Sequence" class="form-control form-control-sm" ng-model="employeePQualificationInfo.issuedBy">
                                                    <option>Select Option</option>
                                                </select>
                                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                    <i class="fa fa-plus"></i>
                                                </a>
                                            </div>
                                            <div class="form-group select-dynamic-add">
                                                <label for="salaryHead" class="control-label">Salary Head</label><br/>
                                                <select id="salaryHead" class="form-control form-control-sm" ng-model="employeePQualificationInfo.issuedBy">
                                                    <option>Select Option</option>
                                                </select>
                                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                    <i class="fa fa-plus"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label class="control-label text-danger">Note:Slab Type must be unique</label>
                                            </div>
                                            <div class="form-group">
                                                <label for="Duration" class="control-label">Duration</label>
                                                <input type="number" class="form-control form-control-sm" id="Duration" placeholder="Duration(Hour)">
                                            </div>
                                            <div class="form-group">
                                                <label for="descriptions" class="control-label">Descriptions</label>
                                                <textarea class="form-control form-control-sm" id="descriptions" placeholder="Extra hour" rows="5"></textarea>
                                            </div>
                                        </div>
                                    </div>









                                </div>
                                <#--First column end-->
                                <div class="col-lg-8 pt-20 pb-20 no-border-lg-down">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                                    <div class="flex d-flex flex-column">
                                                        <h3>Overtime Slab Information</h3>
                                                    </div>
                                                </div>
                                                <div class="portlet-body no-padding">
                                                    <div class="row no-margin">
                                                        <div class="col-lg-12 b-r pt-20 pb-20 no-border-lg-down mtt0">
                                                            <kendo-grid options="shiftRosterDetailGridOptions"></kendo-grid>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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

    </div>
</div>
