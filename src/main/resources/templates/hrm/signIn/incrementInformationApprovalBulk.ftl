<div class="row">
    <div class="col-lg-12 mb-30">
        <div class="">
            <div>
                <!-- Nav tabs -->
                <ul class="nav nav-pills pt-15" role="tablist">
                    <li class="nav-item" ng-class="{'active':SignInTab == 'stepOneIncrementBulk'}" ng-click="openSignInTab('stepOneIncrementBulk')">
                        <a class="nav-link active show" href="/hr#!/signIn/manage/incrementInformationApprovalBulk/stepOneIncrementBulk" role="tab" data-toggle="tab">Step One</a>
                    </li>
                    <li class="nav-item" ng-class="{'active':SignInTab == 'stepTwoIncrementBulk'}" ng-click="openSignInTab('stepTwoIncrementBulk')">
                        <a class="nav-link" href="/hr#!/signIn/manage/incrementInformationApprovalBulk/stepTwoIncrementBulk" role="tab" data-toggle="tab">Step Two</a>
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