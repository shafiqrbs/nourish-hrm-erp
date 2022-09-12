<div class="rounded shadow-sm p-3 bg-white" ng-controller="attendanceHistoryController">
    <div class="row no-margin">
        <div class="col-lg-12 pl-0 pr-0">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                <div class="portlet-header b-b">
                    <div class="header-title">
                        <h3>All Attendance</h3>
                    </div>
                    <div class="toolbar text-right">
                        <div class="action-btn">
                            <ul class="list-unstyled list-inline">
                                <li>Filter Date : </li>
                                <li class="search"><input type="date" ng-model="fromDate" class="form-control form-control-sm"/></li>
                                <li class="search"><input type="date" ng-model="toDate" class="form-control form-control-sm"/></li>
                                <li>
                                    <a href="javascript:void(0)" ng-click="SearchAttendanceByDateRange()" class="btn btn-gradient-success btn-icon-o">
                                        <i class="fa fa-search"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="portlet-body no-padding">
                    <div class="row no-margin">
                        <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                            <kendo-grid options="AttendanceHistoryAllDataOptions" style="height:350px;"></kendo-grid>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>