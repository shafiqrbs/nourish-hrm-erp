<div ng-controller="LeaveManagementController" style="width:100%; height:auto; margin:0;">
    <section class="content container-fluid m-top-0">

        <!--------------------------
          | Your Page Content Here |
          -------------------------->

        <div class="body-load-content-area">
            <div class="row">
                <div class="col-md-12">
                    <div class="main-header-action">
                        <h3 class="heading">Select Leave Rule And Leave Type</h3>
                    </div>
                </div>
            </div>
            <div class="body-load-content-area-tab">
                <div class="body-content">
                    <form class="form-horizontal form-general" name="CompanySettingForm" ng-submit="saveForm(CompanySettingForm.$valid,companySettings)">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="LeaveRule" class="col-sm-4 control-label">Leave Rule</label>
                                        <div class="col-sm-8 select-addition">
                                            <select id="LeaveRule" class="form-control">
                                                <option value="">Select Option</option>
                                            </select>
                                            <a class="btn btn-default add-new">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="LeaveType" class="col-sm-4 control-label">Leave Type</label>
                                        <div class="col-sm-8 select-addition">
                                            <select id="LeaveType" class="form-control">
                                                <option value="">Select Option</option>
                                            </select>
                                            <a class="btn btn-default add-new">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-4">

                                </div>
                                <div class="col-md-4">

                                </div>
                            </div>

                        </div>

                        <!-- /.box-body -->
                        <div class="box-footer clearfix">
                            <div class="pull-right">
                                <button type="submit" class="btn btn-success">Save</button>
                                <button type="submit" class="btn btn-warning">Cancel</button>
                            </div>
                        </div>
                        <!-- /.box-footer -->
                        <script>

                        </script>
                    </form>
                </div>
            </div>
        </div>

    </section>
</div>