<form class="form-horizontal form-general" name="EmpGeneralInfoForm"
      ng-submit="saveApplicationForm(EmpGeneralInfoForm.$valid,candidateInfo)">
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
                                        <input id="img-file-upload" type="file" accept="image/*" ng-model-instant
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
                                                  ng-model="candidateInfo.presentAddress"
                                                  placeholder="Present Address" required></textarea>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group required">
                                        <label for="zip" class="control-label">ZIP Code</label>
                                        <input type="text" class="form-control form-control-sm" id="zip"
                                               ng-model="candidateInfo.presentZIPCode" placeholder="ZIP Code"
                                               required>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group required">
                                        <label for="ps" class="control-label">PS</label>
                                        <input type="text" class="form-control form-control-sm" id="ps"
                                               ng-model="candidateInfo.presentPS" placeholder="PS" required>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group required select-dynamic-add">
                                        <label for="district" class="control-label">District</label>
                                        <select id="district" class="form-control form-control-sm"
                                                ng-model="candidateInfo.presentDistrict" required>
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in cities"
                                                    ng-selected="candidateInfo.presentDistrict == option.name"
                                                    value="{{option.name}}">{{option.name}}
                                            </option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group required select-dynamic-add">
                                        <label for="presentCountry" class="control-label">Country</label>
                                        <select id="presentCountry" class="form-control form-control-sm"
                                                ng-model="candidateInfo.presentCountry" required>
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in countries"
                                                    ng-selected="candidateInfo.presentCountry == option.name"
                                                    value="{{option.name}}">{{option.name}}
                                            </option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div id="same-as-present" class="dependency-group">
                                <div class=" customUi-checkbox checkboxUi-primary">
                                    <input type="checkbox" ng-model="candidateInfo.isPermanentSame"
                                           ng-click="sameAsPresent(candidateInfo.isPermanentSame)"
                                           id="c-checkboxcharman"/>
                                    <label for="c-checkboxcharman">
                                        <span class="label-checkbox"></span>
                                        <span class="label-helper">Same as present</span>
                                    </label>
                                </div>
                                <div class="form-group required">
                                    <label for="paaddress" class="control-label">Permanent Address</label>
                                    <textarea class="form-control form-control-sm" id="paaddress"
                                              ng-model="candidateInfo.permanentAddress"
                                              placeholder="Parmanent Address" required></textarea>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group required">
                                            <label for="pzip" class="control-label">ZIP Code</label>
                                            <input type="text" class="form-control form-control-sm" id="pzip"
                                                   ng-model="candidateInfo.permanentZIPCode"
                                                   placeholder="ZIP Code" required>
                                        </div>
                                        <div class="form-group required select-dynamic-add">
                                            <label for="pdistrict" class="control-label">District</label>
                                            <select id="district" class="form-control form-control-sm"
                                                    ng-model="candidateInfo.permanentDistrict" required>
                                                <option value="">Select Option</option>
                                                <option ng-repeat="option in cities"
                                                        ng-selected="candidateInfo.permanentDistrict == option.name"
                                                        value="{{option.name}}">{{option.name}}
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group required">
                                            <label for="pps" class="control-label">PS</label>
                                            <input type="text" class="form-control form-control-sm" id="pps"
                                                   ng-model="candidateInfo.permanentPS" placeholder="PS"
                                                   required>
                                        </div>
                                        <div class="form-group required select-dynamic-add">
                                            <label for="permanentCountry" class="control-label">Country</label>
                                            <select id="permanentCountry" class="form-control form-control-sm"
                                                    ng-model="candidateInfo.permanentCountry" required>
                                                <option value="">Select Option</option>
                                                <option ng-repeat="option in countries"
                                                        ng-selected="candidateInfo.permanentCountry == option.name"
                                                        value="{{option.name}}">{{option.name}}
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <hr>
                                        <h6>Others Information</h6>
                                        <hr>
                                        <br>
                                        <div class="form-group">
                                            <label for="reference_name">Position Name</label>
                                            <div class="input-icon-append">
                                                <input type="text" ng-model="interviewCard.candidateFirstName"
                                                       class="form-control form-control-sm ng-pristine ng-empty ng-invalid ng-invalid-required ng-touched"
                                                       id="reference_name" aria-describedby="emhelp" style="" placeholder="Position Name Use , For Multiple">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Do you have anyone working with our company
                                                ?</label>
                                            <div class="customUi-switchToggle switchToggle-air switchToggle-lg mr-2 mb-2 switchToggle-primary">
                                                <input type="checkbox" id="air--toggle">
                                                <label for="air--toggle">
                                                    <span class="label-switchToggle"> </span>
                                                    <span class="label-helper"></span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group required select-dynamic-add">
                                            <label for="permanentCountry" class="control-label">Search Employee</label>
                                            <input type="text" class="form-control form-control-sm" placeholder="Search With ID">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="reference_name">Name</label>
                                            <div class="input-icon-append">
                                                <input type="text" ng-model="interviewCard.candidateFirstName"
                                                       class="form-control form-control-sm ng-pristine ng-empty ng-invalid ng-invalid-required ng-touched"
                                                       id="reference_name" aria-describedby="emhelp" style="" disabled>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="position_name">Position</label>
                                            <div class="input-icon-append">
                                                <input type="text" ng-model="interviewCard.candidateFirstName"
                                                       class="form-control form-control-sm ng-pristine ng-empty ng-invalid ng-invalid-required ng-touched"
                                                       id="position_name" aria-describedby="emhelp" style="" disabled>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="reference_section">Section</label>
                                            <div class="input-icon-append">
                                                <input type="text" ng-model="interviewCard.candidateFirstName"
                                                       class="form-control form-control-sm ng-pristine ng-empty ng-invalid ng-invalid-required ng-touched"
                                                       id="reference_section" aria-describedby="emhelp" style="" disabled>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="reference_phone">Phone</label>
                                            <div class="input-icon-append">
                                                <input type="text" ng-model="interviewCard.candidateFirstName"
                                                       class="form-control form-control-sm ng-pristine ng-empty ng-invalid ng-invalid-required ng-touched"
                                                       id="reference_phone" aria-describedby="emhelp" style="" disabled>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label class="control-label">Did you ever charged / Jail for any Crime ?</label>
                                        <br>
                                        <div class="customUi-switchToggle switchToggle-air switchToggle-lg mr-2 mb-2 switchToggle-primary">
                                            <input type="checkbox" id="commit-crime">
                                            <label for="commit-crime">
                                                <span class="label-switchToggle"> </span>
                                                <span class="label-helper"></span>
                                            </label>
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
                                               placeholder="First Name" ng-model="candidateInfo.firstName"
                                               required>
                                    </div>
                                    <div class="form-group">
                                        <label for="lname" class="control-label">Last Name</label>
                                        <input type="text" class="form-control form-control-sm" id="lname"
                                               placeholder="Last Name"
                                               ng-model="candidateInfo.lastName">
                                    </div>
                                    <div class="form-group">
                                        <label for="salutation" class="control-label">Salutation</label>
                                        <select id="salutation" class="form-control form-control-sm"
                                                ng-model="candidateInfo.salutation">
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
                                               ng-model="candidateInfo.fathersName">
                                    </div>
                                    <div class="form-group">
                                        <label for="lname" class="control-label">Spouse Name</label>
                                        <input type="text" class="form-control form-control-sm" id="lname"
                                               placeholder="Spouse's Name" ng-model="candidateInfo.spouseName">
                                    </div>
                                    <div class="form-group">
                                        <label for="nid" class="control-label">NID</label>
                                        <input type="text" class="form-control form-control-sm" id="nid"
                                               placeholder="NID"
                                               ng-model="candidateInfo.nid">
                                    </div>
                                    <div class="form-group">
                                        <label for="punchcard" class="control-label">Punch Card No</label>
                                        <input type="text" class="form-control form-control-sm" id="punchcard"
                                               ng-model="candidateInfo.punchCardNo"
                                               placeholder="Punch Card No"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="mstatus" class="control-label">Marital Status</label>
                                        <select id="mstatus" class="form-control form-control-sm"
                                                ng-model="candidateInfo.maritalStatus">
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
                                               ng-model="candidateInfo.middleName">
                                    </div>
                                    <div class="form-group">
                                        <label for="nickname" class="control-label">Nick Name</label>
                                        <input type="text" class="form-control form-control-sm" id="nickname"
                                               placeholder="Nick Name" ng-model="candidateInfo.nickName">
                                    </div>
                                    <div class="form-group">
                                        <label for="status" class="control-label">Status</label>
                                        <select id="status" class="form-control form-control-sm"
                                                ng-model="candidateInfo.employeeStatus">
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
                                               ng-model="candidateInfo.mothersName"
                                               placeholder="Mother's Name"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="soccu" class="control-label">Spouse Occupation</label>
                                        <input type="text" class="form-control form-control-sm" id="soccu"
                                               ng-model="candidateInfo.spouseOccupation"
                                               placeholder="Spouse Occupation">
                                    </div>
                                    <div class="form-group required">
                                        <label for="dcode" class="control-label">Display Code</label>
                                        <input type="text" class="form-control form-control-sm" id="dcode"
                                               ng-model="candidateInfo.displayEmployeeCode"
                                               placeholder="Display Code" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="emtype" class="control-label">Employee Type</label>
                                        <select id="emtype" class="form-control form-control-sm"
                                                ng-model="candidateInfo.employeeType">
                                            <option value="">Select Option</option>
                                            <option value="LOCAL">Local</option>
                                            <option value="EXPATRIATE">Expatriate</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="nochild" class="control-label">No Of Children</label>
                                        <input type="text" class="form-control form-control-sm" id="nochild"
                                               ng-model="candidateInfo.noOfChildren"
                                               placeholder="Number Of Children">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="fileUpload_wrapper">
                                        <label class="control-label">Document:</label>
                                        <br>
                                        <div class="customUi-checkbox checkboxUi-primary pr-2 ">
                                            <input type="checkbox" id="c-checkboxnid">
                                            <label for="c-checkboxnid">
                                                <span class="label-checkbox"></span>
                                                <span class="label-helper">NID</span>
                                            </label>
                                        </div>
                                        <br>
                                        <div class="customUi-checkbox checkboxUi-primary pr-2">
                                            <input type="checkbox" id="c-checkboxbirth">
                                            <label for="c-checkboxbirth">
                                                <span class="label-checkbox"></span>
                                                <span class="label-helper">Birth Certificate</span>
                                            </label>
                                        </div>
                                        <br>
                                        <div class=" customUi-checkbox checkboxUi-primary">
                                            <input type="checkbox" id="c-checkboxcharman">
                                            <label for="c-checkboxcharman">
                                                <span class="label-checkbox"></span>
                                                <span class="label-helper">Chairman Certificate</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="file-upload">
                                        <label for="exampleFormControlFile1">Upload NID</label>
                                        <input type="file" class="form-control-file" id="user_nid">
                                    </div>
                                    <div class="file-upload">
                                        <label for="exampleFormControlFile1">Upload Birth Certificate</label>
                                        <input type="file" class="form-control-file" id="user_birth">
                                    </div>
                                    <div class="file-upload">
                                        <label for="exampleFormControlFile1">Upload Chairman Certificate</label>
                                        <input type="file" class="form-control-file" id="user_char">
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
                                               ng-model="candidateInfo.dob" autocomplete="off" required/>
                                        <!-- /.input group -->
                                    </div>
                                    <div class="form-group required">
                                        <label for="religion" class="control-label">Religion</label>
                                        <select id="religion" class="form-control form-control-sm"
                                                ng-model="candidateInfo.religion" required>
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
                                                ng-model="candidateInfo.bloodGroup">
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
                                               ng-model="candidateInfo.email"
                                               placeholder="Email">
                                    </div>


                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group required">
                                        <label for="gender" class="control-label">Gender</label>
                                        <select id="gender" class="form-control form-control-sm"
                                                ng-model="candidateInfo.gender" required>
                                            <option value="">Select Option</option>
                                            <option value="M">Male</option>
                                            <option value="F">Female</option>
                                            <option value="O">Others</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="pNationality" class="control-label">Nationality</label>
                                        <select id="pNationality" class="form-control form-control-sm"
                                                ng-model="candidateInfo.nationality">
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in nationality"
                                                    ng-selected="candidateInfo.nationality == option.name"
                                                    value="{{option.name}}">{{option.name}}
                                            </option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="phone"
                                               class="control-label">Phone</label>
                                        <input type="tel" class="form-control form-control-sm" id="phone"
                                               ng-model="candidateInfo.phone"
                                               placeholder="Phone">
                                    </div>


                                </div>
                            </div>


                            <!--
                            <div class="form-group">
                                <label for="refaddress" class="control-label">Reference Address</label>
                                <textarea class="form-control form-control-sm" id="refaddress" ng-model="candidateInfo.referenceAddress"
                                          placeholder="Reference Address"></textarea>
                            </div>
                            -->
                            <div class="form-group">
                                <label for="personal-remarks" class="control-label">Personal Remarks</label>
                                <textarea class="form-control form-control-sm" id="personal-remarks"
                                          ng-model="candidateInfo.personalRemarks"
                                          placeholder="Personal Remarks"></textarea>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Employee Sign</label>
                                <div class="digital-sign-photo">
                                <#-- <img src="http://via.placeholder.com/232x232" ng-show="isDefaultImage"/>-->
                                    <img width="232" height="80" src="{{signPicture}}"
                                         type="{{signPicture.file.type}}"/>
                                    <div class="image-overly btn-group">
                                        <input id="sing-img-file-upload" type="file" accept="image/*" ng-model-instant
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
