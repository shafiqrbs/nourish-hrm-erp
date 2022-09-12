<div class="row">
    <div class="col-lg-12 mb-30">
        <div class="p-3">
            <div>
                <!-- Nav tabs -->
                <ul class="nav nav-pills" role="tablist">
                    <li class="nav-item" ng-class="{'active':PaymentManageTab == 'ruleAttendancePayment'}" ng-click="openPaymentManageTab('ruleAttendancePayment')">
                        <a class="nav-link active show" href="/hr#!/payment/manage/attendancePaymentRule/ruleAttendancePayment" role="tab" data-toggle="tab">Payment Rule</a>
                    </li>
                    <li class="nav-item" ng-class="{'active':PaymentManageTab == 'criteriaAttendancePayment'}" ng-click="openPaymentManageTab('criteriaAttendancePayment')">
                        <a class="nav-link" href="/hr#!/payment/manage/attendancePaymentRule/criteriaAttendancePayment" role="tab" data-toggle="tab">Payment Criteria</a>
                    </li>
                    <li class="nav-item" ng-class="{'active':PaymentManageTab == 'policesAttendancePayment'}" ng-click="openPaymentManageTab('policesAttendancePayment')">
                        <a class="nav-link" href="/hr#!/payment/manage/attendancePaymentRule/policesAttendancePayment" role="tab" data-toggle="tab">Payment Police(s)</a>
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