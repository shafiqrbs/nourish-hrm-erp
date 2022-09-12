<div class="row">
    <div class="col-lg-12 mb-30">
        <div class="p-3">
            <div>
                <!-- Nav tabs -->
                <ul class="nav nav-pills" role="tablist">
                    <li class="nav-item" ng-class="{'active':BonusTab == 'employeeSelectionBonusProcess'}" ng-click="openBonusTab('employeeSelectionBonusProcess')">
                        <a class="nav-link active show" href="/hr#!/bonus/manage/bonusProcess/employeeSelectionBonusProcess" role="tab" data-toggle="tab">Employee Selection</a>
                    </li>
                    <li class="nav-item" ng-class="{'active':BonusTab == 'processedInformationBonusProcess'}" ng-click="openBonusTab('processedInformationBonusProcess')">
                        <a class="nav-link" href="/hr#!/bonus/manage/bonusProcess/processedInformationBonusProcess" role="tab" data-toggle="tab">Processed Information</a>
                    </li>
                </ul>


            </div>
        </div>
        <!-- Tab panes -->
        <div class="tab-content pt-3">
            <div class="active tab-pane">
                <div ui-view></div>
            </div>
        </div>
    </div>

</div>