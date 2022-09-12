<form class="form-horizontal form-general" name="EmpGeneralInfoForm"
      ng-submit="saveGeneralForm(EmpGeneralInfoForm.$valid,employeeGeneralInfo)">
    <div class="row">
        <div class="col-lg-12">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                <div class="portlet-body no-padding">
                    <div class="row no-margin">
                        <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                            <div class="form-group">
                                <label class="control-label">Employee Photo</label>
                                <div class="employee-photo pull-right">
                                    <img width="145" height="183" src="{{profilePicture}}">
                                    <div class="image-overly btn-group">
                                        <input id="img-file-upload" type="file" ng-model-instant
                                               onchange="angular.element(this).scope().imageUpload(event)"
                                               style="display: none;"/>
                                        <a class="btn btn-gradient-light" href="javascript:void(0)"
                                           ng-click="imagePick()"><i class="fa fa-camera"></i></a>
                                        <a class="btn btn-gradient-light" href="javascript:void(0)"
                                           ng-click="imagePick()"><i class="fa fa-upload"></i></a>
                                    </div>

                                   <#-- <div class="image-overly btn-group">
                                        <input id="img-file-upload" type="file" ng-model-instant
                                               onchange="angular.element(this).scope().imageUpload(event)"
                                               style="display: none;"/>
                                        <a class="btn btn-gradient-light" href="javascript:void(0)"
                                           ng-click="imagePick()"><i
                                                class="fa fa-camera"></i></a>
                                        <a class="btn btn-gradient-light" href="javascript:void(0)"
                                           ng-click="imagePick()"><i
                                                class="fa fa-upload"></i></a>
                                    &lt;#&ndash;<a class="btn btn-gradient-light" href="javascript:void(0)"&ndash;&gt;
                                    &lt;#&ndash;ng-click="deleteImagePick()"><i&ndash;&gt;
                                    &lt;#&ndash;class="fa fa-trash"></i></a>&ndash;&gt;
                                    </div>-->
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group required">
                                        <label for="paddress" class="control-label">Present Address</label>
                                        <textarea class="form-control form-control-sm" id="paddress"
                                                  ng-model="employeeGeneralInfo.presentAddress"
                                                  placeholder="Present Address" required></textarea>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group required">
                                        <label for="zip" class="control-label">ZIP Code</label>
                                        <input type="text" class="form-control form-control-sm" id="zip"
                                               ng-model="employeeGeneralInfo.presentZIPCode" placeholder="ZIP Code"
                                               required>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group required">
                                        <label for="ps" class="control-label">PS</label>
                                        <input type="text" class="form-control form-control-sm" id="ps"
                                               ng-model="employeeGeneralInfo.presentPS" placeholder="PS" required>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group required select-dynamic-add">
                                        <label for="district" class="control-label">District</label>
                                        <select id="district" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.presentDistrict" required>
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in cities"
                                                    ng-selected="employeeGeneralInfo.presentDistrict == option.name"
                                                    value="{{option.name}}">{{option.name}}
                                            </option>
                                        </select>
                                        <a href="javascript:void(0)"
                                           class="btn btn-gradient-success btn-icon-o add-new"
                                           ng-click="City()">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group required select-dynamic-add">
                                        <label for="presentCountry" class="control-label">Country</label>
                                        <select id="presentCountry" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.presentCountry" required>
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in countries"
                                                    ng-selected="employeeGeneralInfo.presentCountry == option.name"
                                                    value="{{option.name}}">{{option.name}}
                                            </option>
                                        </select>
                                        <a href="javascript:void(0)"
                                           class="btn btn-gradient-success btn-icon-o add-new" ng-click="Country()">
                                            <i class="fa fa-plus"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <div id="same-as-present" class="dependency-group">
                                <div class=" customUi-checkbox checkboxUi-primary">
                                    <input type="checkbox" ng-model="employeeGeneralInfo.isPermanentSame" ng-click="sameAsPresent(employeeGeneralInfo.isPermanentSame)" id="c-checkboxcharman" />
                                    <label for="c-checkboxcharman">
                                        <span class="label-checkbox"></span>
                                        <span class="label-helper">Same as present</span>
                                    </label>
                                </div>
                                <div class="form-group required">
                                    <label for="paaddress" class="control-label">Permanent Address</label>
                                    <textarea class="form-control form-control-sm" id="paaddress"
                                              ng-model="employeeGeneralInfo.permanentAddress"
                                              placeholder="Parmanent Address" required></textarea>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group required">
                                            <label for="pzip" class="control-label">ZIP Code</label>
                                            <input type="text" class="form-control form-control-sm" id="pzip"
                                                   ng-model="employeeGeneralInfo.permanentZIPCode"
                                                   placeholder="ZIP Code" required>
                                        </div>
                                        <div class="form-group required select-dynamic-add">
                                            <label for="pdistrict" class="control-label">District</label>
                                            <select id="district" class="form-control form-control-sm"
                                                    ng-model="employeeGeneralInfo.permanentDistrict" required>
                                                <option value="">Select Option</option>
                                                <option ng-repeat="option in cities"
                                                        ng-selected="employeeGeneralInfo.permanentDistrict == option.name"
                                                        value="{{option.name}}">{{option.name}}
                                                </option>
                                            </select>
                                            <a href="javascript:void(0)"
                                               class="btn btn-gradient-success btn-icon-o add-new"
                                               ng-click="City()">
                                                <i class="fa fa-plus"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group required">
                                            <label for="pps" class="control-label">PS</label>
                                            <input type="text" class="form-control form-control-sm" id="pps"
                                                   ng-model="employeeGeneralInfo.permanentPS" placeholder="PS"
                                                   required>
                                        </div>
                                        <div class="form-group required select-dynamic-add">
                                            <label for="permanentCountry" class="control-label">Country</label>
                                            <select id="permanentCountry" class="form-control form-control-sm"
                                                    ng-model="employeeGeneralInfo.permanentCountry" required>
                                                <option value="">Select Option</option>
                                                <option ng-repeat="option in countries"
                                                        ng-selected="employeeGeneralInfo.permanentCountry == option.name"
                                                        value="{{option.name}}">{{option.name}}
                                                </option>
                                            </select>
                                            <a href="javascript:void(0)"
                                               class="btn btn-gradient-success btn-icon-o add-new"
                                               ng-click="Country()">
                                                <i class="fa fa-plus"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <#--First column end-->
                        <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group required">
                                        <label for="fname" class="control-label">First Name</label>
                                        <input type="text" class="form-control form-control-sm" id="fname"
                                               placeholder="First Name" ng-model="employeeGeneralInfo.firstName"
                                               required>
                                    </div>
                                    <div class="form-group">
                                        <label for="lname" class="control-label">Last Name</label>
                                        <input type="text" class="form-control form-control-sm" id="lname"
                                               placeholder="Last Name"
                                               ng-model="employeeGeneralInfo.lastName">
                                    </div>
                                    <div class="form-group">
                                        <label for="salutation" class="control-label">Salutation</label>
                                        <select id="salutation" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.salutation">
                                            <option value="">Select Option</option>
                                            <option value="Mr.">Mr.</option>
                                            <option value="Miss.">Miss.</option>
                                            <option value="Mrs.">Mrs.</option>
                                            <option value="Ms.">Ms.</option>
                                            <option value="Madam.">Madam.</option>
                                            <option value="Duke">Duke</option>
                                            <option value="Sir">Sir</option>
                                            <option value="Sr.">Sr.</option>
                                            <option value="Sr.Chf.">Sr.Chf.</option>
                                            <option value="Dr.">Dr.</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="lname" class="control-label">Father's Name</label>
                                        <input type="text" class="form-control form-control-sm" id="lname"
                                               placeholder="Father's Name"
                                               ng-model="employeeGeneralInfo.fathersName">
                                    </div>
                                    <div class="form-group">
                                        <label for="lname" class="control-label">Spouse Name</label>
                                        <input type="text" class="form-control form-control-sm" id="lname"
                                               placeholder="Spouse's Name" ng-model="employeeGeneralInfo.spouseName">
                                    </div>
                                    <div class="form-group">
                                        <label for="nid" class="control-label">NID</label>
                                        <input type="text" class="form-control form-control-sm" id="nid"
                                               placeholder="NID"
                                               ng-model="employeeGeneralInfo.nid">
                                    </div>
                                    <div class="form-group">
                                        <label for="punchcard" class="control-label">Punch Card No</label>
                                        <input type="text" class="form-control form-control-sm" id="punchcard"
                                               ng-model="employeeGeneralInfo.punchCardNo"
                                               placeholder="Punch Card No" />
                                    </div>
                                    <div class="form-group">
                                        <label for="mstatus" class="control-label">Marital Status</label>
                                        <select id="mstatus" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.maritalStatus">
                                            <option value="">Select Option</option>
                                            <option value="Married">Married</option>
                                            <option value="UnMarried">UnMarried</option>
                                            <option value="Divorced">Divorced</option>
                                            <option value="Widowed">Widowed</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label for="mname" class="control-label">Middle Name</label>
                                        <input type="text" class="form-control form-control-sm" id="mname"
                                               placeholder="Middle Name"
                                               ng-model="employeeGeneralInfo.middleName">
                                    </div>
                                    <div class="form-group">
                                        <label for="nickname" class="control-label">Nick Name</label>
                                        <input type="text" class="form-control form-control-sm" id="nickname"
                                               placeholder="Nick Name" ng-model="employeeGeneralInfo.nickName">
                                    </div>
                                    <div class="form-group">
                                        <label for="status" class="control-label">Status</label>
                                        <select id="status" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.employeeStatus">
                                            <option value="">Select Option</option>
                                            <option value="Active">Active</option>
                                            <option value="Inactive">Inactive</option>
                                            <option value="Terminated">Terminated</option>
                                            <option value="Punished">Punished</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="dcode" class="control-label">Mother's Name</label>
                                        <input type="text" class="form-control form-control-sm" id="dcode"
                                               ng-model="employeeGeneralInfo.mothersName"
                                               placeholder="Mother's Name" />
                                    </div>
                                    <div class="form-group">
                                        <label for="soccu" class="control-label">Spouse Occupation</label>
                                        <input type="text" class="form-control form-control-sm" id="soccu"
                                               ng-model="employeeGeneralInfo.spouseOccupation"
                                               placeholder="Spouse Occupation">
                                    </div>
                                    <div class="form-group required">
                                        <label for="dcode" class="control-label">Display Code</label>
                                        <input type="text" class="form-control form-control-sm" id="dcode"
                                               ng-model="employeeGeneralInfo.displayEmployeeCode"
                                               placeholder="Display Code" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="emtype" class="control-label">Employee Type</label>
                                        <select id="emtype" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.employeeType">
                                            <option value="">Select Option</option>
                                            <option value="LOCAL">Local</option>
                                            <option value="EXPATRIATE">Expatriate</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="nochild" class="control-label">No Of Children</label>
                                        <input type="text" class="form-control form-control-sm" id="nochild"
                                               ng-model="employeeGeneralInfo.noOfChildren"
                                               placeholder="Number Of Children">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group required date">
                                        <label for="dateOfBirth" class="control-label">Date of Birth</label>
                                        <input type="date" class="form-control form-control-sm" id="dateOfBirth"
                                               ng-model="employeeGeneralInfo.dob" autocomplete="off" required/>
                                        <!-- /.input group -->
                                    </div>
                                    <div class="form-group required">
                                        <label for="religion" class="control-label">Religion</label>
                                        <select id="religion" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.religion" required>
                                            <option value="">Select Option</option>
                                            <option value="Islam">Islam</option>
                                            <option value="Hindu">Hindu</option>
                                            <option value="Buddhist">Buddhist</option>
                                            <option value="Christian">Christian</option>
                                            <option value="Atheist">Atheist</option>
                                            <option value="Agnostic">Agnostic</option>
                                            <option value="Jewish">Jewish</option>
                                            <option value="Sikh">Sikh</option>
                                            <option value="Jedi">Jedi</option>
                                            <option value="Spiritual">Spiritual</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="bloodgroup" class="control-label">Blood Group</label>
                                        <select id="bloodgroup" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.bloodGroup">
                                            <option value="">Select Option</option>
                                            <option value="A+">A+</option>
                                            <option value="AB+">AB+</option>
                                            <option value="B+">B+</option>
                                            <option value="O+">O+</option>
                                            <option value="A-">A-</option>
                                            <option value="AB-">AB-</option>
                                            <option value="B-">B-</option>
                                            <option value="O-">O-</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="email"
                                               class="control-label">Email</label>
                                        <input type="email" class="form-control form-control-sm" id="email"
                                               ng-model="employeeGeneralInfo.email"
                                               placeholder="Email">
                                    </div>


                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group required">
                                        <label for="gender" class="control-label">Gender</label>
                                        <select id="gender" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.gender" required>
                                            <option value="">Select Option</option>
                                            <option value="M">Male</option>
                                            <option value="F">Female</option>
                                            <option value="O">Others</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="pNationality" class="control-label">Nationality</label>
                                        <select id="pNationality" class="form-control form-control-sm"
                                                ng-model="employeeGeneralInfo.nationality">
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in nationality"
                                                    ng-selected="employeeGeneralInfo.nationality == option.name"
                                                    value="{{option.name}}">{{option.name}}
                                            </option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="phone"
                                               class="control-label">Phone</label>
                                        <input type="tel" class="form-control form-control-sm" id="phone"
                                               ng-model="employeeGeneralInfo.phone"
                                               placeholder="Phone">
                                    </div>


                                </div>
                            </div>


                            <!--
                            <div class="form-group">
                                <label for="refaddress" class="control-label">Reference Address</label>
                                <textarea class="form-control form-control-sm" id="refaddress" ng-model="employeeGeneralInfo.referenceAddress"
                                          placeholder="Reference Address"></textarea>
                            </div>
                            -->
                            <div class="form-group">
                                <label for="personal-remarks" class="control-label">Personal Remarks</label>
                                <textarea class="form-control form-control-sm" id="personal-remarks"
                                          ng-model="employeeGeneralInfo.personalRemarks"
                                          placeholder="Personal Remarks"></textarea>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Employee Sign</label>
                                <div class="digital-sign-photo">
                                <#-- <img src="http://via.placeholder.com/232x232" ng-show="isDefaultImage"/>-->
                                    <img width="232" height="80"  src="{{signPicture}}" type="{{signPicture.file.type}}"/>
                                    <div class="image-overly btn-group">
                                        <input id="sing-img-file-upload" type="file" ng-model-instant
                                               onchange="angular.element(this).scope().signImageUpload(event)"
                                               style="display: none;"/>
                                        <a class="btn btn-gradient-light" href="javascript:void(0)"
                                           ng-click="signImagePick()"><i
                                                class="fa fa-upload"></i></a>
                                        <a class="btn btn-gradient-light" href="javascript:void(0)"
                                           ng-click="deleteSignImagePick()"><i
                                                class="fa fa-trash"></i></a>
                                    </div>
                                </div>
                            </div>
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
                    <button type="submit" class="btn btn-gradient-success">Save</button>
                    <button type="button" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
                </div>
            </div>
        </div>
    </div>
</form>

<style type="text/css">
    .select-dynamic-add select {
        width: 83%;
        display: inline-block;
    }
</style>
