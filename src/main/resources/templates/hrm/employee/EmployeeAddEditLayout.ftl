<div class="row" ng-controller="personalManagementController">
    <div class="col-lg-3 body-aside-table">
        <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
            <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                <div class="flex d-flex flex-column">
                    <div class="form-group input-dynamic-add mb-0">
                        <input type="text" ng-model="pSearchCriteria"
                               class="form-control form-control-sm" id="pSearchCriteria"
                               ng-enter="loadGeneralEmployeeInfo(pSearchCriteria)"
                               placeholder="Search criteria type here">
                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new"
                            ng-click="loadGeneralEmployeeInfo(EmployeeCode)">
                            <i class="fa fa-search"></i>
                        </a>
                        <a href="javascript:void(0)" ng-disabled="isNewEmployeeButtonDisabled" class="btn btn-gradient-success btn-icon-o add-new"
                            ng-click="addNewEmployee()"><i class="fa fa-plus"></i>
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
    <div class="col-lg-9 mb-30">
        <div class="">
            <div>
                <!-- Nav tabs -->
                <ul class="nav nav-pills" role="tablist">
                    <li class="nav-item" ng-class="{'active show':EmployeeTab == 'general'}" ng-click="openEmployeeForm('general')">
                        <a class="nav-link" href="/hr#!/employees/employee/general" role="tab" data-toggle="tab">General </a>
                    </li>
                    <li class="nav-item" ng-class="{'active show':EmployeeTab == 'officeInfo'}"
                        ng-click="openEmployeeForm('officeInfo')">
                        <a class="nav-link" href="/hr#!/employees/employee/officeInfo" role="tab" data-toggle="tab">Official</a>
                    </li>
                    <li class="nav-item" ng-class="{'active show':EmployeeTab == 'ruleInfo'}" ng-click="openEmployeeForm('ruleInfo')">
                        <a class="nav-link" href="/hr#!/employees/employee/ruleInfo" role="tab" data-toggle="tab">Rule</a>
                    </li>
                    <li class="nav-item" ng-class="{'active show':EmployeeTab == 'emergencyInfo'}"
                        ng-click="openEmployeeForm('emergencyInfo')">
                        <a class="nav-link" href="/hr#!/employees/employee/emergencyInfo" role="tab" data-toggle="tab">Emergency</a>
                    </li>
                    <li class="nav-item" ng-class="{'active show':EmployeeTab == 'educationalInfo'}"
                        ng-click="openEmployeeForm('educationalInfo')">
                        <a class="nav-link" href="/hr#!/employees/employee/educationalInfo" role="tab" data-toggle="tab">Education</a>
                    </li>
                    <li class="nav-item" ng-class="{'active show':EmployeeTab == 'professionalQualification'}"
                        ng-click="openEmployeeForm('professionalQualification')">
                        <a class="nav-link" href="/hr#!/employees/employee/professionalQualification" role="tab"
                           data-toggle="tab">Qualification</a>
                    </li>
                    <li class="nav-item" ng-class="{'active show':EmployeeTab == 'previousJobHistory'}"
                        ng-click="openEmployeeForm('previousJobHistory')">
                        <a class="nav-link" href="/hr#!/employees/employee/previousJobHistory" role="tab" data-toggle="tab">History</a>
                    </li>
                    <li class="nav-item" ng-class="{'active show':EmployeeTab == 'language'}" ng-click="openEmployeeForm('language')">
                        <a class="nav-link" href="/hr#!/employees/employee/language" role="tab" data-toggle="tab">Language</a>
                    </li>
                    <li class="nav-item" ng-class="{'active show':EmployeeTab == 'nomineeInfo'}"
                        ng-click="openEmployeeForm('nomineeInfo')">
                        <a class="nav-link" href="/hr#!/employees/employee/nomineeInfo" role="tab" data-toggle="tab">Nominee
                            info</a>
                    </li>
                    <li class="nav-item" ng-class="{'active show':EmployeeTab == 'familyInfo'}"
                        ng-click="openEmployeeForm('familyInfo')">
                        <a class="nav-link" href="/hr#!/employees/employee/familyInfo" role="tab" data-toggle="tab">Family</a>
                    </li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content pt-3">
                    <div class="active tab-pane">
                        <div ui-view></div>
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