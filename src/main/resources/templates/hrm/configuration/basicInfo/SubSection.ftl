<style type="text/css">
    .grid {
      width: 100%;
      height: 400px;
    }
</style>
<div ng-controller="SubSectionController" style="width:100%; height:auto; margin:0;">
    <!-- Main content -->
    <section class="content container-fluid m-top-0">

        <!--------------------------
          | Your Page Content Here |
          -------------------------->

        <div class="body-load-content-area">
            <div class="body-load-content-area-tab">
                <div class="body-content">
                    <#include "../../layout/breaddrumbs.ftl" />
                    <form class="form-horizontal form-general" name="SubSectionForm" ng-submit="saveForm(SubSectionForm.$valid,subSection)">
                        <div class="box-body">
                            <div class="row">
                                <div class="header-action">
                                    <div class="col-md-12">
                                        <h3 class="heading">Sub Section Information</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="subSectionName" class="col-sm-4 control-label">Sub Section Name</label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="subSection.subSectionName" class="form-control" id="subSectionName" placeholder="Sub Section Name" required="">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="subSectionCode" class="col-sm-4 control-label">Sub Section Code</label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="subSection.subSectionCode" disabled class="form-control" id="subSectionCode" placeholder="Sub Section Code">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="sequence" class="col-sm-4 control-label">Sequence</label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="subSection.sequence" class="form-control" id="sequence" placeholder="Sequence">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="section" class="col-sm-4 control-label">Section</label>
                                        <div class="col-sm-8 select-addition">
                                            <select ng-model="subSection.section" id="section" class="form-control">
                                                <option>Select Option</option>
                                            </select>
                                            <a class="btn btn-default add-new">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="sectionCode" class="col-sm-4 control-label">Section Code</label>
                                        <div class="col-sm-8">
                                            <input type="text" ng-model="subSection.sectionCode" disabled class="form-control" id="sectionCode" placeholder="Section Code">
                                        </div>
                                    </div>
                                    <div class="form-group checkmark">
                                        <div class="col-sm-4">
                                        </div>
                                        <div class="col-sm-1">
                                            <input type="checkbox" class="minimal" checked>
                                        </div>
                                        <label for="" class="col-sm-7 control-label">Make Subsection default</label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="notes" class="col-sm-4 control-label">Notes</label>
                                        <div class="col-sm-8">
                                            <textarea ng-model="subSection.notes" class="form-control" id="notes" placeholder="Notes" rows="3"></textarea>
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
                                                <h3 class="heading">All Sub Section Information</h3>
                                            </div>
                                        </div>
                                        <!-- /.box-header -->
                                        <div class="box-table-wrap">
                                            <kendo-grid options="CompanySubSectionOptions"></kendo-grid>
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