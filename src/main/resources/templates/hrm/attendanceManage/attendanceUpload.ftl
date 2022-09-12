<div class="rounded shadow-sm p-3 bg-white" ng-controller="AttendanceUploadController">
    <div class="tab-content" id="attendanceFileUpload" ng-show="isAttendanceStepOneShow">
        <div class="row">
            <div class="col-lg-12">
                <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                    <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                        <div class="flex d-flex flex-column">
                            <h3>Attendance Upload</h3>
                        </div>
                        <div class="d-flex flex justify-content-end">
                            <div class="btn-group">
                                <!--<a href="#" class="btn btn-gradient-success btn-icon-o">
                                    <i class="fa fa-plus"></i>
                                </a> -->

                            </div>
                        </div>
                    </div>
                    <div class="portlet-body no-padding">
                        <div class="row no-margin">
                            <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                    <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                        <div class="flex d-flex flex-column">
                                            <h3>Select files</h3>
                                        </div>
                                    </div>
                                    <div class="portlet-body no-padding">
                                        <form class="form-horizontal form-general" id="AttnFileUploadForm" name="AttnFileUploadForm" ng-submit="saveFile(AttnFileUploadForm.$valid)">
                                            <div class="row no-margin">
                                                <div class="col-lg-12 b-r pt-20 pb-20 no-border-lg-down">
                                                    <div class="form-group">
                                                        <input multiple id="att_file_1" required type="file" ng-model-instant onchange="angular.element(this).scope().fileUpload(event)"/>
                                                    </div>
                                                    <div class="form-group">
                                                        <button type="submit" class="btn btn-gradient-primary">Save Files</button>
                                                        <button type="button" class="btn btn-gradient-danger" ng-click="resetForm()">Cancel</button>
                                                    </div>
                                                    <div class="form-group">
                                                        <kendo-grid options="SelectedFileOptions" style="height: 200px;"></kendo-grid>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8 b-r pt-20 pb-20 no-border-lg-down">
                                <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                    <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                                        <div class="flex d-flex flex-column">
                                            <h3>Upload File Information</h3>
                                        </div>
                                    </div>
                                    <div class="portlet-body no-padding">
                                        <div class="row no-margin">
                                            <div class="col-lg-12 b-r pt-20 pb-20 no-border-lg-down">
                                                <div class="form-group">
                                                    <button type="button" class="btn btn-gradient-primary" ng-click="uploadAllInitialAttendanceFile()">Upload All</button>
                                                    <!--<button type="button" class="btn btn-gradient-success">Confirm All</button> -->
                                                </div>
                                                <div class="form-group">
                                                    <kendo-grid options="UploadFileOptions" style="height: 200px;"></kendo-grid>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row mb-30 mt-30">
    <div class="col-lg-12">
        <div class="box-footer clearfix">
            <div class="text-right" style="margin-right:15px;">
                <button type="submit" class="btn btn-gradient-success" ng-click="savedAllPendingFile()">Save</button>
                <button type="button" class="btn btn-gradient-danger" ng-click="cancel()">Delete</button>
            </div>
        </div>
    </div>
</div>

<style type="text/css">
    .inline-grid-btn {
        margin: 2px;
        font-size: .600rem;
        font-weight: 400;
        padding: .3rem 0;
        min-width: 4rem;
    }

    html .k-grid tr:hover {
        background: transparent;
    }

    html .k-grid tr.k-alt:hover {
        background: transparent;
    }
</style>