<div ng-controller="GroupsController" style="width:100%; height:auto; margin:0;">
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
                                        <h3 class="heading">Group Information</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="groupname" class="col-sm-4 control-label">Group Name</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="groupname" placeholder="Group Name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="groupcode" class="col-sm-4 control-label">Group Code</label>
                                        <div class="col-sm-8">
                                            <input type="text" disabled class="form-control" id="groupcode" placeholder="Group Code">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="sequence" class="col-sm-4 control-label">Sequence</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="sequence" placeholder="Sequence">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="companygroup" class="col-sm-4 control-label">Company</label>
                                        <div class="col-sm-8 select-addition">
                                            <select id="companygroup" class="form-control">
                                                <option>Select Option</option>
                                            </select>
                                            <a class="btn btn-default add-new">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="groupbranch" class="col-sm-4 control-label">Branch</label>
                                        <div class="col-sm-8 select-addition">
                                            <select id="groupbranch" class="form-control">
                                                <option>Select Option</option>
                                            </select>
                                            <a class="btn btn-default add-new">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="form-group checkmark">
                                        <div class="col-sm-4">
                                        </div>
                                        <div class="col-sm-1">
                                            <input type="checkbox" class="minimal" checked>
                                        </div>
                                        <label for="" class="col-sm-7 control-label">Make Group default</label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="sectionnote" class="col-sm-4 control-label">Notes</label>
                                        <div class="col-sm-8">
                                            <textarea class="form-control" id="sectionnote" placeholder="Notes" rows="3"></textarea>
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
                                                <h3 class="heading">All Group Information</h3>
                                            </div>
                                        </div>
                                        <!-- /.box-header -->
                                        <div class="box-table-wrap">
                                            <kendo-grid options="CompanyGroupOptions"></kendo-grid>
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