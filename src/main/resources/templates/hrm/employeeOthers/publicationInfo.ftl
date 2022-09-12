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
                        <h3 class="heading">Publication Information</h3>
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
                                            <input disabled type="text" class="form-control" id="salutation" placeholder="Salutation" ng-model="employeeGeneralInfo.nationalIDCardNo">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="fname" class="col-sm-4 control-label">First Name</label>
                                        <div class="col-sm-8">
                                            <input disabled type="text" class="form-control" id="fname" placeholder="First Name" ng-model="employeeGeneralInfo.fname">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="mname" class="col-sm-4 control-label">Middle Name</label>
                                        <div class="col-sm-8">
                                            <input disabled type="text" class="form-control" id="mname" placeholder="Middle Name" ng-model="employeeGeneralInfo.mname">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="lname" class="col-sm-4 control-label">Last Name</label>
                                        <div class="col-sm-8">
                                            <input disabled type="text" class="form-control" id="lname" placeholder="Last Name" ng-model="employeeGeneralInfo.lname">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="nickname" class="col-sm-4 control-label">Nick Name</label>
                                        <div class="col-sm-8">
                                            <input disabled type="text" class="form-control" id="nickname" placeholder="Nick Name" ng-model="employeeGeneralInfo.nick">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="punchcard" class="col-sm-4 control-label">Punch Card No</label>
                                        <div class="col-sm-8">
                                            <input disabled type="text" class="form-control" id="punchcard" placeholder="Punch Card No" ng-model="employeeGeneralInfo.punchCardNo">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="nid" class="col-sm-4 control-label">NID</label>

                                        <div class="col-sm-8">
                                            <input disabled type="text" class="form-control" id="nid" placeholder="NID" ng-model="employeeGeneralInfo.nationalIDCardNo">
                                        </div>
                                    </div>
                                    <div class="form-group date">
                                        <label for="dateofjoining" class="col-sm-4 control-label">Date of Joining</label>
                                        <div class="input-group col-sm-8 date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input disabled type="text" class="form-control pull-right" id="dateofjoining" ng-model="employeeOfficeInfo.DOJ">
                                        </div>
                                        <!-- /.input group -->
                                    </div>

                                    <div class="form-group date">
                                        <label for="dateofconfirmation" class="col-sm-4 control-label">Date of Confirmation</label>
                                        <div class="input-group col-sm-8 date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input disabled type="text" class="form-control pull-right" id="dateofconfirmation" ng-model="employeeOfficeInfo.DOC">
                                        </div>
                                        <!-- /.input group -->
                                    </div>
                                    <div class="form-group">
                                        <label for="nationality" class="col-sm-4 control-label">Nationality</label>

                                        <div class="col-sm-8">
                                            <input disabled type="text" class="form-control" id="nationality" placeholder="Nationality" ng-model="employeeGeneralInfo.nationalIDCardNo">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="status" class="col-sm-4 control-label">Status</label>

                                        <div class="col-sm-8">
                                            <input disabled type="text" class="form-control" id="status" placeholder="Status" ng-model="employeeGeneralInfo.nationalIDCardNo">
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="inner-heading">
                                        <h3>Common Info</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="publicationTitle" class="col-sm-4 control-label">Publication Title</label>
                                        <div class="col-sm-8">
                                            <input type="text"  class="form-control" id="publicationTitle" placeholder="Publication Title">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="publicationType" class="col-sm-4 control-label">Publication Type</label>
                                        <div class="col-sm-8 select-addition">
                                            <select id="publicationType" class="form-control">
                                                <option value="">Select Option</option>
                                            </select>
                                            <a class="btn btn-default add-new">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="publicationMedia" class="col-sm-4 control-label">Publication Media</label>
                                        <div class="col-sm-8">
                                            <input type="text"  class="form-control" id="publicationMedia" placeholder="Publication Media">
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-4">
                                    <div class="form-group date">
                                        <label for="publicationDate" class="col-sm-4 control-label">Publication Date</label>
                                        <div class="input-group col-sm-8 date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text" class="form-control pull-right" id="publicationDate">
                                        </div>
                                        <!-- /.input group -->
                                    </div>
                                    <div class="form-group">
                                        <label for="copyRight" class="col-sm-4 control-label">Copy Right</label>
                                        <div class="col-sm-8">
                                            <input type="text"  class="form-control" id="copyRight" placeholder="Copy Right">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="abstract" class="col-sm-4 control-label">Abstract</label>
                                        <div class="col-sm-8">
                                            <input type="text"  class="form-control" id="abstract" placeholder="Abstract">
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="financedBy" class="col-sm-4 control-label">Financed By</label>
                                        <div class="col-sm-8">
                                            <input type="text"  class="form-control" id="financedBy" placeholder="Financed By">
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
                            <br/>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="box-table">
                                        <div class="inner-heading">
                                            <h3>Publication Information</h3>
                                        </div>
                                        <!-- /.box-header -->
                                        <div class="box-table-wrap">
                                            <kendo-grid options="employeePublicationInformationGridOptions"></kendo-grid>
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