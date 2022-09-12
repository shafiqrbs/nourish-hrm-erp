<!DOCTYPE html>
<html ng-app="cloudErpLoginApp">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>CloudHRM</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="/libs/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/global/css/bootstrap-datepicker.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/libs/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="/libs/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/assets/global/css/main_style.css">
    <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
          page. However, you can choose any other skin. Make sure you
          apply the skin class to the body tag so the changes take effect. -->
    <link rel="stylesheet" href="/assets/global/css/skins/skin-blue.css">
    <link rel="stylesheet" href="/assets/global/plugin/iCheck/square/blue.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <style>
        /* Login form */
        .login100-form {
            padding: 80px 80px;
        }
        .text-center.w-full.p-t-23 a {
            color: #fff;
            font-weight: bold;
            text-align: center;
            margin-top: 15px;
            display: block;
        }
        .wrap-input100 {
            width: 100%;
            position: relative;
            border: none;
            border-bottom: none;
        }
        input.input100 {
            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            -moz-transition: all 0.4s;
            transition: all 0.4s;
            width: 100%;
            display: block;
        }
        input.input100 {
            height: 100%;
            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            -moz-transition: all 0.4s;
            transition: all 0.4s;
            width: 100%;
            display: block;
        }
        .wrap-input100.rs1 {
            border-top-left-radius: 12px;
            border-right: none;
            margin-bottom: 16px;
        }
        .wrap-input100.rs2 {
            margin-bottom: 10px;
        }
        .label-input100 {
            top: 20px;
        }
        .wrap-input100.rs1 {
            margin-bottom: 0;
        }
        .wrap-input100.rs2 {
            margin-bottom: 10px;
            border-radius: 7px;
        }
        .login100-form-btn {
            height: 60px;
            -webkit-border-radius: 7px;
            -moz-border-radius: 7px;
            border-radius: 7px;
        }
        input.input100 {
            border-radius: 7px 7px 0 0;
        }
        .rs2 input.input100 {
            border-radius: 0 0 7px 7px;
        }
        .label-input100 {
            top: 8px;
        }
        .wrap-input100 input{
            width: 100%;
            border: none;
            min-height: 70px;
            padding-left: 50px;
        }
        .wrap-input100 input{
            border: 1px solid #eaeaea !important;
        }
        .wrap-input100.rs1 input{
            border-bottom: 0px solid #eaeaea !important;
            border-radius: 12px 12px 0px 0;
        }
        .wrap-input100 input:focus{
            border: none;
        }
        .wrap-input100.rs2 input{
            border-radius: 0 0 12px 12px;
        }

        .title_border {
            background-color: #3577ff;
            width: 80px;
            height: 4px;
            margin-bottom: 50px;
            float: left;
            border-radius: 15px;
        }
        .forget_pass{
            width: 100%;
            margin-bottom: 40px;
        }
        .forget_pass a{
            color: #8d8f8f !important;
            margin-right: -27px;
        }
        .login_title h2{
            margin-bottom: 30px !important;
        }
        .login_title p{
            margin-bottom: 40px;
            font-size: 17px;
            color: #8c8989;
        }
        .title_border{
            margin-right: 10px;
        }

        .title_border.border_two{
            background-color: #8c8989;
        }

        .wrap-input100 span.glyphicon{
            top: 28px !important;
            color: #8c8989 !important;
        }
        .login_wrapper_option{
            width: 100%;
        }
        .fileUpload_wrapper .customUi-checkbox{
            display: inline-block;
        }
        .pr-2{
            color: #8c8989 !important;
            font-weight: normal;
        }
        .social_login {
            margin-top: 90px;
        }

        .social_login ul{
            margin: 0;
            padding: 0;
            list-style: none;
        }

        .social_login ul li{
            float: left;
            font-size: 16px;
        }

        .social_login ul li a{
            margin-left: 15px;
            font-weight: 500;
        }

        .customUi-checkbox input{
            border-radius: 5px;
        }
        .signUp_wrapper{
            width: 100%;
        }

        .create_profile{
            box-shadow: 0 3px 20px rgba(0,0,0,.18);
            background-color: #fff;
            color: #3577ff;
        }
        .create_profile:hover{
            color: #fff;
        }

        input:-webkit-autofill,
        input:-webkit-autofill:hover,
        input:-webkit-autofill:focus,
        input:-webkit-autofill:active {
            background: #000;
            -webkit-background-color: #000 !important;
            -webkit-text-fill-color: #000 !important;
            -webkit-box-shadow: 0 0 0px 1000px white inset;
        }

        .icheckbox_square-blue:not(.checked):not(.hover) {
            border-radius: 5px;
            margin: 0;
            padding: 0;
            border: 1px solid #ddd;
            background: transparent;
        }
        .icheckbox_square-blue.hover,
        .icheckbox_square-blue.checked {
            border-radius: 5px;
            overflow: hidden;
        }


    </style>
</head>
<body class="hold-transition login-page" ng-controller="loginController">

<div class="login_wrapper">
    <div class="container-fluid">

        <div class="row">
            <div class="col-md-7 login_img_left">
            </div>
            <div class="col-md-5 login_wrapper">
                <div class="login_form">
                    <form class="login100-form validate-form"  ng-submit="submitLoginForm(user)">

                        <div class="login_title">
                            <h2>Welcome To <span>Brickshare</span></h2>
                            <p class="pb-40">We make is easy for everything to invest in real estate</p>
                            <div class="title_border"></div>
                            <div class="title_border border_two"></div>
                        </div>

                        <div class="wrap-input100 rs1 validate-input" data-validate = "Username is required">
                            <span class="glyphicon glyphicon-envelope"></span>
                            <input class="" ng-model="user.email" name="email" type="email">
                            <span class="label-input100 sr-only">Email</span>
                        </div>


                        <div class="wrap-input100 rs2 validate-input" data-validate="Password is required">
                            <span class="glyphicon glyphicon-lock"></span>
                            <input class="" ng-model="user.password" name="password"  type="password">
                            <span class="label-input100 sr-only">Password</span>
                        </div>
                        <div class="row login_wrapper_option">
                            <div class="col-md-6">
                                <div class="login_option">
                                    <div class="form-group">
                                        <div class="fileUpload_wrapper">

                                            <div class="customUi-checkbox checkboxUi-primary pr-2 ">
                                                <input type="checkbox" ng-model="interviewCard.nidsubmit" id="c-checkboxnid" class="ng-pristine ng-untouched ng-valid ng-empty">
                                                <label for="c-checkboxnid">
                                                    <span class="label-checkbox"> </span>
                                                </label>
                                            </div>
                                            <label for="ps1necessary" class="pr-2">Remember Me</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="text-right forget_pass w-full p-t-23">
                                    <a href="#" class="txt1 float-right">
                                        Forgot password?
                                    </a>
                                </div>
                            </div>
                        </div>


                        <div class="row signUp_wrapper">
                            <div class="col-md-6">
                                <div class="container-login100-form-btn">
                                    <button class="login100-form-btn">
                                        Login
                                    </button>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="container-login100-form-btn">
                                    <button class="login100-form-btn create_profile">
                                        Create Profile
                                    </button>
                                </div>
                            </div>
                        </div>



                        <div class="social_login">
                            <ul>
                                <li style="color: #8c8989;">
                                    Or Login With
                                </li>
                                <li>
                                    <a href="">Facebook</a>
                                </li>
                                <li>
                                    <a href="">Twitter</a>
                                </li>
                                <li>
                                    <a href="">Google</a>
                                </li>
                            </ul>
                        </div>

                    </form>
                </div>
            </div>
        </div>

    </div>
</div>


<#--<div class="limiter">-->
<#--<div class="container-login100">-->
<#--<div class="wrap-login100 p-b-160 p-t-50">-->
<#--&lt;#&ndash;     <form class="login100-form validate-form" action="../../user/login" method="POST" modelAttribute="user">&ndash;&gt;-->
<#--<form class="login100-form validate-form"  ng-submit="submitLoginForm(user)">-->

<#--<span class="login100-form-title p-b-43">-->
<#--Account Login-->
<#--</span>-->

<#--<div class="wrap-input100 rs1 validate-input" data-validate = "Username is required">-->
<#--<input class="input100" ng-model="user.email" name="email" type="email">-->
<#--<span class="label-input100">Email</span>-->
<#--</div>-->


<#--<div class="wrap-input100 rs2 validate-input" data-validate="Password is required">-->
<#--<input class="input100" ng-model="user.password" name="password"  type="password">-->
<#--<span class="label-input100">Password</span>-->
<#--</div>-->

<#--<div class="container-login100-form-btn">-->
<#--<button class="login100-form-btn">-->
<#--Sign in-->
<#--</button>-->
<#--</div>-->

<#--<div class="text-center w-full p-t-23">-->
<#--<a href="#" class="txt1">-->
<#--Forgot password?-->
<#--</a>-->
<#--</div>-->
<#--</form>-->
<#--</div>-->
<#--</div>-->
<#--</div>-->



<#--<div class="login-box">-->
<#--<div class="login-logo">-->
<#--<a href="/auth/login"><b>Cloud</b>HRM</a>-->
<#--</div>-->
<#--<!-- /.login-logo &ndash;&gt;-->
<#--<div class="login-box-body">-->
<#--<p class="login-box-msg">Sign in to start your session</p>-->

<#--<form action="../../user/login" method="POST" modelAttribute="user">-->
<#--<div class="form-group has-feedback">-->
<#--<input ng-model="email" name="email" type="email" class="form-control" placeholder="Email">-->
<#--<span class="glyphicon glyphicon-envelope form-control-feedback"></span>-->
<#--</div>-->
<#--<div class="form-group has-feedback">-->
<#--<input ng-model="password" name="password"  type="password" class="form-control" placeholder="Password">-->
<#--<span class="glyphicon glyphicon-lock form-control-feedback"></span>-->
<#--</div>-->
<#--<div class="row">-->
<#--<div class="col-xs-8">-->
<#--<div class="checkbox icheck">-->
<#--<label>-->
<#--<input ng-model="rememberMe" name="rememberMe" type="checkbox"> Remember Me-->
<#--</label>-->
<#--</div>-->
<#--</div>-->
<#--<!-- /.col &ndash;&gt;-->
<#--<div class="col-xs-4">-->
<#--<button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>-->
<#--</div>-->
<#--<!-- /.col &ndash;&gt;-->
<#--</div>-->
<#--</form>-->

<#--<div class="social-auth-links text-center">-->
<#--<p>- OR -</p>-->
<#--<a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using-->
<#--Facebook</a>-->
<#--<a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using-->
<#--Google+</a>-->
<#--</div>-->
<#--<!-- /.social-auth-links &ndash;&gt;-->

<#--<a href="#">I forgot my password</a><br>-->
<#--<a href="register.html" class="text-center">Register a new membership</a>-->

<#--</div>-->
<#--<!-- /.login-box-body &ndash;&gt;-->
<#--</div>-->
<#--<!-- /.login-box &ndash;&gt;-->

<!-- jQuery 3 -->
<script src="/libs/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="/libs/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="/assets/global/js/adminlte.js"></script>
<!-- iCheck -->
<script src="/assets/global/plugin/iCheck/icheck.min.js"></script>
<!-- angularjs lib -->
<script src="/libs/angular/angular.min.js"></script>
<script src="/libs/angular/angular-ui-router.min.js"></script>
<script src="/libs/angular/angular-animate.js"></script>
<script src="/libs/angular/angular-touch.js"></script>
<script src="/libs/angular/angular-ui-bootstrap/ui-bootstrap-tpls.min.js"></script>

<!-- Load angular js controllers, services and directives-->
<script src="/assets/hrm/app/controller/account/loginController.js"></script>


<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' /* optional */
        });
    });
</script>
</body>
</html>