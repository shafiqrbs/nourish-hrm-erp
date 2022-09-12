
<div ng-controller="workShiftManageController" style="width:100%; height:auto; margin:0;">
<!-- Main content -->
<section class="content container-fluid m-top-0">

    <!--------------------------
      | Your Page Content Here |
      -------------------------->

    <div class="body-load-content-area">
        <div class="row">
            <div class="col-md-12">
                <div class="main-header-action">
                    <h3 class="heading">Shift Rostering InFormation Setting</h3>
                </div>
            </div>
        </div>
        <div class="body-load-content-area-tab">
            <div class="body-content">
                <form class="form-horizontal form-general">
                    <div class="box-body" style="background-color:white">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="inner-heading">
                                            <h3>Search Criteria Setting (Optional)</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group date">
                                    <label for="fromDate" class="col-sm-4 control-label">From Date</label>
                                    <div class="input-group col-sm-8 date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control pull-right" id="fromDate">
                                    </div>
                                    <!-- /.input group -->
                                </div>
                                <div class="form-group date">
                                    <label for="toDate" class="col-sm-4 control-label">To Date</label>
                                    <div class="input-group col-sm-8 date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control pull-right" id="toDate">
                                    </div>
                                    <!-- /.input group -->
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="box-table">
                                            <div class="inner-heading">
                                                <h3>Shift Rostering Detail</h3>
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
                                <div class="form-group same-as-check-mark" style="margin-top:10px">
                                    <div class="col-sm-1">
                                        <input type="checkbox" class="iCheck">
                                    </div>
                                    <label class="col-sm-11 control-label">Only those employee who have no shift rostering between this daterange and checked shift.</label>
                                </div>

                            </div>

                            <div class="col-md-4">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="inner-heading">
                                            <h3>Day(s) and Shift Setting</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group date">
                                    <label for="fromDate" class="col-sm-4 control-label">From Date</label>
                                    <div class="input-group col-sm-8 date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control pull-right" id="fromDate1">
                                    </div>
                                    <!-- /.input group -->
                                </div>

                                <div class="form-group date">
                                    <label for="ToDate" class="col-sm-4 control-label">To Date</label>
                                    <div class="input-group col-sm-8 date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control pull-right" id="ToDate">
                                    </div>
                                    <!-- /.input group -->
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="box-table">
                                            <div class="inner-heading">
                                                <h3>Shift Information</h3>
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
                                <div class="form-group same-as-check-mark" style="margin-top:10px">
                                    <div class="col-sm-1">
                                        <input type="checkbox" class="iCheck">
                                    </div>
                                    <label class="col-sm-11 control-label">System Automitacaly define default shift.</label>
                                </div>
                                <div class="form-group same-as-check-mark">
                                    <div class="col-sm-1">
                                        <input type="checkbox" class="iCheck">
                                    </div>
                                    <label class="col-sm-11 control-label">If exists then up date otherWise no need to insertnewly.(It's applicable when you selectrplaced shift)</label>
                                </div>
                                <div class="form-group same-as-check-mark" style="margin-top:10px">
                                    <div class="col-sm-1">
                                        <input type="checkbox" class="iCheck">
                                    </div>
                                    <label class="col-sm-11 control-label">Unchecked shift(s) information will be deleted.</label>
                                </div>

                            </div>

                            <div class="col-md-4">
                                <!-- this column blank -->
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-8">
                                <div class="form-group">
                                    <label class="col-sm-12 control-label" style="font-size: 15px;margin-top:10px">Note:This setting will be applicable only for selected employee(s) and unapproved data.</label>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="action-btn-add-new">
                                            <a href="" class="btn btn-info pull-right">Next</a>
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

                       $(function () {
                            //Date picker
                            $('#pqenddate').datepicker({
                                autoclose: true
                            })
                            $('#pqstartdate').datepicker({
                                autoclose: true
                            })
                        })
                    </script>
                </form>
            </div>
        </div>
    </div>

</section>
</div>
