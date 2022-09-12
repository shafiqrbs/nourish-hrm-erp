<div ng-controller="bonusManageController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="EmpQualificationInfoForm" ng-submit="saveQualificationForm(EmpQualificationInfoForm.$valid,employeePQualificationInfo)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-12">
                                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                            <div class="flex d-flex flex-column">
                                                <h3>Processed Bonus Information</h3>
                                            </div>
                                        </div>
                                        <div class="portlet-body no-padding">
                                            <div class="row" style="margin: 15px 0 !important;">
                                                <div class="col-lg-12 no-border-lg-down">
                                                    <kendo-grid options="ProcessedEmployeeAllDataOptions" style="height:400px;"></kendo-grid>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    <!--
    <div class="row mb-30">
        <div class="col-lg-12">
            <div class="box-footer clearfix">
                <div class="text-right">
                    <button type="submit" class="btn btn-gradient-success">Save</button>
                    <button type="button" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
                </div>
            </div>
        </div>
    </div>
    -->
    </form>

</div>
</div>
