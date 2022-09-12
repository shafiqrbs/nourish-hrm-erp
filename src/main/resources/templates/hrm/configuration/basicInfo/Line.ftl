<style type="text/css">
    .grid {
      width: 100%;
      height: 400px;
    }
</style>
<div ng-controller="LineController" style="width:100%; height:auto; margin:0;">
    
    <!-- Main content -->
    <section class="content container-fluid m-top-0">

        <!--------------------------
          | Your Page Content Here |
          -------------------------->

        <div class="body-load-content-area">
            <div class="body-load-content-area-tab">
                <div class="body-content">
                    <#include "../../layout/breaddrumbs.ftl" />
                    <form class="form-horizontal form-general" name="LineForm" ng-submit="saveForm(LineForm.$valid,line)">
                        <div class="box-body">
                            <div class="row">
                                <div class="header-action">
                                    <div class="col-md-12">
                                        <h3 class="heading">Line Information</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="lineName" class="col-sm-4 control-label">Line Name</label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="line.lineName" class="form-control" id="lineName" placeholder="Line Name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="lineCode" class="col-sm-4 control-label">Line Code</label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="line.lineCode" disabled class="form-control" id="lineCode" placeholder="Line Code">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="sequence" class="col-sm-4 control-label">Sequence</label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="line.sequence" class="form-control" id="sequence" placeholder="Sequence">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="building" class="col-sm-4 control-label">Building</label>
                                        <div class="col-sm-8 select-addition">
                                            <select ng-model="line.building" ng-options="option.buildingName for option in building track by option.id" id="buildingName" class="form-control" required>
                                                <option value="">Select Option</option>
                                            </select>
                                            <a class="btn btn-default add-new">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="floor" class="col-sm-4 control-label">Floor</label>
                                        <div class="col-sm-8 select-addition">
                                            <select ng-model="line.building" ng-options="option.buildingName for option in building track by option.id" id="buildingName" class="form-control" required>
                                                <option value="">Select Option</option>
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
                                        <label for="district" class="col-sm-7 control-label">Make Line default</label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="notes" class="col-sm-4 control-label">Notes</label>
                                        <div class="col-sm-8">
                                            <textarea ng-model="line.notes" class="form-control" id="notes" placeholder="Notes" rows="3"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="pull-right">
                                        <button type="submit" class="btn btn-success">Save</button>
                                        <button type="reset" class="btn btn-warning">Cancel</button>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="box-table">
                                        <div class="form-group header-action">
                                            <div class="col-md-12">
                                                <h3 class="heading">All Line Information</h3>
                                            </div>
                                        </div>
                                        <!-- /.box-header -->
                                        <div class="box-table-wrap">
                                            <kendo-grid options="CompanyLineOptions"></kendo-grid>
                                        </div>
                                    </div>
                                    <!-- /.box -->
                                </div>
                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>

    </section>
</div>