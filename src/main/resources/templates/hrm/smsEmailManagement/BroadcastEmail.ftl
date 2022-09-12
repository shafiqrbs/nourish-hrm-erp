<div ng-controller="ConfigurationController" style="width:100%; height:auto; margin:0;">
    <!-- Main content -->
    <section class="content container-fluid m-top-0">

        <!--------------------------
          | Your Page Content Here |
          -------------------------->

        <div class="body-load-content-area broadecare">
            <div class="body-load-content-area-tab">
                <div class="body-content">
                    <#include "../../layout/breaddrumbs.ftl" />
                    <form class="form-horizontal form-general">
                        <div class="box-body">
                            <div class="row">
                                <div class="header-action">
                                    <div class="col-md-12">
                                        <h3 class="heading">Broadcast Email</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="from" class="col-sm-4 control-label">From</label>

                                            <input disabled type="text" class="form-control form-control-sm" id="from"
                                                   placeholder="From">

                                    </div>
                                    <div class="form-group">
                                        <label for="broadcastid" class="col-sm-4 control-label">Broadcast ID</label>

                                            <input type="text" disabled class="form-control form-control-sm" id="broadcastid"
                                                   placeholder="Broadcast ID">

                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="to" class="col-sm-1 control-label">To</label>
                                        <div class="input-addition-big">
                                            <input type="text" class="form-control form-control-sm" id="to" placeholder="To">
                                            <#--<a class="btn btn-default add-new">-->
                                                <#--<i class="fa fa-search-plus"></i>-->
                                            <#--</a>-->
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="cc" class="control-label">Cc</label>
                                        <div class="input-addition-big">
                                            <input type="text" class="form-control form-control-sm" id="cc" placeholder="Cc">
                                            <#--<a class="btn btn-default add-new">-->
                                                <#--<i class="fa fa-search-plus"></i>-->
                                            <#--</a>-->
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group broadcast-subject">
                                        <label for="subject" class="col-sm-2 control-label">Subject</label>
                                        <div class="">
                                            <input type="text" class="form-control form-control-sm" id="subject" placeholder="Subject">
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- /.box-body -->
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="box-body pad">
                                            <div class="box box-info">
                                                <div class="box-header box-header mb-20">
                                                    <h3 class="box-title">Email Content</h3>
                                                    <!-- tools box -->
                                                    <div class="pull-right box-tools">
                                                        <button type="button" class="btn btn-info btn-sm" data-widget="collapse"
                                                                data-toggle="tooltip"
                                                                title="Collapse">
                                                            <i class="fa fa-minus"></i></button>
                                                        <button type="button" class="btn btn-info btn-sm" data-widget="remove"
                                                                data-toggle="tooltip"
                                                                title="Remove">
                                                            <i class="fa fa-times"></i></button>
                                                    </div>
                                                    <!-- /. tools -->
                                                </div>
                                                <!-- /.box-header -->
                                            </div>
                                            <form>
                                                <textarea placeholder="Edit email content here" id="editor1" name="editor1" rows="10" cols="69" style="background:transparent; width:100%; border:1px solid #ddd; padding:10px 10px; color:#555;outline: none;"></textarea>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            <div class="box-footer clearfix pb-10 pt-10">
                                <div class="pull-right">
                                    <button type="submit" class="btn btn-success">Send</button>
                                    <button type="submit" class="btn btn-gradient-danger">Cancel</button>
                                </div>
                            </div>
                            <!-- /.box-footer -->
                    </form>
            </div>
        </div>

    </section>
</div>