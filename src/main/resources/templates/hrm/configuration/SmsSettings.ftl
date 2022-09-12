<div ng-controller="SmsSettingsController" style="width:100%; height:auto; margin:0;">
    <section class="content container-fluid m-top-0">

        <!--------------------------
          | Your Page Content Here |
          -------------------------->

        <div class="body-load-content-area">
            <div class="row">
                <div class="col-md-12">
                    <div class="main-header-action">
                        <h3 class="heading">SMS Settings</h3>
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
                                        <label for="sectionName" class="col-sm-4 control-label">Section Name</label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="sMSSettings.sectionName" class="form-control" id="sectionName" placeholder="Section Name" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="sectionCode" class="col-sm-4 control-label">Section Code</label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="sMSSettings.sectionCode" disabled class="form-control" id="sectionCode" placeholder="Section Code">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="sequence" class="col-sm-4 control-label">Sequence</label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="sMSSettings.sequence" class="form-control" id="sequence" placeholder="Sequence">
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="companyName" class="col-sm-4 control-label">Company Name</label>
                                        <div class="col-sm-8 select-addition">
                                            <select ng-model="sMSSettings.companySetting" id="companyName" class="form-control" ng-options="option.companyName for option in companySetting track by option.id" required>
                                                <option value="">Select Option</option>
                                            </select>
                                            <a class="btn btn-default add-new">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="branch" class="col-sm-4 control-label">Branch</label>
                                        <div class="col-sm-8 select-addition">
                                            <select ng-model="sMSSettings.branch" id="branch" class="form-control">
                                                <option value="">Select Option</option>
                                            </select>
                                            <a class="btn btn-default add-new">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="form-group same-as-check-mark">
                                        <div class="col-sm-4">
                                        </div>
                                        <div class="col-sm-1">
                                            <input type="checkbox" class="iCheck" checked>
                                        </div>
                                        <label class="col-sm-7 control-label">Make Section default</label>
                                    </div>

                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="notes" class="col-sm-4 control-label">Notes</label>
                                        <div class="col-sm-8">
                                            <textarea ng-model="sMSSettings.notes" class="form-control" id="notes" placeholder="Notes" rows="3"></textarea>
                                        </div>
                                    </div>

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
                        <div class="row">
                            <div class="col-md-12">
                                <div class="box-table">
                                    <div class="inner-heading">
                                        <h3>All SmsSettings Information</h3>
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-table-wrap">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <kendo-grid options="CompanySmsSettingsOptions"></kendo-grid>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <script>
                            $('input[type="checkbox"].iCheck, input[type="radio"].iCheck').iCheck({
                                checkboxClass: 'icheckbox_square-blue',
                                radioClass: 'iradio_square-blue',
                                increaseArea: '20%' // optional
                            })
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