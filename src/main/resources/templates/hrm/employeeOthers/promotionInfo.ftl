<div ng-controller="promotionManageController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="EmpPromotionForm" ng-submit="saveForm(EmpPromotionForm.$valid,promotions)">
            <div class="row">
                <div class="col-lg-3 body-aside-table">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <div class="form-group input-dynamic-add mb-0">
                                    <input type="text" ng-model="pSearchCriteria"
                                           class="form-control form-control-sm" ng-enter="EmployeeGridFilter(pSearchCriteria)" id="operationCode"
                                           placeholder="Search criteria type here" autocomplete="off" />
                                    <a href="javascript:void(0)" ng-click="EmployeeGridFilter(pSearchCriteria)" class="btn btn-gradient-success btn-icon-o add-new">
                                        <i class="fa fa-search"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="body-aside-table-inside">
                                <div class="body-aside-table-wrap">
                                    <kendo-grid options="EmployeeAllDataOptions" style="height:450px;"></kendo-grid>
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
                                            <img width="145" height="183" src="{{profilePicture}}">
                                        </div>
                                    </div>
                                </div>
                                <#--First column end-->
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label for="salutation" class="control-label">Salutation</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.salutation">
                                            </div>
                                            <div class="form-group">
                                                <label for="mname" class="control-label">Middle Name</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.middleName">
                                            </div>
                                            <div class="form-group">
                                                <label for="nickname" class="control-label">Nick Name</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.nickName">
                                            </div>
                                            <div class="form-group">
                                                <label for="punchcard" class="control-label">Department</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.department">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label for="fname" class="control-label">First Name</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.firstName">
                                            </div>
                                            <div class="form-group">
                                                <label for="lname" class="control-label">Last Name</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.lastName">
                                            </div>
                                            <div class="form-group">
                                                <label for="punchcard" class="control-label">Punch Card No</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.punchCardNo">
                                            </div>
                                            <div class="form-group">
                                                <label for="punchcard" class="control-label">Designation</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.designation">
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label for="nid" class="control-label">NID</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.nid">
                                            </div>
                                            <div class="form-group date">
                                                <label for="dateofconfirmation" class="control-label">DOC</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.dateOfConfirmation">
                                            </div>
                                            <div class="form-group">
                                                <label for="status" class="control-label">Status</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.employeeStatus">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group date">
                                                <label for="dateofjoining" class="control-label">Date of Joining</label>
                                                <input disabled type="text" class="form-control form-control-sm" ng-model="employeeInfo.dateOfJoin">
                                            </div>
                                            <div class="form-group">
                                                <label for="nationality" class="control-label">Nationality</label>
                                                <input disabled type="text" class="form-control form-control-sm" placeholder="Nationality" ng-model="employeeInfo.nationality">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <h3>Common Information</h3>
                            </div>
                            <div class="d-flex flex justify-content-end">
                                <div class="btn-group">
                                    <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o" ng-disabled="isNewEntryButtonDisabled" ng-click="addNewEntry()">
                                        <i class="fa fa-plus"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="promotionType" class="control-label">Promotion Type</label>
                                        <select id="promotionType" class="form-control form-control-sm" ng-model="promotions.promotionType" required>
                                            <option value="">Select Option</option>
                                            <option value="General">General</option>
                                            <option value="Yearly Promotion">Yearly Promotion</option>
                                        </select>
                                        <!--
                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                        -->
                                    </div>
                                    <div class="form-group">
                                        <label for="currentposition" class="control-label">Current Position</label>
                                        <input disabled type="text" ng-model="promotions.prePosition" class="form-control form-control-sm" id="currentposition" placeholder="Current Position" ng-model="employeeGeneralInfo.nationalIDCardNo">
                                    </div>
                                </div>
                                <#--First column end-->
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group date">
                                        <label for="effectivedate" class="control-label">Effective Date</label>
                                        <input ng-model="promotions.effectiveDate" id="effectiveDate" type="date" class="form-control form-control-sm" autocomplete="off" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="promotedposition" class="control-label">Promoted Position</label>
                                        <select ng-model="promotions.promotedPosition" id="promotedPosition" class="form-control form-control-sm" required>
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in allPositionDDL" ng-selected="promotions.promotedPosition == option.name" value="{{option.name}}">{{option.name}}</option>
                                        </select>
                                        <!--
                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                        -->
                                    </div>
                                </div>
                                <#--Second column end-->
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group date">
                                        <label for="nextpromotiondate" class="control-label">Next Promotion Date</label>
                                        <input id="nextPromotionDate" type="date" ng-model="promotions.nextPromotionDate" placeholder="YYYY-MM-DD" class="form-control form-control-sm" autocomplete="off">
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
                            <button type="submit" ng-disabled="isButtonDisabled" class="btn btn-gradient-success">Save</button>
                            <button type="button" ng-disabled="isButtonDisabled" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
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
                            <h3>Promotion Information</h3>
                            <span class="portlet-subtitle">All Promotion Information Record For Specific Employee</span>
                        </div>
                    </div>
                    <div class="portlet-body no-padding">
                        <div class="row no-margin">
                            <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                               <kendo-grid options="EmployeePromotionDataOptions" style="height:200px;"></kendo-grid>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style type="text/css">
    .body-aside-table-inside{
        overflow:hidden;
    }
    .k-pager-sizes, .k-pager-wrap .k-link{
        min-width:.5em !important;
    }
</style>

<script type="text/javascript">
    $('#effectiveDate').datetimepicker({
        timepicker:false,
        mask:true,
        format:'Y-m-d',
        theme:'dark',
    });

    $('#nextPromotionDate').datetimepicker({
        timepicker:false,
        mask:true,
        format:'Y-m-d',
        theme:'dark',
    });
</script>
