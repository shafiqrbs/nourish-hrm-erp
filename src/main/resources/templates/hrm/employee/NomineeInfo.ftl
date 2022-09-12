<form class="form-horizontal form-general"  name="EmpNomineeInfoForm" ng-submit="saveNomineeForm(EmpNomineeInfoForm.$valid,empNomineeInfo)">
    <div class="row">
        <div class="col-lg-12">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                <div class="portlet-body no-padding">
                    <div class="row no-margin">
                        <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                            <div class="form-group">
                                <label class="control-label">Nominee Photo</label>
                                <div class="employee-photo pull-right">
                                    <#--<img ng-src="{{nomineePP}}"  type="{{nomineePP.file.type}}"  -->
                                         <#--width="136" height="164" />-->
                                    <img ng-src="http://via.placeholder.com/250x297" type="" width="250" height="297" src="http://via.placeholder.com/250x297">
                                    <div class="image-overly btn-group">
                                        <input id="img-file-upload" type="file" ng-model-instant onchange ="angular.element(this).scope().imageUpload(event)" style="display: none;"/>
                                        <a class="btn btn-gradient-light" href="javascript:void(0)" ng-click="imagePick()"><i
                                                class="fa fa-camera"></i></a>
                                        <a class="btn btn-gradient-light" href="javascript:void(0)" ng-click="imagePick()" ><i
                                                class="fa fa-upload"></i></a>
                                        <a class="btn btn-gradient-light" href="javascript:void(0)"  ng-click="deleteImagePick()"><i
                                                class="fa fa-trash"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <#--First column end-->
                        <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                            <div class="form-group required">
                                <label for="name" class="control-label">Name</label>
                                <input type="text" class="form-control form-control-sm" id="name" placeholder="Name" ng-model="empNomineeInfo.name">
                            </div>
                            <div class="form-group">
                                <label for="email" class="control-label">Email</label>
                                <input type="email" class="form-control form-control-sm" id="email" placeholder="Email" ng-model="empNomineeInfo.email">
                            </div>
                            <div class="form-group">
                                <label for="phone" class="control-label">Phone</label>
                                <input type="text" class="form-control form-control-sm" id="phone" placeholder="Phone" ng-model="empNomineeInfo.phone">
                            </div>
                            <div class="form-group">
                                <label for="relationship" class="control-label">Relationship</label>
                                <select id="relationship" class="form-control form-control-sm" ng-model="empNomineeInfo.relationship">
                                    <option value="">Select Relationship Option</option>
                                    <option value="Brother">Brother</option>
                                    <option value="Sister">Sister</option>
                                    <option value="Father">Father</option>
                                    <option value="Mother">Mother</option>
                                    <option value="Cousin(Male)">Cousin(Male)</option>
                                    <option value="Cousin(Female)">Cousin(Female)</option>
                                    <option value="Uncle">Uncle</option>
                                    <option value="Aunt">Aunt</option>
                                    <option value="Nephew">Nephew</option>
                                    <option value="Niece">Niece</option>
                                    <option value="Daughter-in-Law">Daughter-in-Law</option>
                                    <option value="Son-in-Law">Son-in-Law</option>
                                    <option value="Brother-in-Law">Brother-in-Law</option>
                                    <option value="Sister-in-Law">Sister-in-Law</option>
                                    <option value="Grandfather">Grandfather</option>
                                    <option value="Grandmother">Grandmother</option>
                                    <option value="Great Grand Father">Great Grand Father</option>
                                    <option value="Great Grand Mother">Great Grand Mother</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                            <div class="form-group">
                                <label for="address" class="control-label">Address</label>
                                <textarea class="form-control form-control-sm" id="address" placeholder="Address" rows="3" ng-model="empNomineeInfo.address"></textarea>
                            </div>
                            <#--<div class="form-group">
                                <label class="control-label">Nominee Sign</label>
                                <div class="digital-sign-photo">
                                    <img src="http://via.placeholder.com/232x232" ng-show="isDefaultImage"/>
                                    <img ng-src="{{profilePicture}}" ng-show="isProfileImage"/>
                                    <div class="image-overly btn-group">
                                        <a class="btn btn-gradient-light" href="javascript:void(0)"><i
                                                class="fa fa-upload"></i></a>
                                        <a class="btn btn-gradient-light" href="javascript:void(0)"><i
                                                class="fa fa-trash"></i></a>
                                    </div>
                                </div>
                            </div>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="box-footer clearfix">
                <div class="text-right">
                    <button type="submit" ng-disabled="isNomineeFormButtonDisabled" class="btn btn-gradient-success">Save</button>
                    <button type="button" ng-disabled="isNomineeFormButtonDisabled" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
                </div>
            </div>
        </div>
    </div>
</form>