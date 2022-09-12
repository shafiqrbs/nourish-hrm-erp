<div class="rounded shadow-sm p-3 bg-white" ng-controller="PunchMachineController">
    <div class="row no-margin">
        <div class="col-lg-12 pl-0 pr-0">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                    <div class="flex d-flex flex-column">
                        <h3>Punch Machine Information</h3>
                    </div>
                </div>
                <div class="portlet-body no-padding">
                    <div class="row no-margin">
                        <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                            <kendo-grid options="PunchMachineDataOptions" style="height:350px;"></kendo-grid>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>