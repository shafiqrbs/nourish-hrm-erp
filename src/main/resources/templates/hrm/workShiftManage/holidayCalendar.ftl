<div class="row" ng-controller="CompanyWorkOfCalendarController">
    <div class="col-lg-12 mb-30">
        <div class="p-3">
            <div>
                <!-- Nav tabs -->
                <ul class="nav nav-pills" role="tablist">
                    <li class="nav-item" ng-click="openShiftRosterTab('stepOneCalendar')">
                        <a class="nav-link" ng-class="{'active':ShiftRosterTab == 'stepOneCalendar'}" href="/hr#!/workShift/manage/holidayCalendar/stepOneCalendar" role="tab" data-toggle="tab">Step One</a>
                    </li>
                    <li class="nav-item" ng-click="openShiftRosterTab('stepTwoCalendar')">
                        <a class="nav-link" ng-class="{'active':ShiftRosterTab == 'stepTwoCalendar'}"  href="/hr#!/workShift/manage/holidayCalendar/stepTwoCalendar" role="tab" data-toggle="tab">Step Two</a>
                    </li>
                    <li class="nav-item" ng-click="openShiftRosterTab('stepThreeCalendar')">
                        <a class="nav-link" ng-class="{'active':ShiftRosterTab == 'stepThreeCalendar'}" href="/hr#!/workShift/manage/holidayCalendar/stepThreeCalendar" role="tab" data-toggle="tab">Step Three</a>
                    </li>

                </ul>

                <!-- Tab panes -->
                <div class="tab-content pt-3">
                    <div ng-show="isStepOneShow">
                        <#include "calendarStepOne.ftl" />
                    </div>
                    <div ng-show="isStepTwoShow">
                        <#include "calendarStepTwo.ftl" />
                    </div>
                    <div ng-show="isStepThreeShow">
                        <#include "calendarStepThree.ftl" />
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>