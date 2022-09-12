<div ng-controller="signInController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="EmpQualificationInfoForm" ng-submit="saveQualificationForm(EmpQualificationInfoForm.$valid,employeePQualificationInfo)">
            <div class="row">
                <div class="col-lg-3 body-aside-table">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <div class="form-group input-dynamic-add mb-0">
                                    <input type="text" ng-model="employeeOfficialInfo.operationCode"
                                           class="form-control form-control-sm" id="operationCode"
                                           placeholder="Search With Employee Code">
                                    <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                        <i class="fa fa-search"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="portlet-body no-padding mtt0">
                            <div class="body-aside-table-inside">
                                <div class="body-aside-table-wrap">
                                    <kendo-grid options="employeeSearchInformationGridOptions"></kendo-grid>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Personal Information</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label class="control-label">Employee Photo</label>
                                        <div class="employee-photo pull-right">
                                            <img ng-src="http://via.placeholder.com/250x297" type="" width="250" height="297" src="http://via.placeholder.com/250x297">
                                            <#--<img ng-src="{{profilePicture}}" ng-show="isProfileImage"/>-->
                                            <div class="image-overly btn-group">
                                                <a class="btn btn-gradient-light" href="javascript:void(0)"><i
                                                        class="fa fa-camera"></i></a>
                                                <a class="btn btn-gradient-light" href="javascript:void(0)"><i
                                                        class="fa fa-upload"></i></a>
                                                <a class="btn btn-gradient-light" href="javascript:void(0)"><i
                                                        class="fa fa-trash"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <#--First column end-->
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="salutation" class="control-label">Salutation</label>
                                        <input disabled type="text" class="form-control form-control-sm" id="salutation" placeholder="Salutation" ng-model="employeeGeneralInfo.nationalIDCardNo">
                                    </div>
                                    <div class="form-group">
                                        <label for="fname" class="control-label">First Name</label>
                                        <input disabled type="text" class="form-control form-control-sm" id="fname" placeholder="First Name" ng-model="employeeGeneralInfo.fname">
                                    </div>
                                    <div class="form-group">
                                        <label for="mname" class="control-label">Middle Name</label>
                                        <input disabled type="text" class="form-control form-control-sm" id="mname" placeholder="Middle Name" ng-model="employeeGeneralInfo.mname">
                                    </div>
                                    <div class="form-group">
                                        <label for="lname" class="control-label">Last Name</label>
                                        <input disabled type="text" class="form-control form-control-sm" id="lname" placeholder="Last Name" ng-model="employeeGeneralInfo.lname">
                                    </div>
                                    <div class="form-group">
                                        <label for="nickname" class="control-label">Nick Name</label>
                                        <input disabled type="text" class="form-control form-control-sm" id="nickname" placeholder="Nick Name" ng-model="employeeGeneralInfo.nick">
                                    </div>
                                    <div class="form-group">
                                        <label for="punchcard" class="control-label">Punch Card No</label>
                                        <input disabled type="text" class="form-control form-control-sm" id="punchcard" placeholder="Punch Card No" ng-model="employeeGeneralInfo.punchCardNo">
                                    </div>
                                </div>
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="nid" class="control-label">NID</label>
                                        <input disabled type="text" class="form-control form-control-sm" id="nid" placeholder="NID" ng-model="employeeGeneralInfo.nationalIDCardNo">
                                    </div>
                                    <div class="form-group date">
                                        <label for="dateofjoining" class="control-label">Date of Joining</label>
                                        <input id="datetimepicker_mask" placeholder="Click Me" type="text" class="form-control form-control-sm">
                                    </div>
                                    <div class="form-group date">
                                        <label for="dateofconfirmation" class="control-label">Date of Confirmation</label>
                                        <input id="datetimepicker_mask" placeholder="Click Me" type="text" class="form-control form-control-sm">
                                    </div>
                                    <div class="form-group">
                                        <label for="nationality" class="control-label">Nationality</label>
                                        <input disabled type="text" class="form-control form-control-sm" id="nationality" placeholder="Nationality" ng-model="employeeGeneralInfo.nationalIDCardNo">
                                    </div>
                                    <div class="form-group">
                                        <label for="status" class="control-label">Status</label>
                                        <input disabled type="text" class="form-control form-control-sm" id="status" placeholder="Status" ng-model="employeeGeneralInfo.nationalIDCardNo">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Promotion Approval</h3>
                            </div>
                        </div>
                        <div class="portlet-body no-padding" style="min-height:200px">
                            <div class="row no-margin">
                                <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="customUi-checkbox checkboxUi-primary  pb-2">
                        <input id="checked" type="checkbox" name="agree" checked="">
                        <label for="checked">
                            <span class="label-checkbox"></span>
                            <span class="label-helper">Select All</span>
                        </label>
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
