
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
                    <h3 class="heading">Company WorkOff Calendar Information Setting</h3>
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
                                            <h3>Search Criteria Setting(Optional)</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group date">
                                    <label for="SearchDate" class="col-sm-4 control-label">Search Date</label>
                                    <div class="input-group col-sm-8 date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control pull-right" id="SearchDate">
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
                            </div>

                            <div class="col-md-4">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="inner-heading">
                                            <h3>Date Setting</h3>
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
                                                <h3>Select your date(S)</h3>
                                            </div>
                                            <!-- /.box-header -->
                                            <div class="box-table-wrap">
                                                <kendo-grid options="shiftRosterDetailGridOptions"></kendo-grid>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12" style="font-size: 13px">
                                        <div class="row">
                                            <label class="col-sm-4">
                                                <input type="radio" value="Friday" name="Day" class="iCheck" checked>
                                                Friday
                                            </label>
                                            <label class="col-sm-4">
                                                <input type="radio" value="Saturday" name="Day" class="iCheck">
                                                Saturday
                                            </label>
                                            <label class="col-sm-4">
                                                <input type="radio" value="Sunday" name="Day" class="iCheck">
                                                Sunday
                                            </label>
                                        </div>
                                        <div class="row">
                                            <label class="col-sm-4">
                                                <input type="radio" value="Monday" name="Day" class="iCheck">
                                                Monday
                                            </label>
                                            <label class="col-sm-4">
                                                <input type="radio" value="Tuesday" name="Day" class="iCheck">
                                                Tuesday
                                            </label>
                                            <label class="col-sm-4">
                                                <input type="radio" value="Wednesday" name="Day" class="iCheck">
                                                Wednesday
                                            </label>
                                        </div>
                                        <div class="row">
                                            <label class="col-sm-4">
                                                <input type="radio" value="Thursday" name="Day" class="iCheck">
                                                Thursday
                                            </label>
                                            <label class="col-sm-4">
                                            </label>
                                            <label class="col-sm-4">
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group same-as-check-mark" style="margin-top:15px">
                                    <div class="col-sm-1">
                                    </div>
                                    <label class="col-sm-11 control-label"></label>
                                    <div class="col-sm-4">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="inner-heading">
                                            <h3>Shift Setting</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="ShiftID" class="col-sm-4 control-label">Default Shift For Holiday</label>
                                    <div class="col-sm-8 select-addition">
                                        <select id="ShiftID" class="form-control" required>
                                            <option value="">Select Option</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="dayType" class="col-sm-4 control-label">Day type</label>
                                    <div class="col-sm-8 select-addition">
                                        <select id="dayType" class="form-control" required>
                                            <option value="">Select Option</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="action-btn-add-new">
                                    <a href="" class="btn btn-info pull-right">Next</a>
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
                            $('#pf-entitiled').datepicker({
                                autoclose: true
                            })
                            $('#dateofjoining').datepicker({
                                autoclose: true
                            })
                            $('#dateofconf').datepicker({
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
