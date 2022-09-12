<div class="row">
    <div class="col-lg-12">
        <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
            <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                <div class="flex d-flex flex-columnn">
                    <h3>IE Department</h3>

                </div>
            </div>
            <div class="portlet-body no-padding">
                <div class="row no-margin">
                    <div class="col-md-6 offset-md-3 mt-30">
                        <form class="form-horizontal form-iedepartment" name="IESkillMatrixSection" ng-submit="addSectionIntoCandidate(IESkillMatrixSection.$valid,skillMatrixSectionDTO)">
                            <table class="table" style="margin:10px 0 0 0;width:285px;">
                                <tr>
                                    <td style="border:0; padding-top: 1px;"><label class="form-label">Section</label></td>
                                    <td style="border:0;">
                                        <select id="district" style="width:180px;" class="form-control form-control-sm" ng-model="skillMatrixSectionDTO.sectionId" required>
                                            <option value="">Select Option</option>
                                            <option ng-repeat="option in SkillMatrixSection" value="{{option.sectionId}}">{{option.sectionName}}</option>
                                        </select>
                                    </td>
                                    <td style="border:0;">
                                        <button type="submit" class="btn btn-gradient-success btn-icon-o">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
                <form class="form-horizontal form-iedepartment" name="IEDepartment" ng-submit="saveSkillMatrixForm(IEDepartment.$valid,SkillMatrixDTO)">
                    <div class="row no-margin">
                        <div class="col-lg-12 b-r pt-20 pb-20 no-border-lg-down">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="ie-skill-matrix" ng-repeat="records in IESkillMatrixLeftColumnObj">
                                        <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                                            <div class="portlet-header flex-row flex d-flex align-items-center b-b" style="min-height:35px;font-weight:bold; padding:0 1rem;">
                                                <div class="flex d-flex flex-column" ng-init="skillMatrixProcessObj[$index].sectionId=records.sectionId">
                                                    <div style="float:left;width:100%;margin:0;padding:0;">{{records.sectionName}}
                                                        <a ng-click="deleteCandidateSection(records.candidateSectionId)" style="float: right;">
                                                            <i class="fa fa-trash" aria-hidden="true"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="portlet-body no-padding">
                                                <div class="row no-margin">
                                                    <div class="col-lg-12 pt-20 pb-20 no-border-lg-down">
                                                        <table class="table" style="width:360px;border:0;margin:0;">
                                                            <tr>
                                                                <td style="width:30%;border:0;">
                                                                    <label class="form-label" ng-init="skillMatrixProcessObj[$index].candidateSectionId=records.candidateSectionId">Process Name</label>
                                                                </td>
                                                                <td style="width:50%;border:0;">
                                                                    <select id="district" style="width:180px;" class="form-control form-control-sm" ng-model="skillMatrixProcessObj[$index].processId">
                                                                        <option value="">Select Option</option>
                                                                        <option ng-repeat="option in records.sectionProcessDTOS" value="{{option.processId}}">{{option.processName}}</option>
                                                                    </select>
                                                                </td>
                                                                <td style="width:20%;border:0;text-align:left;">
                                                                    <a href="javascript:void(0)" ng-click="addNewProcess($index,skillMatrixProcessObj)" data-toggle="dropdown"
                                                                       class="btn btn-gradient-primary btn-icon-o">
                                                                        <i class="fa far fa-caret-square-down"></i>
                                                                    </a>
                                                                    <a href="javascript:void(0)" ng-click="createNewProcess($index,skillMatrixProcessObj)" data-toggle="dropdown"
                                                                       class="btn btn-gradient-success btn-icon-o">
                                                                        <i class="fa fa-plus"></i>
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                        </table>

                                                        <table class="table">
                                                            <thead>
                                                                <th style="border: 1px solid #e1eaea;">SL</th>
                                                                <th style="border: 1px solid #e1eaea; width:30%">Process</th>
                                                                <th style="border: 1px solid #e1eaea">Exam Target</th>
                                                                <th style="border: 1px solid #e1eaea">Aquired</th>
                                                                <th style="border: 1px solid #e1eaea">Psc per Sec</th>
                                                                <th style="border: 1px solid #e1eaea">Efficiency %</th>
                                                                <th style="border: 1px solid #e1eaea; width:5%">#</th>
                                                            </thead>
                                                            <tbody>
                                                            <tr style="border: 1px solid #e1eaea" ng-repeat="row in records.skillMatrixDetailsDTOS">
                                                                <td style="border-right: 1px solid #e1eaea; text-align:center; font-weight:500;">{{$index + 1}}</td>
                                                                <td style="border-right: 1px solid #e1eaea">
                                                                    <span ng-if="row.processName.indexOf('Unnamed') == -1">{{row.processName}}</span>
                                                                    <input ng-blur="updateSectionName(records.sectionId,row.skillMatrixDetailId,SkillMatrixDTO[records.sectionId - 1].skillMatrixDetailsDTOS[$index].processName,row.processName)"
                                                                           ng-if="row.processName.indexOf('Unnamed') !== -1" type="text" name="howmuch"
                                                                           ng-model="SkillMatrixDTO[records.sectionId - 1].skillMatrixDetailsDTOS[$index].processName"
                                                                           ng-init="SkillMatrixDTO[records.sectionId - 1].skillMatrixDetailsDTOS[$index].processName=row.processName"
                                                                           class="form-control form-control-sm" />
                                                                </td>
                                                                <td style="border-right: 1px solid #e1eaea">
                                                                    <span style="display:none;" ng-init="SkillMatrixDTO[records.sectionId - 1].sectionId = records.sectionId"></span>
                                                                    <span style="display:none;" ng-init="SkillMatrixDTO[records.sectionId - 1].candidateSectionId = records.candidateSectionId"></span>
                                                                    <span style="display:none;" ng-init="SkillMatrixDTO[records.sectionId - 1].sectionName = records.sectionName"></span>

                                                                    <span style="display:none;" ng-init="SkillMatrixDTO[records.sectionId - 1].skillMatrixDetailsDTOS[$index].skillMatrixResultId = row.skillMatrixResultId"></span>
                                                                    <span style="display:none;" ng-init="SkillMatrixDTO[records.sectionId - 1].skillMatrixDetailsDTOS[$index].skillMatrixDetailId = row.skillMatrixDetailId"></span>
                                                                    <span style="display:none;" ng-init="SkillMatrixDTO[records.sectionId - 1].skillMatrixDetailsDTOS[$index].candidateSectionDetailId = row.candidateSectionDetailId"></span>
                                                                    <span style="display:none;" ng-init="SkillMatrixDTO[records.sectionId - 1].skillMatrixDetailsDTOS[$index].processName = row.processName"></span>
                                                                    <input type="number" name="exmtarget" ng-model="SkillMatrixDTO[records.sectionId - 1].skillMatrixDetailsDTOS[$index].examTarget"
                                                                           ng-init="SkillMatrixDTO[records.sectionId - 1].skillMatrixDetailsDTOS[$index].examTarget=row.examTarget"
                                                                           class="form-control form-control-sm" style="width: 100%">
                                                                </td>
                                                                <td style="border-right: 1px solid #e1eaea">
                                                                    <input type="number" name="howmuch" ng-model="SkillMatrixDTO[records.sectionId - 1].skillMatrixDetailsDTOS[$index].howMuchCanGet"
                                                                           ng-init="SkillMatrixDTO[records.sectionId - 1].skillMatrixDetailsDTOS[$index].howMuchCanGet=row.howMuchCanGet"
                                                                           class="form-control form-control-sm" />
                                                                </td>
                                                                <td style="border-right: 1px solid #e1eaea">
                                                                    <input type="number" name="pcsper" ng-model="SkillMatrixDTO[records.sectionId - 1].skillMatrixDetailsDTOS[$index].pscPerSec"
                                                                           ng-init="SkillMatrixDTO[records.sectionId - 1].skillMatrixDetailsDTOS[$index].pscPerSec=row.pscPerSec"
                                                                           class="form-control form-control-sm" style="width: 100%">
                                                                </td>
                                                                <td style="border-right: 1px solid #e1eaea">
                                                                    <input type="number" name="currenteff" ng-model="SkillMatrixDTO[records.sectionId - 1].skillMatrixDetailsDTOS[$index].efficiencyPct"
                                                                           ng-init="SkillMatrixDTO[records.sectionId - 1].skillMatrixDetailsDTOS[$index].efficiencyPct=row.efficiencyPct"
                                                                           class="form-control form-control-sm" style="width: 100%">
                                                                </td>
                                                                <td style="border-right: 1px solid #e1eaea;text-align:center;">
                                                                    <a ng-click="deleteCandidateSectionDetails(row.candidateSectionDetailId)"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                                                </td>
                                                            </tr>
                                                            </tbody>
                                                        </table>
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
                                <div class="text-right">
                                    <button type="submit" class="btn btn-gradient-success">Save</button>
                                    <button type="submit" class="btn btn-gradient-primary">Approved</button>
                                    <button type="submit" class="btn btn-gradient-warning">Reject</button>
                                    <button type="button" class="btn btn-gradient-info" ng-click="ieDepartmentSkillMatrixFormPrint()">Print</button>
                                    <button type="reset" class="btn btn-gradient-danger" ng-click="cancel()">
                                        Cancel
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div id="printPreviewContainer"><#include "../printPreview/IEDepartmentSkillMatrixForm.ftl"/></div>

<style type="text/css">
    .table td, .table th {
        padding: .25rem;
    }

    .table th {
        text-align: center;
    }
</style>