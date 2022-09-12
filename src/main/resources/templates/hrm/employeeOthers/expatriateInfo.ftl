<div ng-controller="employeeOthersController" style="width:100%; height:auto; margin:0;">
    <#include "../../layout/actionBar.ftl" />
    <section class="content container-fluid m-top-0">

        <!--------------------------
          | Your Page Content Here |
          -------------------------->

        <div class="body-load-content-area">
            <div class="row">
                <div class="col-md-12">
                    <div class="main-header-action">
                        <h3 class="heading">Expatriate Information</h3>
                    </div>
                </div>
            </div>
            <div class="body-load-content-area-tab">
                <div class="body-content">
                    <form class="form-horizontal form-general" name="CompanySettingForm"
                          ng-submit="saveForm(CompanySettingForm.$valid,companySettings)">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">Employee Photo</label>
                                        <div class="col-sm-8">
                                            <div class="employee-photo pull-right">
                                                <img src="http://via.placeholder.com/232x232"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="salutation" class="col-sm-4 control-label">Salutation</label>

                                        <div class="col-sm-8">
                                            <input disabled type="text" class="form-control" id="salutation"
                                                   placeholder="Salutation"
                                                   ng-model="employeeGeneralInfo.nationalIDCardNo">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="fname" class="col-sm-4 control-label">First Name</label>
                                        <div class="col-sm-8">
                                            <input disabled type="text" class="form-control" id="fname"
                                                   placeholder="First Name" ng-model="employeeGeneralInfo.fname">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="mname" class="col-sm-4 control-label">Middle Name</label>
                                        <div class="col-sm-8">
                                            <input disabled type="text" class="form-control" id="mname"
                                                   placeholder="Middle Name" ng-model="employeeGeneralInfo.mname">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="lname" class="col-sm-4 control-label">Last Name</label>
                                        <div class="col-sm-8">
                                            <input disabled type="text" class="form-control" id="lname"
                                                   placeholder="Last Name" ng-model="employeeGeneralInfo.lname">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="nickname" class="col-sm-4 control-label">Nick Name</label>
                                        <div class="col-sm-8">
                                            <input disabled type="text" class="form-control" id="nickname"
                                                   placeholder="Nick Name" ng-model="employeeGeneralInfo.nick">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="punchcard" class="col-sm-4 control-label">Punch Card No</label>
                                        <div class="col-sm-8">
                                            <input disabled type="text" class="form-control" id="punchcard"
                                                   placeholder="Punch Card No"
                                                   ng-model="employeeGeneralInfo.punchCardNo">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="nid" class="col-sm-4 control-label">NID</label>

                                        <div class="col-sm-8">
                                            <input disabled type="text" class="form-control" id="nid" placeholder="NID"
                                                   ng-model="employeeGeneralInfo.nationalIDCardNo">
                                        </div>
                                    </div>
                                    <div class="form-group date">
                                        <label for="dateofjoining" class="col-sm-4 control-label">Date of
                                            Joining</label>
                                        <div class="input-group col-sm-8 date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input disabled type="text" class="form-control pull-right"
                                                   id="dateofjoining" ng-model="employeeOfficeInfo.DOJ">
                                        </div>
                                        <!-- /.input group -->
                                    </div>

                                    <div class="form-group date">
                                        <label for="dateofconfirmation" class="col-sm-4 control-label">Date of
                                            Confirmation</label>
                                        <div class="input-group col-sm-8 date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input disabled type="text" class="form-control pull-right"
                                                   id="dateofconfirmation" ng-model="employeeOfficeInfo.DOC">
                                        </div>
                                        <!-- /.input group -->
                                    </div>
                                    <div class="form-group">
                                        <label for="nationality" class="col-sm-4 control-label">Nationality</label>

                                        <div class="col-sm-8">
                                            <input disabled type="text" class="form-control" id="nationality"
                                                   placeholder="Nationality"
                                                   ng-model="employeeGeneralInfo.nationalIDCardNo">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="status" class="col-sm-4 control-label">Status</label>

                                        <div class="col-sm-8">
                                            <input disabled type="text" class="form-control" id="status"
                                                   placeholder="Status" ng-model="employeeGeneralInfo.nationalIDCardNo">
                                        </div>
                                    </div>

                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                    <div class="inner-heading">
                                        <h3>Passport particular</h3>
                                    </div>
                                    <div class="form-group">
                                        <label for="fname" class="col-sm-4 control-label">Passport no:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="fname" placeholder="passport no"
                                                   ng-model="employeeGeneralInfo.fname">
                                        </div>
                                    </div>
                                    <div class="form-group date">
                                        <label for="dateofbirth" class="col-sm-4 control-label">Valid up to</label>
                                        <div class="input-group col-sm-8 date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text" class="form-control pull-right" id="dateofbirth"
                                                   ng-model="employeeGeneralInfo.dob">
                                        </div>
                                        <!-- /.input group -->
                                    </div>

                                    <div class="form-group date">
                                        <label for="dateofbirth" class="col-sm-4 control-label">Issue date</label>
                                        <div class="input-group col-sm-8 date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text" class="form-control pull-right" id="dateofbirth"
                                                   ng-model="employeeGeneralInfo.dob">
                                        </div>
                                        <!-- /.input group -->
                                    </div>

                                    <div class="form-group date">
                                        <label for="dateofbirth" class="col-sm-4 control-label">Renewal date if
                                            any</label>
                                        <div class="input-group col-sm-8 date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text" class="form-control pull-right" id="dateofbirth"
                                                   ng-model="employeeGeneralInfo.dob">
                                        </div>
                                        <!-- /.input group -->
                                    </div>

                                    <div class="form-group">
                                        <label for="status" class="col-sm-4 control-label">Issue place (city)</label>
                                        <div class="col-sm-8 select-addition">
                                            <select id="status" class="form-control" placeholder="Nick Name"
                                                    ng-model="employeeGeneralInfo.employeeStatus">
                                                <option value="">Select Option</option>
                                                <option value="Active">Dhaka</option>
                                                <option value="Inactive">Khulna</option>

                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="status" class="col-sm-4 control-label">Issue place (country)</label>
                                        <div class="col-sm-8 select-addition">
                                            <select id="status" class="form-control" placeholder="Nick Name"
                                                    ng-model="employeeGeneralInfo.employeeStatus">
                                                <option value="">Select Option</option>
                                                <option value="Active">Bangladesh</option>
                                                <option value="Inactive">USA</option>

                                            </select>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-4">
                                    <div class="inner-heading">
                                        <h3>Visa particular</h3>
                                    </div>

                                    <div class="form-group">
                                        <label for="fname" class="col-sm-4 control-label">visa no:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="fname" placeholder="visa no"
                                                   ng-model="employeeGeneralInfo.fname">
                                        </div>
                                    </div>
                                    <div class="form-group date">
                                        <label for="dateofbirth" class="col-sm-4 control-label">Valid up to</label>
                                        <div class="input-group col-sm-8 date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text" class="form-control pull-right" id="dateofbirth"
                                                   ng-model="employeeGeneralInfo.dob">
                                        </div>
                                        <!-- /.input group -->
                                    </div>

                                    <div class="form-group date">
                                        <label for="dateofbirth" class="col-sm-4 control-label">Issue date</label>
                                        <div class="input-group col-sm-8 date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text" class="form-control pull-right" id="dateofbirth"
                                                   ng-model="employeeGeneralInfo.dob">
                                        </div>
                                        <!-- /.input group -->
                                    </div>

                                    <div class="form-group date">
                                        <label for="dateofbirth" class="col-sm-4 control-label">Renewal date if
                                            any</label>
                                        <div class="input-group col-sm-8 date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text" class="form-control pull-right" id="dateofbirth"
                                                   ng-model="employeeGeneralInfo.dob">
                                        </div>
                                        <!-- /.input group -->
                                    </div>

                                    <div class="form-group">
                                        <label for="status" class="col-sm-4 control-label">Issue place (city)</label>
                                        <div class="col-sm-8 select-addition">
                                            <select id="status" class="form-control" placeholder="Nick Name"
                                                    ng-model="employeeGeneralInfo.employeeStatus">
                                                <option value="">Select Option</option>
                                                <option value="Active">Dhaka</option>
                                                <option value="Inactive">Khulna</option>

                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="status" class="col-sm-4 control-label">Issue place (country)</label>
                                        <div class="col-sm-8 select-addition">
                                            <select id="status" class="form-control" placeholder="Nick Name"
                                                    ng-model="employeeGeneralInfo.employeeStatus">
                                                <option value="">Select Option</option>
                                                <option value="Active">Bangladesh</option>
                                                <option value="Inactive">USA</option>

                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="fname" class="col-sm-4 control-label">Visa details:</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="fname"
                                                   placeholder="Visa details" ng-model="employeeGeneralInfo.fname">
                                        </div>


                                    </div>

                                </div>
                              <div class="col-md-4">

                                <div class="inner-heading">
                                    <h3>Work permit particular</h3>
                                </div>

                                <div class="form-group">
                                    <label for="fname" class="col-sm-4 control-label">work permit no:</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="fname" placeholder="passport no"
                                               ng-model="employeeGeneralInfo.fname">
                                    </div>
                                </div>
                                <div class="form-group date">
                                    <label for="dateofbirth" class="col-sm-4 control-label">Valid up to</label>
                                    <div class="input-group col-sm-8 date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control pull-right" id="dateofbirth"
                                               ng-model="employeeGeneralInfo.dob">
                                    </div>
                                    <!-- /.input group -->
                                </div>

                                <div class="form-group date">
                                    <label for="dateofbirth" class="col-sm-4 control-label">Issue date</label>
                                    <div class="input-group col-sm-8 date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control pull-right" id="dateofbirth"
                                               ng-model="employeeGeneralInfo.dob">
                                    </div>
                                    <!-- /.input group -->
                                </div>

                                <div class="form-group date">
                                    <label for="dateofbirth" class="col-sm-4 control-label">Renewal date if any</label>
                                    <div class="input-group col-sm-8 date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control pull-right" id="dateofbirth"
                                               ng-model="employeeGeneralInfo.dob">
                                    </div>
                                    <!-- /.input group -->
                                </div>

                                <div class="form-group">
                                    <label for="status" class="col-sm-4 control-label">Issue place (city)</label>
                                    <div class="col-sm-8 select-addition">
                                        <select id="status" class="form-control" placeholder="Nick Name"
                                                ng-model="employeeGeneralInfo.employeeStatus">
                                            <option value="">Select Option</option>
                                            <option value="Active">Dhaka</option>
                                            <option value="Inactive">Khulna</option>

                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="status" class="col-sm-4 control-label">Issue place (country)</label>
                                    <div class="col-sm-8 select-addition">
                                        <select id="status" class="form-control" placeholder="Nick Name"
                                                ng-model="employeeGeneralInfo.employeeStatus">
                                            <option value="">Select Option</option>
                                            <option value="Active">Bangladesh</option>
                                            <option value="Inactive">USA</option>

                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="fname" class="col-sm-4 control-label">On Factory:</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="fname"
                                               placeholder="Visa details" ng-model="employeeGeneralInfo.fname">
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