<div ng-controller="LeaveManagementController" style="width:100%; height:auto; margin:0;">
    <section class="content container-fluid m-top-0">

        <!--------------------------
          | Your Page Content Here |
          -------------------------->

        <div class="body-load-content-area">
            <div class="row">
                <div class="col-md-12">
                    <div class="main-header-action">
                        <h3 class="heading">Leave Encashment Information Process</h3>
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
                                        <label class="col-sm-12 control-label" style="font-size: 15px;margin-top:15px">[Type for search][Press enter for select]</label>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-4"></div>
                                        <div class="col-sm-8 select-addition">
                                            <select id="search" class="form-control" required>
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
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="box-table">
                                        <div class="inner-heading">
                                            <h3>Employee Information</h3>
                                        </div>
                                        <!-- /.box-header -->
                                        <div class="box-table-wrap">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <h4 style="text-align:center;">Under construction</h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-8">
                                    <div class="form-group same-as-check-mark" style="margin-top:10px">
                                        <div class="col-sm-1">
                                            <input type="checkbox" class="iCheck">
                                        </div>
                                        <label class="col-sm-11 control-label">Select All</label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="action-btn-add-new">
                                                <a href="" class="btn btn-info pull-right">Back</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <!-- /.box-body -->
                        <div class="box-footer clearfix">
                            <div class="pull-right">
                                <button type="submit" class="btn btn-success">Save</button>
                                <button type="button" class="btn btn-warning">Cancel</button>
                            </div>
                        </div>
                        <!-- /.box-footer -->
                        <script>
                        $('input[type="checkbox"].iCheck, input[type="radio"].iCheck').iCheck({
                            checkboxClass: 'icheckbox_square-blue',
                            radioClass: 'iradio_square-blue',
                            increaseArea: '20%' // optional
                        })
                    </script>
                    </form>
                </div>
            </div>
        </div>

    </section>
</div>