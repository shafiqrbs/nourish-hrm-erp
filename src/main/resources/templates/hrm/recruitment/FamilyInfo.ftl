<form class="form-horizontal form-general" name="candidateFamilyInfoForm" ng-submit="saveFamilyForm(candidateFamilyInfoForm.$valid,candidateFamilyInfo)">
    <div class="row">
        <div class="col-lg-12">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                <div class="portlet-body no-padding">
                    <div class="row no-margin">
                        <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                            <div class="form-group">
                                <label for="familymnumbr" class="control-label">Family Members</label>
                                <input type="text" class="form-control form-control-sm" id="familymnumbr" placeholder="No. Of Family Members" ng-model="candidateFamilyInfo.noOfFamilyMember" />
                            </div>
                            <div class="form-group">
                                <label for="emaddress" class="control-label">Address</label>
                                <textarea class="form-control form-control-sm" id="emaddress" placeholder="Address" rows="3" ng-model="candidateFamilyInfo.address" ></textarea>
                            </div>
                        </div>
                    <#--First column end-->
                        <div class="col-lg-4 b-r pt-20 pb-20 no-border-lg-down">
                            <div class="form-group select-dynamic-add">
                                <label for="famcountry" class="control-label">Country</label>
                                <select id="famcountry" class="form-control form-control-sm" ng-model="candidateFamilyInfo.country" >
                                    <option value="">Select Option</option>
                                    <option ng-repeat="option in countries"
                                            ng-selected="candidateFamilyInfo.country == option.name"
                                            value="{{option.name}}">{{option.name}}
                                    </option>
                                </select>
                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new" ng-click="Country()">
                                    <i class="fa fa-plus"></i>
                                </a>
                            </div>
                            <div class="form-group select-dynamic-add">
                                <label for="famCity" class="control-label">Living City</label>
                                <select id="famCity" class="form-control form-control-sm" ng-model="candidateFamilyInfo.city" >
                                    <option value="">Select Option</option>
                                    <option ng-repeat="option in cities"
                                            ng-selected="candidateFamilyInfo.city == option.name"
                                            value="{{option.name}}">{{option.name}}
                                    </option>
                                </select>
                                <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new" ng-click="City()">
                                    <i class="fa fa-plus"></i>
                                </a>
                            </div>
                            <div class="form-group">
                                <label for="emphone" class="control-label">Phone</label>
                                <input type="text" class="form-control form-control-sm" id="emphone" placeholder="Phone" ng-model="candidateFamilyInfo.phone" />
                            </div>
                        </div>
                        <div class="col-lg-4 pt-20 pb-20 no-border-lg-down">
                            <div class="form-group">
                                <label for="familyincome" class="control-label">Family Income</label>
                                <input type="number" class="form-control form-control-sm" id="familyincome" placeholder="Family Income" ng-model="candidateFamilyInfo.familyIncome" />
                            </div>
                            <div class="form-group">
                                <label for="familyexpense" class="control-label">Family Expense</label>
                                <input type="number" class="form-control form-control-sm" id="familyexpense" placeholder="Family Expense" ng-model="candidateFamilyInfo.familyExpense" />
                            </div>
                            <div class="form-group">
                                <label for="earningcapable" class="control-label">Capable Person</label>
                                <input type="number" class="form-control form-control-sm" id="earningcapable" placeholder="Earning Capable Person"  ng-model="candidateFamilyInfo.earningCapablePerson" />
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
                    <button type="submit" ng-disabled="isFamilyFormButtonDisabled" class="btn btn-gradient-success">Save</button>
                    <button type="button" ng-disabled="isFamilyFormButtonDisabled" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
                </div>
            </div>
        </div>
    </div>
</form>
                                    