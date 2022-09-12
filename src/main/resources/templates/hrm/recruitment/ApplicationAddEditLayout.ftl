<#--<div class="row" ng-controller="personalManagementController">-->
<div class="row">
    <div class="col-lg-12 mb-30">
        <div class="">
            <div>
                <!-- Nav tabs -->
                <ul class="nav nav-pills" role="tablist">
                    <li class="nav-item" ng-class="{'active show':CandidatePageName == 'general'}" ng-click="openEmployeeForm('general')">
                        <a class="nav-link" href="/hr#!/recruitment/application/general" role="tab" data-toggle="tab">Application Form </a>
                    </li>
                    <li class="nav-item" ng-class="{'active show':CandidatePageName == 'emergencyInfo'}"
                        ng-click="openEmployeeForm('emergencyInfo')">
                        <a class="nav-link" href="/hr#!/recruitment/application/emergencyInfo" role="tab" data-toggle="tab">Emergency</a>
                    </li>
                    <li class="nav-item" ng-class="{'active show':CandidatePageName == 'educationalInfo'}"
                        ng-click="openEmployeeForm('educationalInfo')">
                        <a class="nav-link" href="/hr#!/recruitment/application/educationalInfo" role="tab" data-toggle="tab">Education</a>
                    </li>
                    <li class="nav-item" ng-class="{'active show':CandidatePageName == 'professionalQualification'}"
                        ng-click="openEmployeeForm('professionalQualification')">
                        <a class="nav-link" href="/hr#!/recruitment/application/professionalQualification" role="tab"
                           data-toggle="tab">Qualification</a>
                    </li>
                    <li class="nav-item" ng-class="{'active show':CandidatePageName == 'previousJobHistory'}"
                        ng-click="openEmployeeForm('previousJobHistory')">
                        <a class="nav-link" href="/hr#!/recruitment/application/previousJobHistory" role="tab" data-toggle="tab">History</a>
                    </li>
                    <li class="nav-item" ng-class="{'active show':CandidatePageName == 'language'}" ng-click="openEmployeeForm('language')">
                        <a class="nav-link" href="/hr#!/recruitment/application/language" role="tab" data-toggle="tab">Language</a>
                    </li>
                    <li class="nav-item" ng-class="{'active show':CandidatePageName == 'nomineeInfo'}"
                        ng-click="openEmployeeForm('nomineeInfo')">
                        <a class="nav-link" href="/hr#!/recruitment/application/nomineeInfo" role="tab" data-toggle="tab">Nominee
                            info</a>
                    </li>
                    <li class="nav-item" ng-class="{'active show':CandidatePageName == 'familyInfo'}"
                        ng-click="openEmployeeForm('familyInfo')">
                        <a class="nav-link" href="/hr#!/recruitment/application/familyInfo" role="tab" data-toggle="tab">Family</a>
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
<div id="printPreviewContainer"><#include "../printPreview/CandidateApplicationForm.ftl"/></div>

<style type="text/css">
    .body-aside-table-inside{
        overflow:hidden;
    }
    .k-pager-sizes, .k-pager-wrap .k-link{
        min-width:.5em !important;
    }
</style>