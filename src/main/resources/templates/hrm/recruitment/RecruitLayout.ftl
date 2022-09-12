<div class="row" ng-controller="recruitmentManageController">
    <div class="col-lg-3 body-aside-table">
        <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
            <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                <div class="flex d-flex flex-column">
                    <div class="form-group input-dynamic-add mb-0">
                        <input type="text" ng-model="EmployeeCode"
                               class="form-control form-control-sm" id="EmployeeCode"
                               ng-keyup="loadCandidateInfo(EmployeeCode)"
                               placeholder="Search With Employee Code">
                        <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new"
                           ng-click="loadCandidateInfo(EmployeeCode)">
                            <i class="fa fa-search"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="portlet-body no-padding">
                <div class="body-aside-table-inside">
                    <div class="body-aside-table-wrap">
                        <kendo-grid options="CandidateAllDataOptions" style="height:450px;"></kendo-grid>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-9 mb-30">
        <div ui-view></div>
    </div>
</div>

<style type="text/css">
    .body-aside-table-inside {
        overflow: hidden;
    }

    .k-pager-sizes, .k-pager-wrap .k-link {
        min-width: .5em !important;
    }
</style>