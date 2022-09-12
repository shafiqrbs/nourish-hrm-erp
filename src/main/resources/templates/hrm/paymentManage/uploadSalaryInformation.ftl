<div ng-controller="paymentManageController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="EmpQualificationInfoForm" ng-submit="saveQualificationForm(EmpQualificationInfoForm.$valid,employeePQualificationInfo)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding">
                                            <div class="flex d-flex flex-column">
                                                <h3 class="pl-15">File Info</h3>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 mt-30 mb-30">
                                            <div class="form-group select-dynamic-add">
                                                <label for="fileName" class="control-label">File Name</label>
                                                <select id="fileName" class="form-control form-control-sm" ng-model="employeePQualificationInfo.issuedBy">
                                                    <option>Select Option</option>
                                                </select>
                                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                    <i class="fa fa-search"></i>
                                                </a>
                                            </div>

                                            <div class="form-group">
                                                <label class="text-danger control-label">Note:You can use browse button to find your specific file</label>
                                            </div>

                                            <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                <input id="checked" type="checkbox" name="agree" checked="">
                                                <label for="checked">
                                                    <span class="label-checkbox"></span>
                                                    <span class="label-helper">Sum Existing Salary</span>
                                                </label>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="box-footer clearfix">
                                                        <div class="text-right">
                                                            <button type="submit" class="btn btn-gradient-info">Get Data</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <#--First column end-->
                                <div class="col-lg-8 pt-20 pb-20 no-border-lg-down">
                                    <div class="row">
                                        <div  class="col-lg-6 pt-20 pb-20 no-border-lg-down">
                                            <div class="form-group select-dynamic-add">
                                                <label for="search" class="control-label">[Type for search]</label>
                                                <select id="search" class="form-control form-control-sm" ng-model="employeePQualificationInfo.issuedBy">
                                                    <option>Select Option</option>
                                                </select>
                                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                    <i class="fa fa-plus"></i>
                                                </a>
                                            </div>
                                            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                                    <div class="flex d-flex flex-column">
                                                        <h3>Upload Salary Information</h3>
                                                    </div>
                                                </div>
                                                <div class="portlet-body no-padding" style="min-height:200px">
                                                    <div class="row no-margin">
                                                        <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div  class="col-lg-6 pt-20 pb-20 no-border-lg-down">
                                            <div class="form-group select-dynamic-add">
                                                <label for="search1" class="control-label">[Type for search]</label>
                                                <select id="search1" class="form-control form-control-sm" ng-model="employeePQualificationInfo.issuedBy">
                                                    <option>Select Option</option>
                                                </select>
                                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                    <i class="fa fa-plus"></i>
                                                </a>
                                            </div>
                                            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                                    <div class="flex d-flex flex-column">
                                                        <h3>Rejected Information</h3>
                                                    </div>
                                                </div>
                                                <div class="portlet-body no-padding" style="min-height:200px">
                                                    <div class="row no-margin">
                                                        <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">

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
        </form>

    </div>
    <div class="row mb-30 mt-30">
        <div class="col-lg-12">
            <div class="box-footer clearfix">
                <div class="text-right">
                    <button type="submit" class="btn btn-gradient-success">Save</button>
                    <button type="button" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
                </div>
            </div>
        </div>
    </div>

</div>



