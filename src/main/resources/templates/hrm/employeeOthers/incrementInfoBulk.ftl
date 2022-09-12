<div class="row">
    <div class="col-lg-12 mb-30">
        <div class="rounded shadow-sm p-3 bg-white">
            <div>
                <!-- Nav tabs -->
                <ul class="nav nav-pills" role="tablist">
                    <li class="nav-item" ng-class="{'active':EmployeeTab == 'stepOneInfoBulk'}" ng-click="openEmployeeTab('stepOneInfoBulk')">
                        <a class="nav-link active show" href="/hr#!/employeeOthers/incrementInfo/stepOneInfoBulk" role="tab" data-toggle="tab">Step One</a>
                    </li>
                    <li class="nav-item" ng-class="{'active':EmployeeTab == 'stepTwoInfoBulk'}" ng-click="openEmployeeTab('stepTwoInfoBulk')">
                        <a class="nav-link" href="/hr#!/employeeOthers/incrementInfo/stepTwoInfoBulk" role="tab" data-toggle="tab">Step Two</a>
                    </li>
                    <li class="nav-item" ng-class="{'active':EmployeeTab == 'stepThreeInfoBulk'}" ng-click="openEmployeeTab('stepThreeInfoBulk')">
                        <a class="nav-link" href="/hr#!/employeeOthers/incrementInfo/stepThreeInfoBulk" role="tab" data-toggle="tab">Step Three</a>
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