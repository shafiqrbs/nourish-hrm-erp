<form class="form-horizontal form-appoinmentletter" name="ApplicationForm" ng-submit="saveApplicationForm(ApplicationForm.$valid,candidateInfo)">
    <div class="row">
        <div class="col-lg-12">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                    <div class="flex d-flex flex-columnn">
                        <h3>Application Letter</h3>
                    </div>
                </div>
                <div class="applicant_area">
                    <div class="applicant_personal_info_wrapper">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label class="control-label">Employee Photo</label>
                                    <div class="employee-photo pull-right">
                                        <img width="145" height="183" src="http://via.placeholder.com/250x297">
                                        <div class="image-overly btn-group">
                                            <input id="img-file-upload" type="file" ng-model-instant="" onchange="angular.element(this).scope().imageUpload(event)" style="display: none;">
                                            <a class="btn btn-gradient-light" href="javascript:void(0)" ng-click="imagePick()"><i class="fa fa-camera"></i></a>
                                            <a class="btn btn-gradient-light" href="javascript:void(0)" ng-click="imagePick()"><i class="fa fa-upload"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="salutation">Salutation</label>
                                        </div>
                                        <p>:<select id="salutation" class="form-control form-control-sm" style="float:right;width:97%;margin-top:8px;"
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
                                        </p>
                                    </div>
                                </div>
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0 required">
                                        <div class="input-icon-group mb-5">
                                            <label for="firstName">First Name</label>
                                        </div>
                                        <p>: <input type="text" ng-model="candidateInfo.firstName" class="form-control form-control-sm" id="firstName" aria-describedby="emhelp" required></p>
                                    </div>
                                </div>
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="lastName">Last Name</label>
                                        </div>
                                        <p>: <input type="text" ng-model="candidateInfo.lastName" class="form-control form-control-sm" id="lastName" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="fatherName">Father's Name</label>
                                        </div>
                                        <p>: <input type="text" ng-model="candidateInfo.fathersName" class="form-control form-control-sm" id="fatherName" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="spouseName">Spouse Name</label>
                                        </div>
                                        <p>: <input type="text" ng-model="candidateInfo.spouseName" class="form-control form-control-sm" id="spouseName" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="motherName">Mother's Name</label>
                                        </div>
                                        <p>: <input type="text" ng-model="candidateInfo.mothersName" class="form-control form-control-sm" id="motherName" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="mobileNo">Mobile No</label>
                                        </div>
                                        <p>: <input type="text" ng-model="candidateInfo.phone" class="form-control form-control-sm" id="mobileNo" aria-describedby="emhelp" required></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="input-icon-group mb-0 mt-20">
                                    <h6>Present Address: </h6>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="applicant_personal_info">
                                            <div class="form-group mb-0">
                                                <div class="input-icon-group mb-5">
                                                    <label for="presentAddress">Address</label>
                                                </div>
                                                <p class="applicant_present_address">: <textarea ng-model="candidateInfo.presentAddress" class="form-control form-control-sm" id="presentAddress" aria-describedby="emhelp"></textarea></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="applicant_personal_info">
                                            <div class="form-group mb-0">
                                                <div class="input-icon-group mb-5">
                                                    <label for="presentPostOffice">Post Office</label>
                                                </div>
                                                <p>: <input type="text" ng-model="candidateInfo.presentZIPCode" class="form-control form-control-sm" id="presentPostOffice" aria-describedby="emhelp"></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="applicant_personal_info">
                                            <div class="form-group mb-0">
                                                <div class="input-icon-group mb-5">
                                                    <label for="presentPoliceOffice">Police Office</label>
                                                </div>
                                                <p>: <input type="text" ng-model="candidateInfo.presentPS" class="form-control form-control-sm" id="presentPoliceOffice" aria-describedby="emhelp"></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="applicant_personal_info">
                                            <div class="form-group mb-0">
                                                <div class="input-icon-group mb-5">
                                                    <label for="presentDistrict">District</label>
                                                </div>
                                                <p>: <select id="presentDistrict" class="form-control form-control-sm" style="float:right;width:97%;margin-top:8px;"
                                                          ng-model="candidateInfo.presentDistrict">
                                                         <option value="">Select Option</option>
                                                         <option ng-repeat="option in cities"  ng-selected="candidateInfo.permanentDistrict == option.name"
                                                                 value="{{option.name}}">{{option.name}}
                                                         </option>
                                                     </select></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="applicant_personal_info">
                                            <div class="form-group mb-0">
                                                <div class="input-icon-group mb-5">
                                                    <label for="presentCountry">Country</label>
                                                </div>
                                                <p>: <select id="presentCountry" class="form-control form-control-sm" style="float:right;width:97%;margin-top:8px;"
                                                          ng-model="candidateInfo.presentCountry">
                                                         <option value="">Select Option</option>
                                                         <option ng-repeat="option in countries"  ng-selected="candidateInfo.presentCountry == option.name"
                                                                 value="{{option.name}}">{{option.name}}
                                                         </option>
                                                     </select></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="houseOwnerName">House owner</label>
                                        </div>
                                        <p>: <input type="text" ng-model="candidateInfo.houseOwnerName" class="form-control form-control-sm" id="houseOwnerName" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="houseOwnerPhone">Mobile No</label>
                                        </div>
                                        <p>: <input type="text" ng-model="candidateInfo.houseOwnerMobile" class="form-control form-control-sm" id="houseOwnerPhone" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="input-icon-group mb-0 mt-20">
                                    <h6>Permanent Address: </h6>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="applicant_personal_info">
                                            <div class="form-group mb-0">
                                                <div class="input-icon-group mb-5">
                                                    <label for="permanentAddress">Address</label>
                                                </div>
                                                <p class="applicant_present_address">: <textarea ng-model="candidateInfo.permanentAddress" class="form-control form-control-sm" id="permanentAddress" aria-describedby="emhelp"></textarea></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="applicant_personal_info">
                                            <div class="form-group mb-0">
                                                <div class="input-icon-group mb-5">
                                                    <label for="permanentPostOffice">Post Office</label>
                                                </div>
                                                <p>: <input type="text" ng-model="candidateInfo.permanentZIPCode" class="form-control form-control-sm" id="permanentPostOffice" aria-describedby="emhelp"></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="applicant_personal_info">
                                            <div class="form-group mb-0">
                                                <div class="input-icon-group mb-5">
                                                    <label for="permanentPoliceOffice">Police Office</label>
                                                </div>
                                                <p>: <input type="text" ng-model="candidateInfo.permanentPS" class="form-control form-control-sm" id="permanentPoliceOffice" aria-describedby="emhelp"></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="applicant_personal_info">
                                            <div class="form-group mb-0">
                                                <div class="input-icon-group mb-5">
                                                    <label for="permanentDistrict">Distinct</label>
                                                </div>
                                                <p>: <select id="permanentDistrict" class="form-control form-control-sm" style="float:right;width:97%;margin-top:8px;"
                                                           ng-model="candidateInfo.permanentDistrict">
                                                      <option value="">Select Option</option>
                                                      <option ng-repeat="option in cities"
                                                              ng-selected="candidateInfo.permanentDistrict == option.name"
                                                              value="{{option.name}}">{{option.name}}
                                                      </option>
                                                  </select></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="applicant_personal_info">
                                            <div class="form-group mb-0">
                                                <div class="input-icon-group mb-5">
                                                    <label for="permanentDistrict">Country</label>
                                                </div>
                                                <p>: <select id="permanentDistrict" class="form-control form-control-sm" style="float:right;width:97%;margin-top:8px;"
                                                           ng-model="candidateInfo.permanentCountry">
                                                      <option value="">Select Option</option>
                                                      <option ng-repeat="option in countries"
                                                              ng-selected="candidateInfo.permanentCountry == option.name"
                                                              value="{{option.name}}">{{option.name}}
                                                      </option>
                                                  </select></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="input-icon-group mb-0 mt-20">
                                    <h6>Other Info: </h6>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="birthDay">Birth Day</label>
                                        </div>
                                        <p>: <input type="date" ng-model="candidateInfo.dob" class="form-control form-control-sm" id="birthDay" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="religion">Religion</label>
                                        </div>
                                        <p>: <select id="religion" class="form-control form-control-sm" style="float:right;width:97%;margin-top:8px;"
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
                                             </select></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="nationality">Nationality</label>
                                        </div>
                                        <p>: <select id="nationality" class="form-control form-control-sm" style="float:right;width:97%;margin-top:8px;"
                                                     ng-model="candidateInfo.nationality">
                                                 <option value="">Select Option</option>
                                                 <option ng-repeat="option in nationality"
                                                         ng-selected="candidateInfo.nationality == option.name"
                                                         value="{{option.name}}">{{option.name}}
                                                 </option>
                                             </select></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="applicant_nid">NID Card No</label>
                                        </div>
                                        <p>: <input type="text" ng-model="candidateInfo.nid" class="form-control form-control-sm" id="applicant_nid" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="bloodGroup">Blood Group</label>
                                        </div>
                                        <p>: <select id="bloodGroup" class="form-control form-control-sm" style="float:right;width:97%;margin-top:8px;"
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
                                             </select></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="identificationMark">Identification Mark</label>
                                        </div>
                                        <p>: <input type="text" ng-model="candidateInfo.identityMark" class="form-control form-control-sm" id="identificationMark" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="maritalStatus">Marital Status</label>
                                        </div>
                                        <p>: <select id="maritalStatus" class="form-control form-control-sm" style="float:right;width:97%;margin-top:8px;"
                                                     ng-model="candidateInfo.maritalStatus">
                                                 <option value="">Select Option</option>
                                                 <option value="Married">Married</option>
                                                 <option value="UnMarried">UnMarried</option>
                                                 <option value="Divorced">Divorced</option>
                                                 <option value="Widowed">Widowed</option>
                                             </select></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="applicant_personal_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="applicant_children">Children's</label>
                                        </div>
                                        <p>: <input type="text" ng-model="candidateInfo.noOfChildren" class="form-control form-control-sm" id="applicant_children" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="application_document mt-20">
                        <div class="form-group">
                            <div class="fileUpload_wrapper">
                                <label for="ps1necessary" class="pr-2">Document:</label>
                                <div class="customUi-checkbox checkboxUi-primary pr-2 ">
                                    <input type="checkbox" ng-model="candidateInfo.presentAddress" id="c-checkboxnid">
                                    <label for="c-checkboxnid">
                                        <span class="label-checkbox"> </span>
                                        <span class="label-helper">NID</span>
                                    </label>
                                </div>
                                <div class="customUi-checkbox checkboxUi-primary pr-2">
                                    <input type="checkbox" ng-model="candidateInfo.presentAddress" id="c-checkboxbirth">
                                    <label for="c-checkboxbirth">
                                        <span class="label-checkbox"></span>
                                        <span class="label-helper">Birth Certificate</span>
                                    </label>
                                </div>
                                <div class=" customUi-checkbox checkboxUi-primary">
                                    <input type="checkbox" ng-model="interviewCard.chairmanCertSubmit" id="c-checkboxcharman">
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
                    <div class="input-icon-group mb-0 mt-20">
                        <h6>Previous Work Experience: </h6>
                    </div>
                    <div class="applicant_previous_experience_wrapper">
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="applicant_previous_work_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-0">
                                            <label for="applicant_previous_company">Company Name</label>
                                        </div>
                                        <p><input type="text" class="form-control form-control-sm" id="applicant_previous_company" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="applicant_previous_work_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-0">
                                            <label for="applicant_previous_position">Position</label>
                                        </div>
                                        <p><input type="text" class="form-control form-control-sm" id="applicant_previous_position" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="applicant_previous_work_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-0">
                                            <label for="applicant_previous_duration">Duration</label>
                                        </div>
                                        <p><input type="text" class="form-control form-control-sm" id="applicant_previous_duration" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="applicant_previous_work_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-0">
                                            <label for="applicant_previous_description">Description</label>
                                        </div>
                                        <p><input type="text" class="form-control form-control-sm" id="applicant_previous_description" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="applicant_previous_work_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-0">
                                            <label for="applicant_previous_company2">Company Name</label>
                                        </div>
                                        <p><input type="text" class="form-control form-control-sm" id="applicant_previous_company2" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="applicant_previous_work_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-0">
                                            <label for="applicant_previous_position2">Position</label>
                                        </div>
                                        <p><input type="text" class="form-control form-control-sm" id="applicant_previous_position2" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="applicant_previous_work_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-0">
                                            <label for="applicant_previous_duration2">Duration</label>
                                        </div>
                                        <p><input type="text" class="form-control form-control-sm" id="applicant_previous_duration2" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="applicant_previous_work_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-0">
                                            <label for="applicant_previous_description2">Description</label>
                                        </div>
                                        <p><input type="text" class="form-control form-control-sm" id="applicant_previous_description2" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="input-icon-group mb-0 mt-20">
                        <h6>Nominated Person Name: </h6>
                    </div>
                    <div class="nominated_info_wrapper mb-30">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="nominated_info">

                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="nominated_name">Name</label>
                                        </div>
                                        <p>: <input type="text" class="form-control form-control-sm" id="nominated_name" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="nominated_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="nominated_relation">Relation</label>
                                        </div>
                                        <p>: <input type="text" class="form-control form-control-sm" id="nominated_relation" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="nominated_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="nominated_address">Address</label>
                                        </div>
                                        <p>: <input type="text" class="form-control form-control-sm" id="nominated_address" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="nominated_info">
                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="nominated_phone">Phone</label>
                                        </div>
                                        <p>: <input type="text" class="form-control form-control-sm" id="nominated_phone" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="applicant_reference_info">
                        <p class="pl-0 mb-0">Does any of you friends or family member worked in Moonlight Garments Ltd. before?</p>
                        <div class="customUi-checkbox d-block checkboxUi-primary pr-2 applicant_reference_info_box">
                            <input type="checkbox" id="applicant_reference_info_box_yes">
                            <label for="applicant_reference_info_box_yes">
                                <span class="label-checkbox"> </span>
                                <span class="label-helper">Yes</span>
                            </label>
                        </div>
                        <div class="customUi-checkbox d-block checkboxUi-primary pr-2 applicant_reference_info_box">
                            <input type="checkbox" id="applicant_reference_info_box_no">
                            <label for="applicant_reference_info_box_no">
                                <span class="label-checkbox"> </span>
                                <span class="label-helper">No</span>
                            </label>
                        </div>
                        <div class="row mt-20">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="reference_name">Name</label>
                                    <div class="input-icon-append">
                                        <input type="text" ng-model="interviewCard.candidateFirstName" class="form-control form-control-sm ng-pristine ng-empty ng-invalid ng-invalid-required ng-touched" id="reference_name" aria-describedby="emhelp" style="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="reference_section">Section</label>
                                    <div class="input-icon-append">
                                        <input type="text" ng-model="interviewCard.candidateFirstName" class="form-control form-control-sm ng-pristine ng-empty ng-invalid ng-invalid-required ng-touched" id="reference_section" aria-describedby="emhelp" style="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="reference_phone">Phone</label>
                                    <div class="input-icon-append">
                                        <input type="text" ng-model="interviewCard.candidateFirstName" class="form-control form-control-sm ng-pristine ng-empty ng-invalid ng-invalid-required ng-touched" id="reference_phone" aria-describedby="emhelp" style="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="add_button float-right">
                            <button type="submit" class="btn btn-gradient-success btn-icon-o float">
                                <i class="fa fa-plus"></i>
                            </button>
                        </div>
                    </div>
                    <div class="applicant_crime_wrapper mt-30">
                        <p class="pl-0 mb-0">have you ever charged for any crime?</p>
                        <div class="customUi-checkbox d-block checkboxUi-primary pr-2 applicant_crime_info_box">
                            <input type="checkbox" id="applicant_crime_info_box_yes">
                            <label for="applicant_crime_info_box_yes">
                                <span class="label-checkbox"> </span>
                                <span class="label-helper">Yes</span>
                            </label>
                        </div>
                        <div class="customUi-checkbox d-block checkboxUi-primary pr-2 applicant_crime_info_box">
                            <input type="checkbox" id="applicant_crime_info_box_no">
                            <label for="applicant_crime_info_box_no">
                                <span class="label-checkbox"> </span>
                                <span class="label-helper">No</span>
                            </label>
                        </div>
                    </div>

                    <div class="input-icon-group mb-0 mt-20">
                        <h6>Agreement: </h6>
                    </div>

                    <div class="applicant_agreement_wrapper pl-15">
                        <p> <span></span> i confirm that all the information i provided in this form are true, complete and accurate.</p>
                        <p> <span></span> I accept the condition that if the information i provided are proven to be falsified the company officials will be able to take the suitable actions against me according to the employee lows </p>
                        <p> <span></span> I accept that i will be employed as a probationary employee for the first 90 day's and can be terminated without any precious notice.</p>

                    </div>

                    <div class="applicant_signature_wrapper mt-60">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="applicant_signature float-left">
                                    <input id="applicant_signature_name" type="text" class="form-control form-control-sm">
                                    <p>Applicant Signature</p>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="applicant_signature float-right">
                                    <input id="applicant_signature_date" type="text" class="form-control form-control-sm">
                                    <p>Date</p>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="input-icon-group mb-0 mt-20">
                        <h6>For Office: </h6>
                    </div>

                    <div class="applicant_info_for_office_wrapper">
                        <div class="row">

                            <div class="col-lg-6">
                                <div class="applicant_info_for_office_info">

                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="applicant_name">Name</label>
                                        </div>

                                        <p>: <input type="text" class="form-control form-control-sm" id="applicant_name" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="applicant_info_for_office_info">

                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="applicant_id">ID No</label>
                                        </div>

                                        <p>: <input type="text" class="form-control form-control-sm" id="applicant_id" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="applicant_info_for_office_info">

                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="applicant_work_section">Section</label>
                                        </div>

                                        <p>: <input type="text" class="form-control form-control-sm" id="applicant_work_section" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="applicant_info_for_office_info">

                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="applicant_learner_period">Learner's Period</label>
                                        </div>

                                        <p>: <input type="text" class="form-control form-control-sm" id="applicant_learner_period" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="applicant_info_for_office_info">

                                    <div class="form-group mb-0">
                                        <div class="input-icon-group mb-5">
                                            <label for="applicant_joining_date">joining Date</label>
                                        </div>

                                        <p>: <input type="date" class="form-control form-control-sm" id="applicant_joining_date" aria-describedby="emhelp"></p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="row mt-20">

                        <div class="col-lg-2">
                            <div class="input-icon-group mb-0">
                                <h6>Salary Structure: </h6>
                            </div>
                        </div>

                        <div class="col-lg-2" style="text-align:right;">
                            <label>Gross (In total)</label>
                        </div>
                        <div class="col-lg-3">
                            <input type="number" class="form-control ng-pristine form-control-sm ng-valid ng-not-empty ng-touched" ng-model="employeeGrossSalary" style="">
                        </div>
                        <div class="col-lg-5">
                            <button type="button" class="btn btn-gradient-info employee_salary_calculate_btn" ng-click="CalculateSalary()">Calculate</button>
                        </div>



                    </div>



                    <div class="salary_structure_wrapper">
                        <div class="row">

                            <div class="salary_structure_info">

                                <div class="form-group mb-0">
                                    <div class="input-icon-group mb-0">
                                        <label for="applicant_salary">Basic Salary</label>
                                    </div>

                                    <p><input type="text" class="form-control form-control-sm" id="applicant_salary" aria-describedby="emhelp"></p>
                                </div>
                            </div>

                            <div class="salary_structure_info">
                                <div class="form-group mb-0">
                                    <div class="input-icon-group mb-0">
                                        <label for="applicant_house_rant">House Rant</label>
                                    </div>

                                    <p><input type="text" class="form-control form-control-sm" id="applicant_house_rant" aria-describedby="emhelp"></p>
                                </div>
                            </div>

                            <div class="salary_structure_info">
                                <div class="form-group mb-0">
                                    <div class="input-icon-group mb-0">
                                        <label for="applicant_medical_allowance">Medical Allowance</label>
                                    </div>

                                    <p><input type="text" class="form-control form-control-sm" id="applicant_medical_allowance" aria-describedby="emhelp"></p>
                                </div>
                            </div>

                            <div class="salary_structure_info">
                                <div class="form-group mb-0">
                                    <div class="input-icon-group mb-0">
                                        <label for="applicant_transport_allowance">Transport Allowance</label>
                                    </div>

                                    <p><input type="text" class="form-control form-control-sm" id="applicant_transport_allowance" aria-describedby="emhelp"></p>
                                </div>
                            </div>

                            <div class="salary_structure_info">
                                <div class="form-group mb-0">
                                    <div class="input-icon-group mb-0">
                                        <label for="applicant_food_allowance">Food Allowance</label>
                                    </div>

                                    <p><input type="text" class="form-control form-control-sm" id="applicant_food_allowance" aria-describedby="emhelp"></p>
                                </div>
                            </div>

                            <div class="salary_structure_info">
                                <div class="form-group mb-0">
                                    <div class="input-icon-group mb-0">
                                        <label for="applicant_total_salary">Total</label>
                                    </div>

                                    <p><input type="text" class="form-control form-control-sm" id="applicant_total_salary" aria-describedby="emhelp"></p>
                                </div>
                            </div>


                        </div>
                    </div>

                    <div class="office_signature_wrapper mt-60">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="office_signature float-left">
                                    <input id="office_signature_name" type="text" class="form-control form-control-sm">
                                    <p>H.R Department</p>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="office_signature float-right">
                                    <input id="office_signature_date" type="text" class="form-control form-control-sm">
                                    <p>Authorities Signature</p>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>

            </div>

            <div class="row mb-30 pr-15">
                <div class="col-lg-12">
                    <div class="box-footer clearfix">
                        <div class="text-right">
                            <button type="submit" class="btn btn-gradient-success">Save</button>
                            <button type="submit" class="btn btn-gradient-primary">Approved</button>
                            <button type="submit" class="btn btn-gradient-warning">Reject</button>
                            <button type="submit" class="btn btn-gradient-info">Print</button>
                            <button type="reset" class="btn btn-gradient-danger" ng-click="cancel()">Cancel
                            </button>
                        </div>
                    </div>
                </div>
            </div>

        </div>


    </div>
</form>