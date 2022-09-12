
<div ng-controller="workShiftManageController" style="width:100%; height:auto; margin:0;">
    <!-- Content Header (Page header) -->
    <!--<section class="content-header">-->
    <!--<h1>-->
    <!--Page Header-->
    <!--<small>Optional description</small>-->
    <!--</h1>-->
    <!--<ol class="breadcrumb">-->
    <!--<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>-->
    <!--<li class="active">Here</li>-->
    <!--</ol>-->
    <!--</section>-->

    <!-- Main content -->
    <section class="content container-fluid m-top-0">

        <!--------------------------
          | Your Page Content Here |
          -------------------------->

        <!--Form Content Tab-->
        <div class="body-load-content-area">
            <div class="body-load-content-area-tab">
                <div class="row">
                    <div class="col-md-12 nav-tabs-custom">
                        <!-- TAB NAVIGATION -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li ng-class="{'active':ShiftRosterTab == 'stepOne'}" ng-click="openShiftRosterTab('stepOne')">
                                <a href="/hr#!/workShift/manage/shiftRoster/stepOne"  role="tab">Step One</a>
                            </li>
                            <li ng-class="{'active':ShiftRosterTab == 'stepTwo'}" ng-click="openShiftRosterTab('stepTwo')">
                                <a href="/hr#!/workShift/manage/shiftRoster/stepTwo" role="tab">Step Two</a>
                            </li>
                            <li ng-class="{'active':ShiftRosterTab == 'stepThree'}" ng-click="openShiftRosterTab('stepThree')">
                                <a href="/hr#!/workShift/manage/shiftRoster/stepThree" role="tab">Step Three</a>
                            </li>
                        </ul>
                        <!-- TAB CONTENT -->
                        <div class="tab-content">
                            <div class="active tab-pane fade in">
                                <div ui-view></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
</div>