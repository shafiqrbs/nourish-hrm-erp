<div ng-controller="skillManageController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="EmpSkillInfoForm" ng-submit="saveForm(EmpSkillInfoForm.$valid,skill)">
            <div class="row">
                <div class="col-lg-3 body-aside-table">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                            <div class="flex d-flex flex-column">
                                <div class="form-group input-dynamic-add mb-0">
                                    <input type="text" ng-enter="EmployeeGridFilter(pSearchCriteria)" ng-model="pSearchCriteria"
                                           class="form-control form-control-sm" id="employeeCodeSearchFilter" autocomplete="off"
                                           placeholder="Search criteria type here">
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
                            <div class="row">
                                <div class="col-lg-8">

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
                                        <label for="skillCategory" class="control-label">Skill Category</label>
                                        <select ng-model="skill.skillCategory" id="skillCategory" class="form-control form-control-sm" required>
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in allSkillCategoriesDDL" ng-selected="skill.skillCategory == option.skillCatName" value="{{option.skillCatName}}">{{option.skillCatName}}</option>
                                        </select>
                                        <!--<input type="text"  class="form-control form-control-sm" id="skillCategory" placeholder="Skill Category">-->
                                    </div>
                                    <div class="form-group">
                                        <label for="skillsType" class="control-label">Skills Type</label>
                                        <select ng-model="skill.skillType" id="skillsType" class="form-control form-control-sm" required>
                                            <option value="">Select Option</option>
                                            <option value="good">Good</option>
                                            <option value="excellent">Excellent</option>
                                        </select>
                                        <!-- SkillCategory
                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                        -->
                                    </div>

                                </div>
                                <#--First column end-->
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="description" class="control-label">Description</label>
                                        <textarea ng-model="skill.description" class="form-control form-control-sm" id="description" placeholder="Description" rows="5"></textarea>
                                    </div>
                                    <!--
                                    <div class="form-group">
                                        <label for="efficiency" class="control-label">Efficiency</label>
                                        <input type="text"  ng-model="skill.skillCategory" class="form-control form-control-sm" id="efficiency" placeholder="Efficiency">
                                    </div>
                                    -->
                                </div>
                                <#--Second column end-->
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">

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
                            <h3>Skills Information</h3>
                            <span class="portlet-subtitle">All Skills Information Record For Specific Employee</span>
                        </div>
                    </div>
                    <div class="portlet-body no-padding">
                        <div class="row no-margin">
                            <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                <kendo-grid options="EmployeeSkillsDataOptions" style="height:200px;"></kendo-grid>
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
