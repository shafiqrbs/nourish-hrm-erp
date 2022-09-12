<div class="row" ng-controller="employeeRuleTagController">
    <div class="col-lg-12 mb-30">
        <div class="p-3">
            <ul class="nav nav-pills" role="tablist">
                <li class="nav-item" ng-click="openEmployeeRuleTagTab('stepOne')">
                    <a class="nav-link" ng-class="{'active':EmployeeRuleTagTab == 'stepOne'}" role="tab" data-toggle="tab">Step One</a>
                </li>
                <li class="nav-item" ng-click="openEmployeeRuleTagTab('stepTwo')">
                    <a class="nav-link" ng-class="{'active':EmployeeRuleTagTab == 'stepTwo'}" role="tab" data-toggle="tab">Step Two</a>
                </li>
                <li class="nav-item" ng-click="openEmployeeRuleTagTab('stepThree')">
                    <a class="nav-link" ng-class="{'active':EmployeeRuleTagTab == 'stepThree'}" role="tab" data-toggle="tab">Step Three</a>
                </li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content pt-3">
                <div ng-show="isStepOneShow">
                    <#include "ruleTagsStepOne.ftl" />
                </div>
                <div ng-show="isStepTwoShow">
                    <#include "ruleTagsStepTwo.ftl" />
                </div>
                <div ng-show="isStepThreeShow">
                    <#include "ruleTagsStepThree.ftl" />
                </div>
            </div>
        </div>
    </div>
</div>