<div ng-controller="ConfigurationController" style="width:100%; height:auto; margin:0;">
    <!-- Main content -->
    <section class="content container-fluid m-top-0">

        <!--------------------------
          | Your Page Content Here |
          -------------------------->

        <div class="body-load-content-area broadecare">
            <div class="body-load-content-area-tab">
                <div class="body-content">
                    <#include "../../layout/breaddrumbs.ftl" />
                    <form class="form-horizontal form-general">
                        <div class="box-body">
                            <div class="row">
                                <div class="header-action">
                                    <div class="col-md-12">
                                        <h3 class="heading">Broadcast SMS( Bulk )</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="from" class="col-sm-4 control-label">From</label>
                                        <div class="col-sm-12">
                                            <input disabled type="text" class="form-control form-control-sm" id="from"
                                                   placeholder="From">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="broadcastid" class="col-sm-4 control-label">Broadcast ID</label>
                                        <div class="col-sm-12">
                                            <input type="text" disabled class="form-control form-control-sm" id="broadcastid"
                                                   placeholder="Broadcast ID">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="bcompany" class="col-sm-4 control-label">Company</label>
                                        <div class="col-sm-12 select-addition">
                                            <select id="bcompany" class="form-control">
                                                <option>Select Option</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="bcompanybranch" class="col-sm-4 control-label">Branch</label>
                                        <div class="col-sm-12 select-addition">
                                            <select id="bcompanybranch" class="form-control">
                                                <option>Select Option</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="building" class="col-sm-4 control-label">Building</label>
                                        <div class="col-sm-12 select-addition">
                                            <select id="building" class="form-control">
                                                <option>Select Option</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="floor" class="col-sm-4 control-label">Floor</label>
                                        <div class="col-sm-12 select-addition">
                                            <select id="floor" class="form-control">
                                                <option>Select Option</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="line" class="col-sm-4 control-label">Line</label>
                                        <div class="col-sm-12 select-addition">
                                            <select id="line" class="form-control">
                                                <option>Select Option</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="section" class="col-sm-4 control-label">Section</label>
                                        <div class="col-sm-12 select-addition">
                                            <select id="section" class="form-control">
                                                <option>Select Option</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="subsection" class="col-sm-4 control-label">Sub Section</label>
                                        <div class="col-sm-12 select-addition">
                                            <select id="subsection" class="form-control">
                                                <option>Select Option</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="group" class="col-sm-4 control-label">Group</label>
                                        <div class="col-sm-12 select-addition">
                                            <select id="group" class="form-control">
                                                <option>Select Option</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="subgroup" class="col-sm-4 control-label">Sub Group</label>
                                        <div class="col-sm-12 select-addition">
                                            <select id="subgroup" class="form-control">
                                                <option>Select Option</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                    <label for="sms" class="col-sm-2 control-label">Sms</label>
                                    <div class="col-sm-12">
                                        <textarea class="form-control" id="sms" placeholder="Sms" rows="5"></textarea>
                                    </div>
                                </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer text-right mb-30">
                                <div class="pull-right">
                                    <button type="submit" class="btn btn-success">Send</button>
                                    <button type="submit" class="btn btn-gradient-danger">Cancel</button>
                                </div>
                            </div>
                            <!-- /.box-footer -->
                    </form>
                </div>
            </div>
        </div>

    </section>
</div>