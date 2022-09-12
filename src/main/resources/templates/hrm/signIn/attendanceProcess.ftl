<div class="row">
    <div class="col-lg-12 mb-30">
        <div class="">
            <div>
                <!-- Nav tabs -->
                <ul class="nav nav-pills pt-15" role="tablist">
                    <li class="nav-item" ng-class="{'active':SignInTab == 'stepOneAttendanceProcess'}" ng-click="openSignInTab('stepOneAttendanceProcess')">
                        <a class="nav-link active show" href="/hr#!/signIn/manage/attendanceProcess/stepOneAttendanceProcess" role="tab" data-toggle="tab">Step One</a>
                    </li>
                    <li class="nav-item" ng-class="{'active':SignInTab == 'stepTwoAttendanceProcess'}" ng-click="openSignInTab('stepTwoAttendanceProcess')">
                        <a class="nav-link" href="/hr#!/signIn/manage/attendanceProcess/stepTwoAttendanceProcess" role="tab" data-toggle="tab">Step Two</a>
                    </li>
                    <li class="nav-item" ng-class="{'active':SignInTab == 'stepThreeAttendanceProcess'}" ng-click="openSignInTab('stepThreeAttendanceProcess')">
                        <a class="nav-link" href="/hr#!/signIn/manage/attendanceProcess/stepThreeAttendanceProcess" role="tab" data-toggle="tab">Step Three</a>
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