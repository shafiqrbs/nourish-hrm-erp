<div ng-controller="ConfigurationController" style="width:100%; height:auto; margin:0;">
    <!-- Main content -->
    <section class="content container-fluid m-top-0">

        <!--------------------------
          | Your Page Content Here |
          -------------------------->

        <div class="body-load-content-area">
            <div class="body-load-content-area-tab">
                <div class="body-content">
                    <#include "../../layout/breaddrumbs.ftl" />
                    <form class="form-horizontal form-general">
                        <div class="box-body">
                            <div class="row">
                                <div class="header-action">
                                    <div class="col-md-12">
                                        <h3 class="heading">Grade Information</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="gradename" class="col-sm-4 control-label">Grade Name</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="gradename" placeholder="Section Name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="gradecode" class="col-sm-4 control-label">Grade Code</label>
                                        <div class="col-sm-8">
                                            <input type="text" disabled class="form-control" id="gradecode" placeholder="Grade Code">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="gradedesc" class="col-sm-4 control-label">Description</label>
                                        <div class="col-sm-8">
                                            <textarea class="form-control" id="gradedesc" placeholder="Description" rows="3"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="gradenote" class="col-sm-4 control-label">Notes</label>
                                        <div class="col-sm-8">
                                            <textarea class="form-control" id="gradenote" placeholder="Notes" rows="3"></textarea>
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
                    </form>
                </div>
            </div>
        </div>

    </section>
</div>