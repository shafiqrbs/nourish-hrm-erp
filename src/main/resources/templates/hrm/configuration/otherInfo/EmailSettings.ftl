<div ng-controller="ConfigurationController" style="width:100%; height:auto; margin:0;">
    <!-- Main content -->
    <section class="content container-fluid m-top-0">

        <!--------------------------
          | Your Page Content Here |
          -------------------------->

        <div class="body-load-content-area bg-white">
            <div class="body-load-content-area-tab">
                <div class="body-content">
                    <#include "../../layout/breaddrumbs.ftl" />
                    <form class="form-horizontal form-general">
                        <div class="box-body">
                            <div class="row">
                                <div class="header-action">
                                    <div class="col-md-12">
                                        <h3 class="heading">Email Settings</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="from" class="col-sm-4 control-label">From</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="from" placeholder="From">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="fromname" class="col-sm-4 control-label">From Name</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="fromname"
                                                   placeholder="From Name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="smtphost" class="col-sm-4 control-label">SMTP Host</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="smtphost"
                                                   placeholder="SMTP Host">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">SMTP Secure</label>
                                        <div class="col-sm-8">
                                            <label>
                                                None
                                                <input type="radio" name="smtpsecure" class="iCheck">
                                            </label>
                                            <label>
                                                SSL
                                                <input type="radio" name="smtpsecure" class="iCheck">
                                            </label>
                                            <label>
                                                TLS
                                                <input type="radio" name="smtpsecure" class="iCheck" checked>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="smtpport" class="col-sm-4 control-label">SMTP Port</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="smtpport"
                                                   placeholder="SMTP Port">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">Authentication</label>
                                        <div class="col-sm-8">
                                            <label>
                                                No
                                                <input type="radio" name="smtpauthentication" class="iCheck">
                                            </label>
                                            <label>
                                                Yes
                                                <input type="radio" name="smtpauthentication" class="iCheck">
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="username" class="col-sm-4 control-label">User Name</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="username"
                                                   placeholder="User Name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="password" class="col-sm-4 control-label">Password</label>
                                        <div class="col-sm-8">
                                            <input type="password" class="form-control" id="password"
                                                   placeholder="Password">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="action-btn-add-new">
                                        <a href="" class="btn btn-info pull-right">Add</a>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="box-table">
                                        <div class="form-group header-action">
                                            <div class="col-md-12">
                                                <h3 class="heading">All Section Information</h3>
                                            </div>
                                        </div>
                                        <!-- /.box-header -->
                                        <div class="box-table-wrap">
                                            <kendo-grid options="CompanySectionOptions"></kendo-grid>
                                        </div>
                                    </div>
                                    <!-- /.box -->
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
                            $(function () {
                                //iCheck for checkbox and radio inputs
                                $('input[type="checkbox"].iCheck, input[type="radio"].iCheck').iCheck({
                                    checkboxClass: 'icheckbox_square-blue',
                                    radioClass: 'iradio_square-blue'
                                })
                            })
                        </script>
                    </form>
                </div>
            </div>
        </div>

    </section>
</div>