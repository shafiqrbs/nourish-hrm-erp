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
                            <div class="row justify-content-center">
                                    <div class="col-lg-4 text-center">
                                        <h3 class="heading">Broadcast SMS</h3>
                                    </div>
                            </div>
                            <div class="row justify-content-center">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="from" class="col-sm-4 control-label">From</label>
                                        <div class="col-sm-12">
                                            <input disabled type="text" class="form-control form-control-sm" id="from"
                                                   placeholder="From">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="broadcastid" class="col-sm-4 control-label">Broadcast ID</label>
                                        <div class="col-sm-12">
                                            <input type="text" disabled class="form-control form-control-sm" id="broadcastid"
                                                   placeholder="Broadcast ID">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="to" class="col-sm-4 control-label">To</label>
                                        <div class="col-sm-12 input-addition-small">
                                            <input type="text" class="form-control form-control-sm" id="to" placeholder="To">
                                            <#--<a class="btn btn-default add-new">-->
                                                <#--<i class="fa fa-search-plus"></i>-->
                                            <#--</a>-->
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="sms" class="col-sm-4 control-label">Sms</label>
                                        <div class="col-sm-12">
                                            <textarea class="form-control" id="sms" placeholder="Sms" rows="5"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer  text-right mb-30">
                                <div class="pull-right">
                                    <button type="submit" class="btn btn-success">Send</button>
                                    <button type="submit" class="btn btn-gradient-danger">Cancel</button>
                                </div>
                            </div>
                            <!-- /.box-footer -->
                    </form>
                </div>
            </div>
        </div>

    </section>
</div>