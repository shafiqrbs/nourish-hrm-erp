<div ng-controller="LeaveManagementController" style="width:100%; height:auto; margin:0;">
    <section class="content container-fluid m-top-0">

        <!--------------------------
          | Your Page Content Here |
          -------------------------->

        <div class="body-load-content-area">
            <div class="row">
                <div class="col-md-12">
                    <div class="main-header-action">
                        <h3 class="heading">Leave Process List</h3>
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
                                        <label for="employeeCode" class="col-sm-4 control-label">Employee Code</label>
                                        <div class="col-sm-8 select-addition">
                                            <input type="text" class="form-control pull-left" id="employeeCode" ng-model="leaveYear.fromDate">
                                            <a class="btn btn-default add-new">
                                                <i class="fa fa-search"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="name" class="col-sm-4 control-label">Name</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="name" placeholder="Name" />
                                        </div>
                                    </div>
                                    <div class="form-group date">
                                        <label for="dateOfJoin" class="col-sm-4 control-label">Date Of Join</label>
                                        <div class="input-group col-sm-8 date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text" class="form-control pull-right" id="dateOfJoin" ng-model="leaveYear.dateOfJoin">
                                        </div>
                                        <!-- /.input group -->
                                    </div>
                                    <div class="form-group">
                                        <label for="status" class="col-sm-4 control-label">Status</label>
                                        <div class="col-sm-8 select-addition">
                                            <select id="status" class="form-control">
                                                <option value="">Select Option</option>
                                                <option value="Active">Active</option>
                                                <option value="Inactive">Inactive</option>
                                                <option value="Terminated">Terminated</option>
                                                <option value="Punished">Punished</option>
                                            </select>
                                            <a class="btn btn-default add-new">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="leaveRule" class="col-sm-4 control-label">Leave Rule</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="leaveRule" placeholder="Leave Rule" />
                                        </div>
                                    </div>
                                    <div class="form-group date">
                                        <label for="dateOfConfirmation" class="col-sm-4 control-label">Date Of Confirmation</label>
                                        <div class="input-group col-sm-8 date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text" class="form-control pull-right" id="dateOfConfirmation"/>
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
                            $('input[type="checkbox"].iCheck, input[type="radio"].iCheck').iCheck({
                                checkboxClass: 'icheckbox_square-blue',
                                radioClass: 'iradio_square-blue',
                                increaseArea: '20%' // optional
                            });
                            $(function () {
                                //Date picker
                                $('#dateOfJoin').datepicker({
                                    autoclose: true
                                })
                                $('#dateOfConfirmation').datepicker({
                                    autoclose: true
                                })

                            });
                        </script>
                    </form>
                </div>
            </div>
        </div>

    </section>
</div>