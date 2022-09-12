<div ng-controller="EmailSettingsController">
    <div class="rounded shadow-sm p-3 bg-white">
        <form class="form-horizontal form-general" name="CompanySettingForm" ng-submit="saveForm(CompanySettingForm.$valid,companySettings)">
            <div class="row">
                <div class="col-lg-12">
                    <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                        <div class="portlet-body no-padding">
                            <div class="row no-margin">
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="form" class="control-label">From</label>
                                        <input type="text" ng-model="emailSettings.form" class="form-control form-control-sm" id="form" placeholder="From">
                                    </div>
                                    <div class="form-group">
                                        <label for="formName" class="control-label">From Name</label>
                                        <input type="text" ng-model="emailSettings.formName" class="form-control form-control-sm" id="formName"
                                               placeholder="From Name" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="smtphost" class="control-label">SMTP Host</label>
                                        <input type="text" ng-model="emailSettings.smtphost" class="form-control form-control-sm" id="smtphost"
                                               placeholder="SMTP Host">
                                    </div>
                                </div>
                                <#--First column end-->
                                <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label class="control-label">SMTP Secure</label><br/>
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input id="a1" ng-model="emailSettings.smtpsecure" type="radio" value="None" name="SMTP Secure"  checked="">
                                            <label for="a1">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">None</span>
                                            </label>
                                        </div>
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input id="a2" ng-model="emailSettings.smtpsecure" type="radio" value="SSL" name="SMTP Secure">
                                            <label for="a2">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">SSL</span>
                                            </label>
                                        </div>
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input id="a3" ng-model="emailSettings.smtpsecure" type="radio" value="TLS" name="SMTP Secure">
                                            <label for="a3">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">TLS</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="smtpport" class="control-label">SMTP Port</label>
                                        <input type="text" ng-model="emailSettings.smtpport" class="form-control form-control-sm" id="smtpport"
                                               placeholder="SMTP Port">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Authentication</label><br/>
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input id="b1" ng-model="emailSettings.authentication" type="radio" value="Yes" name="authentication"  checked="">
                                            <label for="b1">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">Yes</span>
                                            </label>
                                        </div>
                                        <div class="customUi-radio radioUi-primary  pb-2">
                                            <input id="b2" ng-model="emailSettings.authentication" type="radio" value="No" name="authentication">
                                            <label for="b2">
                                                <span class="label-radio"></span>
                                                <span class="label-helper">No</span>
                                            </label>
                                        </div>
                                    </div>

                                </div>
                                <#--Second column end-->
                                <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                                    <div class="form-group">
                                        <label for="userName" class="control-label">User Name</label>
                                        <input type="text" ng-model="emailSettings.userName" class="form-control form-control-sm" id="userName"
                                               placeholder="User Name">
                                    </div>
                                    <div class="form-group">
                                        <label for="password" class="control-label">Password</label>
                                        <input type="password" ng-model="emailSettings.password" class="form-control form-control-sm" id="password"
                                               placeholder="Password">
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mb-30">
                <div class="col-lg-12">
                    <div class="box-footer clearfix">
                        <div class="text-right">
                            <button type="submit" class="btn btn-gradient-success">Save</button>
                            <button type="button" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>

        <div class="row">
            <div class="col-lg-12">
                <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                    <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                        <div class="flex d-flex flex-column">
                            <h3>All EmailSettings Information</h3>
                            <span class="portlet-subtitle">All emailSettings related information</span>
                        </div>
                    </div>
                    <div class="portlet-body no-padding">
                        <div class="row no-margin">
                            <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                <kendo-grid options="CompanyEmailSettingsOptions"></kendo-grid>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>