<style type="text/css">
    .grid {
      width: 100%;
      height: 400px;
    }
</style>
<div ng-controller="BuildingController" style="width:100%; height:auto; margin:0;">
    <!-- Main content -->
    <section class="content container-fluid m-top-0">

        <!--------------------------
          | Your Page Content Here |
          -------------------------->

        <div class="body-load-content-area">
            <div class="body-load-content-area-tab">
                <div class="body-content">
                    <#include "../../layout/breaddrumbs.ftl" />
                    <form class="form-horizontal form-general" name="BuildingForm" ng-submit="saveForm(BuildingForm.$valid,building)">
                        <div class="box-body">
                            <div class="row">
                                <div class="header-action">
                                    <div class="col-md-12">
                                        <h3 class="heading">Building Information</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="buildingName" class="col-sm-4 control-label">Building Name</label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="building.buildingName"  class="form-control" id="buildingName" placeholder="Building Name" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="buildingCode" class="col-sm-4 control-label">Building Code</label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="building.buildingCode"  disabled class="form-control" id="buildingCode" placeholder="Building Code">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="sequence" class="col-sm-4 control-label">Sequence</label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="building.sequence"  class="form-control" id="sequence" placeholder="Sequence">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="bcompany" class="col-sm-4 control-label">Company Name</label>
                                        <div class="col-sm-8 select-addition">
                                            <select ng-model="building.companySettings" id="bcompany" class="form-control" ng-options="option.companyName for option in companySetting track by option.id" required>
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
                                            <select ng-model="building.branch"  id="branch" class="form-control">
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
                                        <label for="district" class="col-sm-7 control-label">Make Building default</label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="address" class="col-sm-4 control-label">Address</label>
                                        <div class="col-sm-8">
                                            <textarea ng-model="building.address"  class="form-control" id="address" placeholder="Address" rows="3"></textarea>
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
                                                <h3 class="heading">All Building Information</h3>
                                            </div>
                                        </div>
                                        <!-- /.box-header -->
                                        <div class="box-table-wrap">
                                            <kendo-grid options="CompanyBuildingOptions" height="200"></kendo-grid>
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