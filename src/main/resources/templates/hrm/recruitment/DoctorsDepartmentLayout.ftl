<form class="form-horizontal form-Addictioncertificate" name="Addictioncertificate" ng-submit="">
    <div class="row justify-content-center">
        <div class="col-lg-3 body-aside-table">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">
                <div class="portlet-header flex-row flex d-flex align-items-center b-b">
                    <div class="flex d-flex flex-column">
                        <div class="form-group input-dynamic-add mb-0">
                            <input type="text" ng-model="EmployeeCode" class="form-control form-control-sm ng-pristine ng-untouched ng-valid ng-not-empty" id="EmployeeCode" ng-keyup="loadGeneralEmployeeInfo(EmployeeCode)" placeholder="Search With Employee Code" style="">
                            <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o add-new" ng-click="loadGeneralEmployeeInfo(EmployeeCode)">
                                <i class="fa fa-search"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="portlet-body no-padding">
                    <div class="body-aside-table-inside">
                        <div class="body-aside-table-wrap">
                            <div kendo-grid="" options="EmployeeAllDataOptions" style="height:450px;" data-role="grid" class="k-grid k-widget k-display-block"><div class="k-grid-header" style="padding-right: 0px;"><div class="k-grid-header-wrap k-auto-scrollable"><table role="grid"><colgroup><col style="width:150px"><col style="width:150px"><col style="width:250px"></colgroup><thead role="rowgroup"><tr role="row"><th scope="col" role="columnheader" data-field="employeeCode" aria-haspopup="true" rowspan="1" data-title="Code" data-index="0" id="d368751e-9d03-40d1-bccd-60b2eb328967" class="k-header ng-scope" data-role="columnsorter"><a class="k-link" href="#">Code</a></th><th scope="col" role="columnheader" data-field="firstName" aria-haspopup="true" rowspan="1" data-title="Name" data-index="1" id="2556fd0d-f567-4318-89e8-18e4623515ca" class="k-header ng-scope" data-role="columnsorter"><a class="k-link" href="#">Name</a></th><th scope="col" role="columnheader" data-field="punchCardNo" aria-haspopup="true" rowspan="1" data-title="Punch Card" data-index="2" id="82aa870a-3c40-48e1-b0ca-3b5902abab64" class="k-header ng-scope" data-role="columnsorter"><a class="k-link" href="#">Punch Card</a></th></tr></thead></table></div></div><div class="k-grid-content k-auto-scrollable" style="height: 376.988px;"><table role="grid" data-role="selectable" class="k-selectable"><colgroup><col style="width:150px"><col style="width:150px"><col style="width:250px"></colgroup><tbody role="rowgroup"><tr data-uid="24a9173d-56ec-4978-8d48-1d9568f8e595" role="row" class="ng-scope" aria-selected="false"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000001</span></td><td class="" role="gridcell"><span class="ng-binding"> ALIZA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">000026</span></td></tr><tr class="k-alt ng-scope" data-uid="55e6d849-11ae-46f3-b524-2a26001e12d6" role="row" aria-selected="false"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000003</span></td><td class="" role="gridcell"><span class="ng-binding"> AKLIMA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">003775</span></td></tr><tr data-uid="36a1bd0b-ff48-4dcd-8e00-cbdb7a57a7d3" role="row" class="ng-scope" aria-selected="false"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000004</span></td><td class="" role="gridcell"><span class="ng-binding"> SAZEDAA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">000014</span></td></tr><tr class="k-alt ng-scope" data-uid="2be2e40c-bda1-40da-8f25-72f82aef33eb" role="row" aria-selected="false"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000008</span></td><td class="" role="gridcell"><span class="ng-binding"> REBAKA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">000029</span></td></tr><tr data-uid="dcdfb748-e13c-48a6-84f4-39f3fe9f12d0" role="row" class="ng-scope" aria-selected="false"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000009</span></td><td class="" role="gridcell"><span class="ng-binding"> NURNAHAR</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">001763</span></td></tr><tr class="k-alt ng-scope" data-uid="2e74d00a-eb02-4081-8b47-c08f8a2152a2" role="row" aria-selected="false"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000010</span></td><td class="" role="gridcell"><span class="ng-binding"> SHILPI</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">000172</span></td></tr><tr data-uid="8dc25339-f456-4312-9c7e-e84247e305cb" role="row" class="ng-scope" aria-selected="false"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000014</span></td><td class="" role="gridcell"><span class="ng-binding"> FORIDA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr class="k-alt ng-scope" data-uid="61188d9e-a812-480d-bc2b-a43977a3cbd7" role="row" aria-selected="false"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000017</span></td><td class="" role="gridcell"><span class="ng-binding"> SHIPON</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">000036</span></td></tr><tr data-uid="f64ec536-2f1e-4c0a-b665-5c5a05c4989d" role="row" class="ng-scope" aria-selected="false"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000024</span></td><td class="" role="gridcell"><span class="ng-binding"> NAZMAw</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">000041</span></td></tr><tr class="k-alt ng-scope" data-uid="d0897003-a565-48d4-8eef-a576577f4b33" role="row" aria-selected="false"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000026</span></td><td class="" role="gridcell"><span class="ng-binding"> RINA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">000042</span></td></tr><tr data-uid="e6c02c65-6eb6-4555-8b74-97595eedd694" role="row" class="ng-scope" aria-selected="false"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000034</span></td><td class="" role="gridcell"><span class="ng-binding"> ROZINA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr class="k-alt ng-scope" data-uid="84b74ec0-53a6-4d9a-a995-750a7386c4da" role="row"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000046</span></td><td class="" role="gridcell"><span class="ng-binding"> RASHEDA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">000050</span></td></tr><tr data-uid="4c803fda-3533-4178-8c87-ece38bde943a" role="row" class="ng-scope"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000052</span></td><td class="" role="gridcell"><span class="ng-binding"> ASHRAFUL</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">000051</span></td></tr><tr class="k-alt ng-scope" data-uid="54522eed-4c4e-4d9b-be5c-7340bcab07e4" role="row"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000073</span></td><td class="" role="gridcell"><span class="ng-binding"> ANJU</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">000053</span></td></tr><tr data-uid="7e1f5979-dd37-4421-adbc-e36a3d9a7f09" role="row" class="ng-scope"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000075</span></td><td class="" role="gridcell"><span class="ng-binding"> FATEMA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">000054</span></td></tr><tr class="k-alt ng-scope" data-uid="3c2946e1-ef15-4b11-bdb1-0fde6c880244" role="row"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000077</span></td><td class="" role="gridcell"><span class="ng-binding"> MAJEDA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr data-uid="42a2bba9-e1c8-49af-a3c6-7680ae0b0794" role="row" class="ng-scope"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000085</span></td><td class="" role="gridcell"><span class="ng-binding"> DILRUBA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">001188</span></td></tr><tr class="k-alt ng-scope" data-uid="78888710-4c39-4eb2-ab95-0da865a58937" role="row"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000086</span></td><td class="" role="gridcell"><span class="ng-binding"> MUNNI</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">000058</span></td></tr><tr data-uid="82fff53f-f691-493a-b50d-1d5353c24299" role="row" class="ng-scope"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000105</span></td><td class="" role="gridcell"><span class="ng-binding"> SOBURA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr class="k-alt ng-scope" data-uid="ba410b51-4231-4ac9-bf64-cc6e8279d8f0" role="row"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000113</span></td><td class="" role="gridcell"><span class="ng-binding"> SUMON</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr data-uid="d5354229-7642-4870-8443-e0eb72816477" role="row" class="ng-scope"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000119</span></td><td class="" role="gridcell"><span class="ng-binding"> SANTI</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">000064</span></td></tr><tr class="k-alt ng-scope" data-uid="02a7fa0c-1733-4b9d-8b5b-4926ba8c3342" role="row"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000149</span></td><td class="" role="gridcell"><span class="ng-binding"> SORIFA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr data-uid="53f88bb7-1865-4b35-97db-6b401f3ecc8d" role="row" class="ng-scope"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000166</span></td><td class="" role="gridcell"><span class="ng-binding"> HAJERA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr class="k-alt ng-scope" data-uid="3435e76b-9ba3-47e3-9787-f52ee9a8d583" role="row"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000184</span></td><td class="" role="gridcell"><span class="ng-binding"> HAFESA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">001317</span></td></tr><tr data-uid="3d54510f-4127-41c4-9831-aa667b1adb82" role="row" class="ng-scope"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000194</span></td><td class="" role="gridcell"><span class="ng-binding"> IBRAHIM</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr class="k-alt ng-scope" data-uid="9ce1e4df-3ff5-43c4-933f-29edbe19eb76" role="row"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000225</span></td><td class="" role="gridcell"><span class="ng-binding"> SOPNA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">000093</span></td></tr><tr data-uid="5d670f40-22c6-499a-8800-cc977543c9d8" role="row" class="ng-scope"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000233</span></td><td class="" role="gridcell"><span class="ng-binding"> JOYNAB</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">001022</span></td></tr><tr class="k-alt ng-scope" data-uid="91fe90e2-968f-4654-bd77-09ce203e02f5" role="row"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000236</span></td><td class="" role="gridcell"><span class="ng-binding"> RUKSANA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr data-uid="133c45d9-440d-45a0-963f-9558b5951a22" role="row" class="ng-scope"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000252</span></td><td class="" role="gridcell"><span class="ng-binding"> AMBIA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">002677</span></td></tr><tr class="k-alt ng-scope" data-uid="fba0e0f0-7ac7-4c33-929a-ad1f40e481b7" role="row"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000255</span></td><td class="" role="gridcell"><span class="ng-binding"> SABINA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">002680</span></td></tr><tr data-uid="208ae1c2-d514-44e3-bf86-77fd7a58f913" role="row" class="ng-scope"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000257</span></td><td class="" role="gridcell"><span class="ng-binding"> ANAMUL</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr class="k-alt ng-scope" data-uid="82fab43c-2b1d-42b1-b5b1-958190691210" role="row"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000262</span></td><td class="" role="gridcell"><span class="ng-binding"> LIPI</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">001974</span></td></tr><tr data-uid="7fe1af8a-1291-45bb-9ea9-740fef964f88" role="row" class="ng-scope"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000281</span></td><td class="" role="gridcell"><span class="ng-binding"> SUJA MIA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">001158</span></td></tr><tr class="k-alt ng-scope" data-uid="7d455d6c-27ef-4f3b-8568-799722402eaa" role="row"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000285</span></td><td class="" role="gridcell"><span class="ng-binding"> RINA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">004130</span></td></tr><tr data-uid="3f4a8dce-5158-4ccb-8502-2aa049fb5c10" role="row" class="ng-scope"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000293</span></td><td class="" role="gridcell"><span class="ng-binding"> SHAMOLY</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr class="k-alt ng-scope" data-uid="794e8b26-04e2-4598-a754-4ff946576514" role="row"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000296</span></td><td class="" role="gridcell"><span class="ng-binding"> SAIBNY</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr data-uid="5a65b4bd-abbd-4f70-a903-4b38c27e85af" role="row" class="ng-scope"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000304</span></td><td class="" role="gridcell"><span class="ng-binding"> SUZEDA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr class="k-alt ng-scope" data-uid="f1ab8f4f-3f29-4796-afb7-8d2ae4cd0062" role="row" aria-selected="false"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000308</span></td><td class="" role="gridcell"><span class="ng-binding"> SHEWLY</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr data-uid="b2516a81-8cd6-4745-bc30-7d4943a8f991" role="row" class="ng-scope"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000310</span></td><td class="" role="gridcell"><span class="ng-binding"> SHARMIN</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr class="k-alt ng-scope" data-uid="11301b8b-c541-4ef9-82fe-02873c8fdbfe" role="row"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000317</span></td><td class="" role="gridcell"><span class="ng-binding"> REHANA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr data-uid="93f11fb2-3bb6-410d-be8f-142af1b5613e" role="row" class="ng-scope k-state-selected" aria-selected="true"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000330</span></td><td class="" role="gridcell"><span class="ng-binding"> DEPALI</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr class="k-alt ng-scope" data-uid="a42b7bb6-4fbf-4ade-b4cf-21cb60053ccc" role="row"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000333</span></td><td class="" role="gridcell"><span class="ng-binding"> JONEY</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">000188</span></td></tr><tr data-uid="c8125fe4-ce11-4d39-a3fd-7e558824e2af" role="row" class="ng-scope"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000336</span></td><td class="" role="gridcell"><span class="ng-binding"> NURBANU</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding">001760</span></td></tr><tr class="k-alt ng-scope" data-uid="b1cdae85-ed74-4410-855d-de1abfde459d" role="row"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000342</span></td><td class="" role="gridcell"><span class="ng-binding"> KOLPONA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr data-uid="4e7307c8-f908-4342-809d-24fda6a99b2e" role="row" class="ng-scope"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000343</span></td><td class="" role="gridcell"><span class="ng-binding"> MANNAN</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr class="k-alt ng-scope" data-uid="e44c140b-f0df-44bc-8bcc-c7bb9e5733c3" role="row"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000349</span></td><td class="" role="gridcell"><span class="ng-binding"> SAHINUR</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr data-uid="7f44407e-0af2-45e0-a63c-2cc67fcb7c9e" role="row" class="ng-scope"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000354</span></td><td class="" role="gridcell"><span class="ng-binding"> NIROLLA</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr class="k-alt ng-scope" data-uid="64ce1cf4-8f64-4aa0-90f8-5970493a4042" role="row"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000355</span></td><td class="" role="gridcell"><span class="ng-binding"> RAFIQUL</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr data-uid="13f5c222-93e9-4680-a429-f7447aa6fa17" role="row" class="ng-scope"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000356</span></td><td class="" role="gridcell"><span class="ng-binding"> BASHONTI</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr><tr class="k-alt ng-scope" data-uid="82aa528e-b8ce-464c-b09b-877881d5b012" role="row"><td class="" role="gridcell"><span ng-bind="dataItem.employeeCode" class="ng-binding">E1A000358</span></td><td class="" role="gridcell"><span class="ng-binding"> SHEWLY</span></td><td class="" role="gridcell"><span ng-bind="dataItem.punchCardNo" class="ng-binding"></span></td></tr></tbody></table></div><div class="k-pager-wrap k-grid-pager k-widget k-floatwrap" data-role="pager"><a href="#" aria-label="Go to the first page" title="Go to the first page" class="k-link k-pager-nav k-pager-first k-state-disabled" data-page="1" tabindex="-1"><span class="k-icon k-i-arrow-end-left"></span></a><a href="#" aria-label="Go to the previous page" title="Go to the previous page" class="k-link k-pager-nav k-state-disabled" data-page="1" tabindex="-1"><span class="k-icon k-i-arrow-60-left"></span></a><ul class="k-pager-numbers k-reset"><li class="k-current-page"><span class="k-link k-pager-nav">1</span></li><li><span class="k-state-selected">1</span></li><li><a tabindex="-1" href="#" class="k-link" data-page="2">2</a></li><li><a tabindex="-1" href="#" class="k-link" data-page="3" title="More pages">...</a></li></ul><a href="#" aria-label="Go to the next page" title="Go to the next page" class="k-link k-pager-nav" data-page="2" tabindex="-1"><span class="k-icon k-i-arrow-60-right"></span></a><a href="#" aria-label="Go to the last page" title="Go to the last page" class="k-link k-pager-nav k-pager-last" data-page="182" tabindex="-1"><span class="k-icon k-i-arrow-end-right"></span></a><span class="k-pager-sizes k-label"><span title="" class="k-widget k-dropdown k-header" unselectable="on" role="listbox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-owns="" aria-live="polite" aria-disabled="false" aria-busy="false" aria-activedescendant="51b860b3-31d8-4f2a-8852-f7be3341199e" style=""><span unselectable="on" class="k-dropdown-wrap k-state-default"><span unselectable="on" class="k-input">50</span><span unselectable="on" class="k-select" aria-label="select"><span class="k-icon k-i-arrow-60-down"></span></span></span><select data-role="dropdownlist" aria-label="50" style="display: none;"><option value="20">20</option><option value="50" selected="selected">50</option><option value="100">100</option><option value="200">200</option></select></span></span><a href="#" class="k-pager-refresh k-link" title="Refresh" aria-label="Refresh"><span class="k-icon k-i-reload"></span></a><span class="k-pager-info k-label">1 - 50 of 9051 Records</span></div></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-9">
            <div class="portlet-box portlet-gutter ui-buttons-col mb-30">

                <div class="portlet-body">
                    <div class="form-group">
                        <p>Mr./Mrs/Miss </br><span>Doctor Department</span></p>
                        <#--<label for="certi">Mr./Mrs/Miss</label>-->
                        <#--<input id="certi" type="certi" class="form-control form-control-sm" placeholder="Name">-->
                    </div>

                    <div class="form-group">
                        <div class="customUi-checkbox d-block checkboxUi-primary pr-2 ">
                            <input type="checkbox" id="checkboxemployegmailemployreference">
                            <label for="checkboxemployegmailemployreference">
                                <span class="label-checkbox"> </span>
                                <span class="label-helper">Check teeth and gum checkbox</span>
                            </label>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="customUi-checkbox d-block checkboxUi-primary pr-2 ">
                            <input type="checkbox" id="checkboxemployegmailemployreference2">
                            <label for="checkboxemployegmailemployreference2">
                                <span class="label-checkbox"> </span>
                                <span class="label-helper">Check tongue and lips</span>
                            </label>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="customUi-checkbox d-block checkboxUi-primary pr-2 ">
                            <input type="checkbox" id="checkboxemployegmailemployreference3">
                            <label for="checkboxemployegmailemployreference3">
                                <span class="label-checkbox"> </span>
                                <span class="label-helper">Check eye</span>
                            </label>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="customUi-checkbox d-block checkboxUi-primary pr-2 ">
                            <input type="checkbox" id="checkboxemployegmailemployreference4">
                            <label for="checkboxemployegmailemployreference4">
                                <span class="label-checkbox"> </span>
                                <span class="label-helper">Other sign</span>
                            </label>
                        </div>
                    </div>



                    <div class="row mb-30 mt-30">
                        <div class="col-lg-12">
                            <div class="box-footer clearfix">
                                <div class="text-right">
                                    <button type="submit" class="btn btn-gradient-success">Save</button>
                                    <button type="submit" class="btn btn-gradient-primary">Approved</button>
                                    <button type="submit" class="btn btn-gradient-warning">Reject</button>
                                    <button type="submit" class="btn btn-gradient-info">Print</button>
                                    <button type="reset" class="btn btn-gradient-danger" ng-click="cancel()">Cancel</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--portlet-->
        </div>
    </div><!--row-->
</form>