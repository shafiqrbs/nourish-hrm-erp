<section class="action-bar">
    <div class="row">
        <div class="col-md-12">
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li><a href="#">Library</a></li>
                <li class="active">Data</li>
            </ol>
            <from class="employee-search inline pull-right">
                <ul class="employee-search-field list-unstyled list-inline inline">
                    <li>Search Employee</li>
                    <li class="employee-searchform">
                        <div class="">
                            <input type="text" class="form-control" placeholder="Employee Code" ng-model="EmployeeCode" ng-enter="getEmployeeByCode(EmployeeCode)">
                        </div>
                    </li>
                </ul>
            </from>
        </div>
    </div>
</section>