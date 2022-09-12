<form class="form-horizontal form-general" name="EmpOfficeInfoForm"
      ng-submit="saveOfficeForm(EmpOfficeInfoForm.$valid,employeeOfficialInfo)">
    <div class="row">
        <div class="col-lg-12">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                <div class="portlet-body no-padding">
                    <div class="row no-margin">
                        <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                            <div class="row">
                                <div class="col-lg-6">

                                    <div class="form-group">
                                        <label for="position" class="control-label">Position</label>
                                        <input type="text" class="form-control form-control-sm" id="Position"
                                               placeholder="position" ng-model="employeeOfficialInfo.position">
                                    </div>
                                    <div class="form-group select-dynamic-add">
                                        <label for="department" class="control-label">Department</label>
                                        <select id="department" class="form-control form-control-sm" ng-model="employeeOfficialInfo.department"
                                                required>
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in departments"
                                                    ng-selected="employeeOfficialInfo.department == option.name"
                                                    value="{{option.name}}">{{option.name}}
                                            </option>
                                        </select>
                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new"
                                           ng-click="Department()">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>

                                    <div class="form-group select-dynamic-add">
                                        <label for="staffCategory" class="control-label">Staff Category</label>
                                        <select id="staffCategory" class="form-control form-control-sm"
                                                ng-model="employeeOfficialInfo.staffCategory">
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in staffCategories"
                                                    ng-selected="employeeOfficialInfo.staffCategory == option.name"
                                                    value="{{option.name}}">{{option.name}}
                                            </option>
                                        </select>
                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new"
                                           ng-click="StaffCategory()">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                    <div class="form-group select-dynamic-add">
                                        <label for="skillCategoryCode" class="control-label">Skill Category</label>
                                        <select id="skillCategoryCode" class="form-control form-control-sm"
                                                ng-model="employeeOfficialInfo.skillCategoryName">
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in skillCategories"
                                                    ng-selected="employeeOfficialInfo.skillCategoryName == option.skillCatName"
                                                    value="{{option.skillCatName}}">{{option.skillCatName}}
                                            </option>
                                        </select>
                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new"
                                           ng-click="skillCategory()">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                    <div class="form-group date">
                                        <label for="dateOfS" class="control-label">DOS</label>
                                        <input type="date" class="form-control form-control-sm" id="dateOfS" ng-model="employeeOfficialInfo.dos""/>
                                        <!-- /.input group -->
                                    </div>

                                </div>

                                <div class="col-lg-6">
                                    <div class="form-group select-dynamic-add">
                                        <label for="unit" class="control-label">Work Unit</label>
                                        <select id="unit" class="form-control form-control-sm" ng-model="employeeOfficialInfo.unit" required>
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in units"
                                                    ng-selected="employeeOfficialInfo.unit == option.name"
                                                    value="{{option.name}}">{{option.name}}
                                            </option>
                                        </select>
                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new"
                                           ng-click="Unit()">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>

                                    <div class="form-group select-dynamic-add">
                                        <label for="section" class="control-label">Section</label><br/>
                                        <select id="section" class="form-control form-control-sm" ng-model="employeeOfficialInfo.section">
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in sections" ng-selected="employeeOfficialInfo.section == option.sectionName"
                                                    value="{{option.sectionName}}">{{option.sectionName}}</option>
                                        </select>
                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new"
                                           ng-click="Section()">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                    <div class="form-group date">
                                        <label for="dateOfJoining" class="control-label">Date of Joining</label>
                                        <input type="date" class="form-control form-control-sm" id="dateOfJoining" ng-model="employeeOfficialInfo.doj"/>
                                        <!-- /.input group -->
                                    </div>
                                    <div class="form-group">
                                        <label for="SpouseName" class="control-label">Gvt Designation</label>
                                        <select id="SpouseName" class="form-control form-control-sm"
                                                ng-model="employeeOfficialInfo.govtDesignation">
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in designations"
                                                    ng-selected="employeeOfficialInfo.designation == option.name"
                                                    value="{{option.name}}">{{option.name}}
                                            </option>
                                        </select>
                                        <!--
                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                        -->
                                    </div>
                                    <div class="form-group">
                                        <label for="bioRegNo" class="control-label">Bio Reg No.</label>
                                        <input type="text" class="form-control form-control-sm" id="bioRegNo" placeholder="Bio Registration No."
                                               ng-model="employeeOfficialInfo.bioRegNo">
                                    </div>


                                </div>
                            </div>








                            <!--
                            <div class="form-group select-dynamic-add">
                                <label for="skillSet" class="control-label">Skill Set</label>
                                <select id="skillSet" class="form-control form-control-sm" ng-model="employeeOfficialInfo.skillSet">
                                    <option>Select Option</option>
                                </select>
                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                    <i class="fa fa-plus"></i>
                                </a>
                            </div>
                            -->



                        </div>
                    <#--First column end-->
                        <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label for="positionName" class="control-label">Position Name</label>
                                        <select id="positionName" class="form-control form-control-sm"
                                                ng-model="employeeOfficialInfo.positionName">
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in positions"
                                                    ng-selected="employeeOfficialInfo.positionName == option.name"
                                                    value="{{option.name}}">{{option.name}}
                                            </option>
                                        </select>
                                        <!--
                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new"
                                           ng-click="PositionName()">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                        -->
                                    </div>
                                    <div class="form-group select-dynamic-add">
                                        <label for="designation" class="control-label">Designation</label>
                                        <select id="designation" class="form-control form-control-sm"
                                                ng-model="employeeOfficialInfo.designation" required>
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in designations"
                                                    ng-selected="employeeOfficialInfo.designation == option.name"
                                                    value="{{option.name}}">{{option.name}}
                                            </option>
                                        </select>
                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new" ng-click="Designation()">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                    <div class="form-group select-dynamic-add">
                                        <label for="jobLocation" class="control-label">Job Location</label>
                                        <select id="jobLocation" class="form-control form-control-sm"
                                                ng-model="employeeOfficialInfo.jobLocation">
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in jobLocations"
                                                    ng-selected="employeeOfficialInfo.jobLocation == option.name"
                                                    value="{{option.name}}">{{option.name}}
                                            </option>
                                        </select>
                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new"
                                           ng-click="JobLocation()">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                    <div class="form-group">
                                        <label for="costCenter" class="control-label">Cost Center</label>
                                        <select id="costCenter" class="form-control form-control-sm" ng-model="employeeOfficialInfo.costCenter">
                                            <option value="">Select Option</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="form-group select-dynamic-add">
                                        <label for="division" class="control-label">Division</label>
                                        <select id="division" class="form-control form-control-sm" ng-model="employeeOfficialInfo.division">
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in divisions"
                                                    ng-selected="employeeOfficialInfo.division == option.name"
                                                    value="{{option.name}}">{{option.name}}
                                            </option>
                                        </select>
                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new"
                                           ng-click="Division()">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                    <div class="form-group select-dynamic-add">
                                        <label for="subSection" class="control-label">Sub Section</label>
                                        <select id="subSection" class="form-control form-control-sm" ng-model="employeeOfficialInfo.subSection">
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in subSections" ng-selected="employeeOfficialInfo.subSection == option.subSectionName"
                                                    value="{{option.subSectionName}}">{{option.subSectionName}}</option>
                                        </select>
                                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new"
                                           ng-click="SubSection()">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                    <div class="form-group">
                                        <label for="dateOfConf" class="control-label">Date of Conf.</label>
                                        <input type="date" class="form-control form-control-sm" id="dateOfConf" ng-model="employeeOfficialInfo.doc""/>
                                        <!-- /.input group -->
                                    </div>
                                    <div class="form-group">
                                        <label for="specialMedialNote" class="control-label">Special Medial Note</label>
                                        <textarea class="form-control form-control-sm" id="specialMedialNote" rows="2"
                                         placeholder="Special Medial Note" ng-model="employeeOfficialInfo.specialMedicalNote"></textarea>
                                    </div>
                                </div>
                            </div>
                            <!--
                            <div class="form-group select-dynamic-add">
                                <label for="givenDesignation" class="control-label">Designation</label>
                                <select id="givenDesignation" class="form-control form-control-sm"
                                        ng-model="employeeOfficialInfo.givenDesignation">
                                    <option value="">Select Option</option>
                                    <option ng-repeat="option in designations"
                                            ng-selected="employeeOfficialInfo.designation == option.name"
                                            value="{{option.name}}">{{option.name}}
                                    </option>
                                </select>
                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                    <i class="fa fa-plus"></i>
                                </a>
                            </div>
                            <div class="form-group select-dynamic-add">
                                <label for="floor" class="control-label">Floor</label><br/>
                                <select id="floor" class="form-control form-control-sm" ng-model="employeeOfficialInfo.floor">
                                    <option>Select Option</option>
                                </select>
                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                    <i class="fa fa-plus"></i>
                                </a>
                            </div>
                            -->


                            <!--
                            <div class="form-group input-dynamic-add">
                                <label for="operationCode" class="control-label">Operation ID</label>
                                <input type="text" ng-model="employeeOfficialInfo.operationCode" disabled
                                       class="form-control form-control-sm" id="operationCode" placeholder="Operation ID">
                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                    <i class="fa fa-plus"></i>
                                </a>
                            </div>
                            -->



                        </div>
                        <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                            <div class="d-block">
                                <div class="customUi-checkbox checkboxUi-primary pb-2">
                                    <input id="considerServiceLength" type="checkbox" class="minimal"
                                           ng-model="employeeOfficialInfo.considerServiceLength" name="considerServiceLength">
                                    <label for="considerServiceLength">
                                        <span class="label-checkbox"></span>
                                        <span class="label-helper">Consider In Service Length</span>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="serviceLength" class="control-label">Service Length</label>
                                <select id="serviceLength" class="form-control form-control-sm"
                                        ng-model="employeeOfficialInfo.serviceLength">
                                    <option value="">Select Option</option>
                                    <option value=0>Less than 1 year</option>
                                    <option value="3">More than 3 years</option>
                                    <option value="5">More than 5 years</option>
                                    <option value="10">More than 10 years</option>
                                </select>
                            </div>
                            <div class="d-block">
                                <div class="customUi-checkbox checkboxUi-primary pb-2">
                                    <input id="isOvertime" type="checkbox" class="minimal" ng-model="employeeOfficialInfo.isOT" name="isOvertime">
                                    <label for="isOvertime">
                                        <span class="label-checkbox"></span>
                                        <span class="label-helper">Overtime</span>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="select-addition">
                                    <select id="bloodgroup" class="form-control form-control-sm" ng-model="employeeOfficialInfo.Overtime">
                                        <option>Select Option</option>
                                    </select>
                                </div>
                            </div>
                            <div class="d-block">
                                <div class="customUi-checkbox checkboxUi-primary pb-2">
                                    <input id="offday" name="overTimeDay" type="checkbox" class="minimal"
                                           ng-model="employeeOfficialInfo.isOffDayOT">
                                    <label for="offday">
                                        <span class="label-checkbox"></span>
                                        <span class="label-helper">Offday</span>
                                    </label>
                                </div>
                            </div>
                            <div class="d-block">
                                <div class="customUi-checkbox checkboxUi-primary pb-2">
                                    <input id="holiday" class="iCheck" name="overTimeDay" type="checkbox" class="minimal"
                                           ng-model="employeeOfficialInfo.isHolidayBonus">
                                    <label for="holiday">
                                        <span class="label-checkbox"></span>
                                        <span class="label-helper">Holiday</span>
                                    </label>
                                </div>
                            </div>
                            <div class="d-block">
                                <div class="customUi-checkbox checkboxUi-primary pb-2">
                                    <input id="isPF" type="checkbox" class="minimal" ng-model="employeeOfficialInfo.isPF" />
                                    <label for="isPF">
                                        <span class="label-checkbox"></span>
                                        <span class="label-helper">Provident Fund</span>
                                    </label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label for="pfEntitledDate" class="control-label">PF Entitled Date</label>
                                        <input type="date" class="form-control form-control-sm" id="pfEntitledDate" ng-model="employeeOfficialInfo.pfEntitledDate" />
                                        <!-- /.input group -->
                                    </div>
                                    <div class="d-block" hook="same-as-present">
                                        <div class="customUi-checkbox checkboxUi-primary pb-2">
                                            <input id="isInsuranceEntitled" class="iCheck" type="checkbox" class="minimal"
                                                   ng-model="employeeOfficialInfo.isInsuranceEntitled">
                                            <label for="isInsuranceEntitled">
                                                <span class="label-checkbox"></span>
                                                <span class="label-helper">Insurance</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="functionalReportingPerson" class="control-label">Reporting (Fn)</label>
                                        <select id="functionalReportingPerson" class="form-control form-control-sm"
                                                ng-model="employeeOfficialInfo.functionalReportingPerson">
                                            <option>Select Option</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label for="pFAccNo" class="control-label">Acc Nominee</label>
                                        <input type="text" class="form-control form-control-sm" id="pFAccNo" placeholder="Acc Nominee" ng-model="employeeOfficialInfo.pfAccNo">
                                    </div>
                                    <div class="form-group">
                                        <label for="insuranceAccount" class="control-label">Insurance Acc No.</label>
                                        <input type="text" class="form-control form-control-sm" id="insuranceAccount" placeholder="Insurance Acc No."
                                               ng-model="employeeOfficialInfo.insuranceAccount">
                                    </div>
                                    <div class="form-group">
                                        <label for="adminReportingPerson" class="control-label">Reporting (Admin)</label>
                                        <select id="adminReportingPerson" class="form-control form-control-sm"
                                                ng-model="employeeOfficialInfo.adminReportingPerson">
                                            <option>Select Option</option>
                                        </select>
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
            <div class="box-footer clearfix">
                <div class="text-right">
                    <button type="submit" ng-disabled="isOfficeFormButtonDisabled" class="btn btn-gradient-success">Save</button>
                    <button type="button" ng-disabled="isOfficeFormButtonDisabled" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
                </div>
            </div>
        </div>
    </div>
</form>

<style type="text/css">
    .select-dynamic-add select {
        width: 83%;
        display: inline-block;
    }
</style>