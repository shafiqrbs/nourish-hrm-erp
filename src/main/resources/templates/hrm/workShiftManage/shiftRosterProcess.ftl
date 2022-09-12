<div class="row" ng-controller="ShiftRosteringProcessController">
    <div class="col-lg-12 mb-30">
        <div class="p-3">
            <div>
                <!-- Nav tabs -->
                <ul class="nav nav-pills" role="tablist">
                    <li class="nav-item" ng-click="openShiftRosterTab('stepOneProcess')">
                        <a class="nav-link" ng-class="{'active':ShiftRosterTab == 'stepOneProcess'}" href="/hr#!/workShift/manage/shiftRosterProcess/stepOneProcess" role="tab" data-toggle="tab">Step One</a>
                    </li>
                    <li class="nav-item" ng-click="openShiftRosterTab('stepTwoProcess')">
                        <a class="nav-link" ng-class="{'active':ShiftRosterTab == 'stepTwoProcess'}" href="/hr#!/workShift/manage/shiftRosterProcess/stepTwoProcess" role="tab" data-toggle="tab">Step Two</a>
                    </li>
                    <li class="nav-item" ng-click="openShiftRosterTab('stepThreeProcess')">
                        <a class="nav-link" ng-class="{'active':ShiftRosterTab == 'stepThreeProcess'}" href="/hr#!/workShift/manage/shiftRosterProcess/stepThreeProcess" role="tab" data-toggle="tab">Step Three</a>
                    </li>

                </ul>

                <!-- Tab panes -->
                <div class="tab-content pt-3">
                    <div ng-show="isShiftRosterProcessStepOneShow">
                        <#include "shiftRosterProcessStepOne.ftl" />
                    </div>
                    <div ng-show="isShiftRosterProcessStepTwoShow">
                        <#include "shiftRosterProcessStepTwo.ftl" />
                    </div>
                    <div ng-show="isShiftRosterProcessStepThreeShow">
                        <#include "shiftRosterProcessStepThree.ftl" />
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>