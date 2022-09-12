<form class="form-horizontal form-interviewcard" name="InterviewCardForm" id="InterviewCardForm"
      ng-submit="saveInterViewCardForm(InterviewCardForm.$valid,interviewCard)">
    <div class="row">
        <div class="col-lg-12">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                    <div class="flex d-flex flex-columnn">
                        <h3>Interview card</h3>
                    </div>
                </div>
                <div class="portlet-body no-padding mt-30 mb-30">
                    <div class="">
                        <div class="row no-margin">
                            <div class="col-md-8 offset-md-2">
                                <div class="interview_card_area">

                                    <div class="interview_card_info">

                                        <div class="form-group mb-0">
                                            <div class="input-icon-group mb-5">
                                                <label for="interview_card_date">Date</label>
                                            </div>
                                            <p>: <input type="date" class="form-control form-control-sm" ng-model="interviewCard.interviewDate"
                                                        id="interview_card_date" aria-describedby="emhelp"></p>
                                        </div>
                                    </div>

                                    <div class="interview_card_info">

                                        <div class="form-group mb-0">
                                            <div class="input-icon-group mb-5">
                                                <label for="interview_card_name">1) Candidate Name</label>
                                            </div>
                                            <p>: <input type="text" class="form-control form-control-sm" ng-model="interviewCard.candidateName"
                                                        id="interview_card_name" aria-describedby="emhelp" disabled></p>
                                        </div>
                                    </div>

                                    <div class="interview_card_info">

                                        <div class="form-group mb-0">
                                            <div class="input-icon-group mb-5">
                                                <label for="interview_card_father_name">2) Father</label>
                                            </div>

                                            <p>: <input type="text" class="form-control form-control-sm" ng-model="interviewCard.fatherName"
                                                        id="interview_card_father_name" aria-describedby="emhelp" disabled></p>
                                        </div>
                                        <div class="form-group mb-0">
                                            <div class="input-icon-group mb-5">
                                                <label for="interview_card_spouse_name">2) Spouse Name</label>
                                            </div>

                                            <p>: <input type="text" class="form-control form-control-sm" ng-model="interviewCard.spouseName"
                                                        id="interview_card_spouse_name" aria-describedby="emhelp" disabled></p>
                                        </div>
                                    </div>

                                    <div class="interview_card_info">

                                        <div class="form-group mb-0">
                                            <div class="input-icon-group mb-5">
                                                <label for="interview_card_position">3) Apply For the Position</label>
                                            </div>

                                            <p>: <input type="text" class="form-control form-control-sm" ng-model="interviewCard.applyForPosition"
                                                        id="interview_card_father_name" aria-describedby="emhelp"
                                                        disabled></p>
                                        </div>
                                    </div>

                                    <div class="interview_card_info">

                                        <div class="form-group mb-0">
                                            <div class="input-icon-group mb-5">
                                                <label for="interview_card_birthday_date">4) BirthDay Date</label>
                                            </div>

                                            <p>: <input type="date" class="form-control form-control-sm" ng-model="interviewCard.dateOfBirth"
                                                    id="interview_card_birthday_date" aria-describedby="emhelp" disabled></p>
                                        </div>
                                    </div>

                                    <div class="interview_card_info">

                                        <div class="application_document">
                                            <div class="form-group mb-0">
                                                <div class="fileUpload_wrapper">
                                                    <label for="ps1necessary" class="pr-2">Document:</label>
                                                    <div class="customUi-checkbox checkboxUi-primary pr-2 ">
                                                        <input type="checkbox" ng-model="interviewCard.isNIDSubmit"
                                                               id="c-checkboxnid">
                                                        <label for="c-checkboxnid">
                                                            <span class="label-checkbox"> </span>
                                                            <span class="label-helper">NID</span>
                                                        </label>
                                                    </div>
                                                    <div class="customUi-checkbox checkboxUi-primary pr-2">
                                                        <input type="checkbox"
                                                               ng-model="interviewCard.isBirthDateCertSubmit"
                                                               id="c-checkboxbirth">
                                                        <label for="c-checkboxbirth">
                                                            <span class="label-checkbox"></span>
                                                            <span class="label-helper">Birth Certificate</span>
                                                        </label>
                                                    </div>
                                                    <div class=" customUi-checkbox checkboxUi-primary">
                                                        <input type="checkbox"
                                                               ng-model="interviewCard.isChairmanCertSubmit"
                                                               id="c-checkboxcharman">
                                                        <label for="c-checkboxcharman">
                                                            <span class="label-checkbox"></span>
                                                            <span class="label-helper">Chairman Certificate</span>
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="interview_card_info">

                                        <div class="form-group mb-0">
                                            <div class="input-icon-group mb-5">
                                                <label for="interview_card_others">7) Other's</label>
                                            </div>

                                            <p>: <textarea type="text" class="form-control form-control-sm" ng-model="interviewCard.others"
                                                           id="interview_card_others" aria-describedby="emhelp"
                                                           cols="5"></textarea></p>
                                        </div>
                                    </div>

                                    <div class="interview_card_info">
                                        <div class="form-group mb-0">
                                            <div class="input-icon-group mb-5">
                                                <label for="interview_card_behave">7) Behave</label>
                                            </div>
                                            <p>: <textarea type="text" class="form-control form-control-sm" ng-model="interviewCard.behave"
                                                       id="interview_card_behave" aria-describedby="emhelp" cols="5"></textarea></p>
                                        </div>
                                    </div>
                                    <p class="float-right mb-0 mt-50">HR Department</p>
                                </div>
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
                    <button type="button" class="btn btn-gradient-danger" ng-click="interviewCardFormReset()">Cancel</button>
                    <button type="button" class="btn btn-gradient-info" ng-click="interviewCardPrint()">Print</button>
                </div>
            </div>
        </div>
    </div>
</form>
<div id="printPreviewContainer"><#include "../printPreview/InterviewCardForm.ftl"/></div>