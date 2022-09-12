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
                                    <div class="form-group date">
                                        <label for="EffectiveDate" class="col-sm-4 control-label">Effective Date</label>
                                        <div class="input-group col-sm-8 date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text" class="form-control pull-right" id="EffectiveDate" >
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="ProcessYear " class="col-sm-4 control-label">Process Year</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="ProcessYear" placeholder="Process Year" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="DaysInMonthDivideFactor " class="col-sm-4 control-label">Days in Month/Divide Factor</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="DaysInMonthDivideFactor" placeholder="Days in Month/Divide Factor" />
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
                            $(function () {
                                //Date picker
                                $('#effectivedate').datepicker({
                                    autoclose: true
                                })
                                $('#nextpromotiondate').datepicker({
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