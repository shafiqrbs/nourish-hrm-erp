<form class="form-horizontal form-general"  name="EmpHistoryInfoForm" ng-submit="saveHistoryForm(EmpHistoryInfoForm.$valid,employeeHistory)">
    <div class="row">
        <div class="col-lg-12">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                <div class="portlet-body no-padding">
                    <div class="row no-margin">
                        <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                            <div class="form-group required">
                                <label for="companyName" class="control-label">Company Name</label>
                                <input type="text" class="form-control form-control-sm" id="companyName" placeholder="Company Name" ng-model="employeeHistory.companyName" required />
                            </div>
                            <div class="form-group select-dynamic-add">
                                <label for="designation" class="control-label">Designation</label>
                                <select id="designation" class="form-control form-control-sm" ng-model="employeeHistory.designation">
                                    <option value="">Select Option</option>
                                    <option ng-repeat="option in designations" ng-selected="employeeHistory.designation == option.name"
                                            value="{{option.name}}">{{option.name}}
                                    </option>
                                </select>
                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new" ng-click="Designation()">
                                    <i class="fa fa-plus"></i>
                                </a>
                            </div>
                            <div class="form-group">
                                <label for="jobResponsibility" class="control-label">Job Responsibility</label>
                                <textarea class="form-control form-control-sm" id="jobResponsibility" placeholder="Job Responsibility" ng-model="employeeHistory.jobResponsibility"></textarea>
                            </div>
                            <div class="form-group select-dynamic-add">
                                <label for="locationCountry" class="control-label">Location Country</label>
                                <select id="locationCountry" class="form-control form-control-sm" ng-model="employeeHistory.country">
                                    <option value="">Select Option</option>
                                    <option ng-repeat="option in countries"
                                            ng-selected="employeeHistory.country == option.name"
                                            value="{{option.name}}">{{option.name}}
                                    </option>
                                </select>
                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new" ng-click="Country();">
                                    <i class="fa fa-plus"></i>
                                </a>
                            </div>
                            <div class="form-group select-dynamic-add">
                                <label for="city" class="control-label">Worked City</label>
                                <select id="city" class="form-control form-control-sm" ng-model="employeeHistory.city">
                                    <option value="">Select Option</option>
                                    <option ng-repeat="option in cities"
                                            ng-selected="employeeHistory.city == option.name"
                                            value="{{option.name}}">{{option.name}}
                                    </option>
                                </select>
                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new" ng-click="City()">
                                    <i class="fa fa-plus"></i>
                                </a>
                            </div>
                            <div class="form-group">
                                <label for="address" class="control-label">Company Address</label>
                                <textarea class="form-control form-control-sm" id="address" placeholder="Address" rows="3" ng-model="employeeHistory.address"></textarea>
                            </div>
                        </div>
                    <#--First column end-->
                        <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                            <div class="form-group">
                                <label for="startingSalary" class="control-label">Starting Salary</label>
                                <input type="number" class="form-control form-control-sm" id="startingSalary" placeholder="Starting Salary"  ng-model="employeeHistory.startingSalary"/>
                            </div>
                            <div class="form-group">
                                <label for="closingSalary" class="control-label">Closing Salary</label>
                                <input type="number" class="form-control form-control-sm" id="closingSalary" placeholder="Closing Salary" ng-model="employeeHistory.closingSalary"/>
                            </div>
                            <div class="form-group select-dynamic-add">
                                <label for="currency" class="control-label">Select Currency</label>
                                <select id="currency" class="form-control form-control-sm" ng-model="employeeHistory.currency">
                                    <option value="">Select Option</option>
                                </select>
                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                    <i class="fa fa-plus"></i>
                                </a>
                            </div>
                            <div class="form-group date required">
                                <label for="prevJobStartDate" class="control-label">Start Date</label>
                                <input type="date" class="form-control form-control-sm" id="prevJobStartDate" ng-model="employeeHistory.startDate" required />
                            </div>
                            <div class="form-group date required">
                                <label for="prevJobEndDate" class="control-label">End Date</label>
                                <input type="date" class="form-control form-control-sm" id="prevJobEndDate" ng-model="employeeHistory.endDate" required />
                            </div>
                        </div>
                        <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                            <div class="form-group">
                                <label for="phone" class="control-label">Phone</label>
                                <input type="text" class="form-control form-control-sm" id="phone" placeholder="Phone" ng-model="employeeHistory.phone"/>
                            </div>

                            <div class="form-group required">
                                <label for="resignCause" class="control-label">Resign Cause</label>
                                <textarea class="form-control form-control-sm" id="resignCause" placeholder="Resign Cause" rows="2" ng-model="employeeHistory.resignCause" required></textarea>
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
                    <button type="submit" ng-disabled="isHistoryFormButtonDisabled" class="btn btn-gradient-success">Save</button>
                    <button type="button" ng-disabled="isHistoryFormButtonDisabled" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
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
                    <h3>All Experiences</h3>
                    <span class="portlet-subtitle">All Experiences Record</span>
                </div>
            </div>
            <div class="portlet-body no-padding">
                <div class="row no-margin">
                    <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                        <kendo-grid options="PreviousWorkExperienceOptions" style="height: 150px;"></kendo-grid>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>