<header class="navbar page-header whiteHeader navbar-expand-lg mb-30">
    <ul class="nav flex-row mr-auto">
        <li class="nav-item">
            <a href="javascript:void(0)" class="nav-link sidenav-btn h-lg-down">
                <span class="navbar-toggler-icon"></span>
            </a>
            <a class="nav-link sidenav-btn h-lg-up" href="#page-aside"  data-toggle="dropdown" data-target="#page-aside">
                <span class="navbar-toggler-icon"></span>
            </a>
        </li>

    </ul>
    <ul class="nav flex-row order-lg-2 ml-auto nav-icons">
        <li class="nav-item dropdown tools-dropdown h-lg-down">
            <a href="javascript:void(0)" class="btn btn-gradient-success btn-icon-o btn-action-new" data-toggle="dropdown" class=" nav-link">
                <i class="fa fa-plus"></i></a>
            <div class="dropdown-menu dropdown-menu-right dropdown-menu-lg">
                <div class="row no-margin">

                    <div class="col-6 p-3">
                        <a href="index.html" class="d-block tool-item">
                            <i class="icon-New-Mail text-teal"></i>
                            <div class="tool-heading fs12">New Interview</div>
                        </a>
                    </div>
                    <div class="col-6 p-3 text-center">
                        <a href="index.html" class="d-block tool-item">
                            <i class="icon-Folder-Add text-success"></i>
                            <div class="tool-heading fs12">New Leave</div>
                        </a>
                    </div>
                    <div class="col-6 p-3 text-center">
                        <a href="index.html" class="d-block tool-item">
                            <i class="icon-Administrator text-primary"></i>
                            <div class="tool-heading fs12">New Salary Rule</div>
                        </a>
                    </div>
                    <div class="col-6 p-3  text-center">
                        <a href="index.html" class="d-block tool-item">
                            <i class="icon-Gear text-dark"></i>
                            <div class="tool-heading fs12">New Salary Head</div>
                        </a>
                    </div>
                    <div class="col-6 p-3 text-center">
                        <a href="index.html" class="d-block tool-item">
                            <i class="icon-Server-2 text-info"></i>
                            <div class="tool-heading fs12">Server Space</div>
                        </a>
                    </div>
                    <div class="col-6 p-3 text-center">
                        <a href="index.html" class="d-block tool-item">
                            <i class="icon-Ticket text-danger"></i>
                            <div class="tool-heading fs12">Tickets</div>
                        </a>
                    </div>
                </div>

            </div>
        </li>
        <li class="nav-item dropdown user-dropdown align-items-center">
            <a class="nav-link" href="javascript:void(0)" id="dropdown-user" role="button" data-toggle="dropdown">
                                <span class="user-states states-online">
                                    <!--  <img src="images/avatar6.jpg" width="35" alt="" class=" img-fluid rounded-circle">  -->
                                </span>
                <span class="ml-2 h-lg-down dropdown-toggle">
                                    Hi, Admin
                                </span>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-user" ng-controller="logoutController">
                <div class="text-center p-3 pt-0 b-b mb-5">
                    <span class="mb-0 d-block font300 text-title fs-1x">Hi! <span class="font700">Sarah Taylor</span></span>
                    <span class="fs12 mb-0 text-muted">Administrator</span>
                </div>
                <#--<a class="dropdown-item" href="#"><i class="icon-User"></i>My Profile</a>-->
                <#--<a class="dropdown-item" href="#"><i class="icon-Newspaper"></i> Tasks</a>-->
                <#--<a class="dropdown-item" href="#"><i class="icon-Speach-Bubble4 "></i> Messages <span class="badge badge-text text-primary-active bg-primary-light ml-2">5 New</span></a>-->
                <#--<div class="dropdown-divider"></div>-->
                <#--<a class="dropdown-item" href="#"><i class="icon-Gear"></i> Settings<span class="badge badge-text text-danger-active bg-danger-light ml-2">Update</span></a>-->
                <#--<div class="dropdown-divider"></div>-->
                <a class="dropdown-item" href="#" ng-click="logout()"><i class="icon-Power"></i> logout</a>

            </div>
        </li>
        <li class="h-lg-up nav-item">
            <a href="javascript:void(0)" class=" nav-link collapsed" data-toggle="collapse" data-target="#navbarToggler" aria-expanded="false">
                <i class="icon-Magnifi-Glass2"></i>
            </a>
        </li>
    </ul>
    <div class="collapse navbar-collapse search-collapse" id="navbarToggler">
        <form class="form-inline ml-1">
            <button class="no-padding bg-trans border0" type="button"><i class="icon-Magnifi-Glass2"></i></button>
            <input class="form-control border0" type="search" placeholder="Search..." aria-label="Search">
        </form>
    </div>
</header>
