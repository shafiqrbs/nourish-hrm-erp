<div class="row">
    <div class="col-lg-12 mb-30">
        <div class="">
            <div>
                <!-- Nav tabs -->
                <ul class="nav nav-pills pt-15 pl-20" role="tablist">
                    <li class="nav-item" ng-class="{'active':SignInTab == 'commonInfoSeparation'}" ng-click="openSignInTab('commonInfoSeparation')">
                        <a class="nav-link active show" href="/hr#!/signIn/manage/separationApproval/commonInfoSeparation" role="tab" data-toggle="tab">Common Info</a>
                    </li>
                    <li class="nav-item" ng-class="{'active':SignInTab == 'resourceInfoSeparation'}" ng-click="openSignInTab('resourceInfoSeparation')">
                        <a class="nav-link" href="/hr#!/signIn/manage/separationApproval/resourceInfoSeparation" role="tab" data-toggle="tab">Resource Info</a>
                    </li>
                    <li class="nav-item" ng-class="{'active':SignInTab == 'loanInfoSeparation'}" ng-click="openSignInTab('loanInfoSeparation')">
                        <a class="nav-link" href="/hr#!/signIn/manage/separationApproval/loanInfoSeparation" role="tab" data-toggle="tab">Loan Info</a>
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