<form class="form-horizontal form-general" name="LanguageForm" ng-submit="saveLanguageForm(LanguageForm.$valid,candidateLanguage)">
    <div class="row">
        <div class="col-lg-12">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                <div class="portlet-body no-padding">
                    <div class="row no-margin">
                        <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                            <div class="form-group required">
                                <label for="languageName" class="control-label">Select Language</label>
                                <select id="languageName" class="form-control form-control-sm" ng-model="candidateLanguage.languageName" required>
                                    <option value="">Select Option</option>
                                    <option value="Bangla">Bangla</option>
                                    <option value="English">English</option>
                                    <option value="Hindi">Hindi</option>
                                </select>
                            </div>
                            <div class="form-group required">
                                <label for="writing" class="control-label">Writing</label>
                                <select id="writing" class="form-control form-control-sm" ng-model="candidateLanguage.writing" required>
                                    <option value="">Select Writing Skill Points</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                </select>
                            </div>
                        </div>
                    <#--First column end-->
                        <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                            <div class="form-group required">
                                <label for="reading" class="control-label">Reading</label>
                                <select id="reading" class="form-control form-control-sm" ng-model="candidateLanguage.reading" required>
                                    <option value="">Select Reading Skill Points</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                </select>
                            </div>
                            <div class="form-group required">
                                <label for="spoken" class="control-label">Speaking</label>
                                <select id="spoken" class="form-control form-control-sm" ng-model="candidateLanguage.spoken" required>
                                    <option value="">Select Speaking Skill Points</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                            <div class="form-group required">
                                <label for="emlangugelistening" class="control-label">Listening</label>
                                <select id="emlangugelistening" class="form-control form-control-sm" ng-model="candidateLanguage.listening" required>
                                    <option value="">Select Listening Skill Points</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                </select>
                            </div>
                            <div class="d-block" hook="same-as-present">
                                <div class="customUi-checkbox checkboxUi-primary pb-2">
                                    <input id="chk6" type="checkbox" name="motherLanguage"  ng-model="candidateLanguage.motherLanguage">
                                    <label for="chk6">
                                        <span class="label-checkbox"></span>
                                        <span class="label-helper">Language is mother language</span>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="languagenote" class="control-label">Notes</label>
                                <textarea class="form-control form-control-sm" id="languagenote" placeholder="Notes" ng-model="candidateLanguage.notes"></textarea>
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
                    <button type="submit" ng-disabled="isLanguageFormButtonDisabled" class="btn btn-gradient-success">Save</button>
                    <button type="button" ng-disabled="isLanguageFormButtonDisabled" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
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
                    <h3>All Language</h3>
                    <span class="portlet-subtitle">All Language Records</span>
                </div>
            </div>
            <div class="portlet-body no-padding">
                <div class="row no-margin">
                    <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                        <kendo-grid options="LanguageProficiencyOptions" style="height: 200px;"></kendo-grid>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>