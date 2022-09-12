<div class="row mt-20 pl-20">
    <div class="col-lg-12 mb-30">
        <div class="">
            <div>
                <!-- Nav tabs -->
                <ul class="nav nav-pills pt-15" role="tablist">
                    <li class="nav-item" ng-class="{'active':SignInTab == 'stepOneOverTime'}" ng-click="openSignInTab('stepOneOverTime')">
                        <a class="nav-link active show" href="/hr#!/signIn/manage/overTimeAssignment/stepOneOverTime" role="tab" data-toggle="tab">Step One</a>
                    </li>
                    <li class="nav-item" ng-class="{'active':SignInTab == 'stepTwoOverTime'}" ng-click="openSignInTab('stepTwoOverTime')">
                        <a class="nav-link" href="/hr#!/signIn/manage/overTimeAssignment/stepTwoOverTime" role="tab" data-toggle="tab">Step Two</a>
                    </li>
                    <li class="nav-item" ng-class="{'active':SignInTab == 'stepThreeOverTime'}" ng-click="openSignInTab('stepThreeOverTime')">
                        <a class="nav-link" href="/hr#!/signIn/manage/overTimeAssignment/stepThreeOverTime" role="tab" data-toggle="tab">Step Three</a>
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