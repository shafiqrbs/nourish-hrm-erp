<div class="row">
    <div class="col-lg-12 mb-30">
        <div class="">
            <div>
                <!-- Nav tabs -->
                <ul class="nav nav-pills pt-15" role="tablist">
                    <li class="nav-item" ng-class="{'active':SignInTab == 'leaveTransactionApprovalInfo'}" ng-click="openSignInTab('leaveTransactionApprovalInfo')">
                        <a class="nav-link active show" href="/hr#!/signIn/manage/leaveTransactionApprovalNew/leaveTransactionApprovalInfo" role="tab" data-toggle="tab">Leave Trans Info</a>
                    </li>
                    <li class="nav-item" ng-class="{'active':SignInTab == 'leaveTransactionApprovalHourly'}" ng-click="openSignInTab('leaveTransactionApprovalHourly')">
                        <a class="nav-link" href="/hr#!/signIn/manage/leaveTransactionApprovalNew/leaveTransactionApprovalHourly" role="tab" data-toggle="tab">Hourly Transaction</a>
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