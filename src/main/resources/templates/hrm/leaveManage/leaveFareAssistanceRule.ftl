<div ng-controller="LeaveManagementController" style="width:100%; height:auto; margin:0;">
    <section class="content container-fluid m-top-0">

        <!--------------------------
          | Your Page Content Here |
          -------------------------->

        <div class="body-load-content-area">
            <div class="row">
                <div class="col-md-12">
                    <div class="main-header-action">
                        <h3 class="heading">Leave Fare Assistance Rule</h3>
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
                                        <label for="publicationTitle" class="col-sm-4 control-label">Leave Rule Info</label>
                                        <div class="col-sm-8">
                                            <input type="text"  class="form-control" id="publicationTitle" placeholder="Publication Title">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="description" class="col-sm-4 control-label">Description</label>
                                        <div class="col-sm-8">
                                            <textarea class="form-control" id="descriptions" placeholder="Descriptions" rows="3"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="LeaveCanBeEntitledFrom" class="col-sm-4 control-label">Leave can be Entitled from </label>
                                        <div class="col-sm-8 select-addition">
                                            <select id="LeaveCanBeEntitledFrom" class="form-control">
                                                <option value="">Select Option</option>
                                            </select>
                                            <a class="btn btn-default add-new">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="LeaveCanBeAvailedFrom" class="col-sm-4 control-label">Leave can be Availed from </label>
                                        <div class="col-sm-8 select-addition">
                                            <select id="LeaveCanBeAvailedFrom" class="form-control">
                                                <option value="">Select Option</option>
                                            </select>
                                            <a class="btn btn-default add-new">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">Is it possible to carry forward</label>
                                        <div class="col-sm-8" style="font-size: 13px">
                                            <label>
                                                <input type="radio" value="Yes" name="CarryForward" class="iCheck" checked>
                                                Yes
                                            </label>
                                            <label>
                                                <input type="radio" value="No" name="CarryForward" class="iCheck">
                                                No
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="DependsOn" class="col-sm-4 control-label">Depends on </label>
                                        <div class="col-sm-8 select-addition">
                                            <select id="DependsOn" class="form-control">
                                                <option value="">Select Option</option>
                                            </select>
                                            <a class="btn btn-default add-new">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="minTransaction" class="col-sm-4 control-label">Min Transaction</label>
                                        <div class="col-sm-8">
                                            <input type="text"  class="form-control" id="minTransaction" placeholder="Min Transaction ( Days )">
                                        </div>
                                    </div>
                                    <div class="form-group" style="margin-top:20px">
                                        <div class="col-sm-4">
                                        </div>
                                        <div class="col-sm-8" style="font-size: 13px">
                                            <label>
                                                <input type="radio" value="Fixed Days" name="Radio1" class="iCheck" checked>
                                                Fixed Days
                                            </label>
                                            <label>
                                                <input type="radio" value="Service Length" name="Radio1" class="iCheck">
                                                Service Length
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-4">
                                        </div>
                                        <div class="col-sm-8">
                                            <input type="text"  class="form-control" id="days" placeholder="( Days )">
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <div class="col-sm-4">
                                        </div>
                                        <div class="col-sm-8" style="font-size: 13px">
                                            <label>
                                                <input type="radio" value="Fixed" name="Radio2" class="iCheck" checked>
                                                Fixed
                                            </label>
                                            <label>
                                                <input type="radio" value="Percentage" name="Radio2" class="iCheck">
                                                Percentage
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="leaveType" class="col-sm-4 control-label">Head</label>
                                        <div class="col-sm-8 select-addition">
                                            <select id="leaveType" class="form-control">
                                                <option value="">Select Option</option>
                                            </select>
                                            <a class="btn btn-default add-new">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="calculateAfter" class="col-sm-4 control-label">Amount %</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control pull-left" placeholder="Amount %" id="calculateAfter">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="action-btn-add-new">
                                                <a href="" class="btn btn-info pull-right">Define Policy</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="box-table">
                                                <div class="inner-heading">
                                                    <h3>Defined Policy</h3>
                                                </div>
                                                <!-- /.box-header -->
                                                <div class="box-table-wrap">
                                                    <!--
                                                        <kendo-grid options="LeaveAllocationInformationList"></kendo-grid>
                                                    -->
                                                </div>
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