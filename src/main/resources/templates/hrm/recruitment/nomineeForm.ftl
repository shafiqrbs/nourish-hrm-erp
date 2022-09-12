<form class="form-horizontal form-nomineeform" name="nomineeform" ng-submit="">

    <div class="row">

        <div class="col-lg-12">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">

                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                    <div class="flex d-flex flex-columnn">
                        <h3>Nominee Form</h3>
                    </div>
                </div>
                <div class="nomineeForm_area">



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

                        <div class="col-sm-8">

                            <div class="nominee_personal_info">

                                <div class="form-group mb-0">
                                    <div class="input-icon-group mb-5">
                                        <label for="worker_name">Worker's Name</label>
                                    </div>

                                    <p>: <input type="text" class="form-control form-control-sm" id="worker_name" aria-describedby="emhelp"></p>
                                </div>
                            </div>

                            <div class="nominee_personal_info">

                                <div class="form-group mb-0">
                                    <div class="input-icon-group mb-5">
                                        <label for="company_name">Company Name</label>
                                    </div>

                                    <p>: <input type="text" class="form-control form-control-sm" id="company_name" aria-describedby="emhelp"></p>
                                </div>
                            </div>

                            <div class="nominee_personal_info">

                                <div class="form-group mb-0">
                                    <div class="input-icon-group mb-5">
                                        <label for="company_address">Company Address</label>
                                    </div>

                                    <p>: <input type="text" class="form-control form-control-sm" id="company_address" aria-describedby="emhelp"></p>
                                </div>
                            </div>

                            <div class="nominee_personal_info workers_address">

                                <div class="form-group mb-0">
                                    <div class="input-icon-group mb-5">
                                        <label for="nominee_address">Worker's Address</label>
                                    </div>

                                    <p>: <textarea type="text" class="form-control form-control-sm" id="nominee_address" aria-describedby="emhelp"></textarea></p>
                                </div>
                            </div>

                            <div class="nominee_personal_info">

                                <div class="form-group mb-0">
                                    <div class="input-icon-group mb-5">
                                        <label for="worker_gender">Gender</label>
                                    </div>

                                    <p>: <input type="text" class="form-control form-control-sm" id="worker_gender" aria-describedby="emhelp"></p>
                                </div>
                            </div>

                            <div class="nominee_personal_info">

                                <div class="form-group mb-0">
                                    <div class="input-icon-group mb-5">
                                        <label for="worker_father_name">Father/Mother/husband / Wife Name</label>
                                    </div>

                                    <p>: <input type="text" class="form-control form-control-sm" id="worker_father_name" aria-describedby="emhelp"></p>
                                </div>
                            </div>

                            <div class="nominee_personal_info">

                                <div class="form-group mb-0">
                                    <div class="input-icon-group mb-5">
                                        <label for="worker_birthDay">Birth Day</label>
                                    </div>

                                    <p>: <input type="date" class="form-control form-control-sm" id="worker_birthDay" aria-describedby="emhelp"></p>
                                </div>
                            </div>

                            <div class="nominee_personal_info">

                                <div class="form-group mb-0">
                                    <div class="input-icon-group mb-5">
                                        <label for="worker_identification_mark">Identification Mark</label>
                                    </div>

                                    <p>: <input type="text" class="form-control form-control-sm" id="worker_identification_mark" aria-describedby="emhelp"></p>
                                </div>
                            </div>



                        </div>




                        <div class="col-lg-12">
                            <div class="input-icon-group mb-0 mt-20">
                                <h6>Permanent Address: </h6>
                            </div>

                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="nominee_personal_info">

                                        <div class="form-group mb-0">
                                            <div class="input-icon-group mb-5">
                                                <label for="nominee_village">Village</label>
                                            </div>

                                            <p>: <input type="text" class="form-control form-control-sm" id="nominee_village" aria-describedby="emhelp"></p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="nominee_personal_info">

                                        <div class="form-group mb-0">
                                            <div class="input-icon-group mb-5">
                                                <label for="nominee_postOffice">Post Office</label>
                                            </div>

                                            <p>: <input type="text" class="form-control form-control-sm" id="nominee_postOffice" aria-describedby="emhelp"></p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="nominee_personal_info">

                                        <div class="form-group mb-0">
                                            <div class="input-icon-group mb-5">
                                                <label for="nominee_policeOffice">Police Office</label>
                                            </div>

                                            <p>: <input type="text" class="form-control form-control-sm" id="nominee_policeOffice" aria-describedby="emhelp"></p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="nominee_personal_info">

                                        <div class="form-group mb-0">
                                            <div class="input-icon-group mb-5">
                                                <label for="nominee_district">District</label>
                                            </div>

                                            <p>: <input type="text" class="form-control form-control-sm" id="nominee_district" aria-describedby="emhelp"></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 mt-20">
                            <div class="nominee_personal_info">

                                <div class="form-group mb-0">
                                    <div class="input-icon-group mb-5">
                                        <label for="nominee_joining_date">Joining Date</label>
                                    </div>

                                    <p>: <input type="date" class="form-control form-control-sm" id="nominee_joining_date" aria-describedby="emhelp"></p>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 mt-20">
                            <div class="nominee_personal_info">

                                <div class="form-group mb-0">
                                    <div class="input-icon-group mb-5">
                                        <label for="nominee_position">Position</label>
                                    </div>

                                    <p>: <input type="text" class="form-control form-control-sm" id="nominee_joining_date" aria-describedby="emhelp"></p>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-12 mt-30">
                            <p>I declare and permit that in euets of my death, the following list of nominees will receive all types of usages that are erned by and enfitled to me.</p>
                            <div class="nominee_form_table">

                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th scope="col">nominee's Name, Address and NID No</th>
                                        <th scope="col">Relations with nominated people</th>
                                        <th scope="col">Age</th>
                                        <th scope="col">Each nominee gives the part</th>
                                    </tr>
                                    </thead>

                                    <tbody>

                                    <tr>
                                        <th>(1)</th>
                                        <th>(2)</th>
                                        <th>(3)</th>
                                        <th>(4)</th>
                                    </tr>

                                    <tr>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                    </tr>
                                    <tr>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                    </tr>
                                    <tr>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                    </tr>
                                    <tr>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                    </tr>
                                    <tr>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                    </tr>

                                    <tr>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                    </tr>

                                    <tr>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                        <th><input type="text" class="form-control form-control-sm" id="" aria-describedby="emhelp"></th>
                                    </tr>

                                    </tbody>

                                </table>

                            </div>
                        </div>

                        <div class="col-lg-12 mt-30">
                            <div class="nominee_discus_info">
                                <p>Following the doctor's test mentioned about and verifying the given information, the labour's age is :  <input type="text" class="form-control form-control-sm" id="nominee_discus_input" aria-describedby="emhelp"> year's old</p>
                            </div>

                            <div class="nominee_signature_wrapper mt-60">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="nominee_signature float-left">
                                            <input id="nominee_signature_name" type="text" class="form-control form-control-sm">
                                            <p>Nominee's Signature or Thumb <br /> Impression with Date</p>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="applicant_signature float-right">
                                            <input id="nominee_provider_signature" type="text" class="form-control form-control-sm">
                                            <p>Nomination provider of worker <br /> Signature, Thumb Impression and Date</p>
                                        </div>

                                    </div>

                                    <div class="col-lg-6 mt-60">
                                        <div class="applicant_signature float-left">
                                            <input id="nominee_officer_signature" type="text" class="form-control form-control-sm">
                                            <p>Owner's Signature, Thumb <br /> Impression and Date</p>
                                        </div>

                                    </div>
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