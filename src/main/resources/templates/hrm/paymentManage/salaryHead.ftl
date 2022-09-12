<div ng-controller="SalaryHeadController">
    <div class="rounded bg-white">
        <form class="form-horizontal form-general" name="SalaryHeadFrom" ng-submit="saveForm(SalaryHeadFrom.$valid,SalaryHead)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-3 pt-20 pb-20 no-border-lg-down">
                                    <div class="salary_head_info_area">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b no-padding mb-15">
                                            <div class="flex d-flex flex-column">
                                                <h3 class="pl-15">Salary Head Information</h3>
                                            </div>
                                        </div>

                                        <div class="salary_head_info_form">
                                            <div class="form-group">
                                                <label for="headCode" class="control-label">Head Code</label>
                                                <input id="headCode" type="text" ng-model="SalaryHead.salaryHeadID" class="form-control form-control-sm" />
                                                <!--
                                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new">
                                                    <i class="fa fa-search"></i>
                                                </a>
                                                -->
                                            </div>
                                            <div class="form-group">
                                                <label for="headType" class="control-label">Head Type</label>
                                                <select ng-model="SalaryHead.headType" id="HeadType" class="form-control form-control-sm" required>
                                                    <option value="">Select Option</option>
                                                    <option ng-repeat="option in headTypeDDL" ng-selected="SalaryHead.headType == option.headTypeName" value="{{option.headTypeName}}">{{option.headTypeName}}</option>
                                                </select>
                                                <!--
                                                <a href="javascript:void(0)"
                                                   class="btn btn-gradient-success btn-icon-o add-new">
                                                    <i class="fa fa-plus"></i>
                                                </a>
                                                -->
                                            </div>
                                            <div class="form-group">
                                                <label for="description" class="control-label">Description</label>
                                                <textarea class="form-control form-control-sm" id="description" ng-model="SalaryHead.descriptions" rows="5"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label for="headCode" class="control-label">Short Name</label>
                                                <input id="shortName" type="text" ng-model="SalaryHead.salaryHeadShortName" class="form-control form-control-sm" />
                                            </div>
                                            <div class="form-group mb-0">
                                                <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                    <input id="checked" type="checkbox" name="agree" ng-model="SalaryHead.isDisburse" />
                                                    <label for="checked">
                                                        <span class="label-checkbox"></span>
                                                        <span class="label-helper">Is Disbursment</span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group mb-0">
                                                <div class="customUi-checkbox checkboxUi-primary  pb-2">
                                                    <input id="checked1" type="checkbox" name="agree" ng-model="SalaryHead.isPerquisite" />
                                                    <label for="checked1">
                                                        <span class="label-checkbox"></span>
                                                        <span class="label-helper">Is Perquisite</span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                                <#--First column end-->
                                <div class="col-lg-9 pt-20 pb-20 no-border-lg-down">
                                    <div class="head_type_info_area">
                                        <div class="portlet-header flex-row flex d-flex align-items-center b-b mb-15">
                                            <div class="flex d-flex flex-column">
                                                <h3>Head Type Information</h3>
                                            </div>
                                        </div>

                                        <div class="head_type_info_kendo">
                                            <kendo-grid options="salaryHeadGridOptions" style="height:450px;"></kendo-grid>
                                        </div>

                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </form>

    </div>

    <div class="row mb-30 mt-30">
        <div class="col-lg-12">
            <div class="box-footer clearfix">
                <div class="text-right">
                    <button type="submit" class="btn btn-gradient-success">Save</button>
                    <button type="button" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
                </div>
            </div>
        </div>
    </div>
</div>
