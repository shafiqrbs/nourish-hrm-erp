<div class="dataTables_paginate paging_simple_numbers">
    <ul class="pagination">
        <li class="paginate_button page-item previous" >
            <a href="" ng-click="loadPage(pagination.number - 1)" aria-controls="ks-datatable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
        </li>


        <li class="paginate_button page-item" ng-repeat="page in pagination.pages">
            <a href="" ng-click="loadPage(page)" aria-controls="ks-datatable" data-dt-idx="1" tabindex="0" class="page-link">
                {{page + 1}}
            </a>
        </li>
        <li class="paginate_button page-item next">
            <a href="" ng-click="loadPage(pagination.number + 1)" aria-controls="ks-datatable" data-dt-idx="7" tabindex="0" class="page-link">Next</a>
        </li>
    </ul>
</div>