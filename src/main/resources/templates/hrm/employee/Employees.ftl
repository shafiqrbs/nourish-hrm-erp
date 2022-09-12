<div ng-controller="EmployeeGridManageController" style="width:100%; height:auto; margin:0;">

    <#include "../../layout/actionBar.ftl" />

    <!-- Main content -->
    <section class="content container-fluid">
        <!--Form Content Tab-->
        <div class="body-load-content-area">
            <div class="body-load-content-area-tab">
                <div class="row">
                    <div class="col-md-12 nav-tabs-custom">
                        <div class="tab-content">
                            <div class="active tab-pane fade in">
                                <div id="EmployeeAllData">
                                    <script type="text/x-kendo-template" id="template">
                                        <div class="toolbar">
                                            <h4 style="margin:0;">All Employees</h4>
                                        </div>
                                    </script>
                                    <kendo-grid options="EmployeeAllDataOptions" height="500"></kendo-grid>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>