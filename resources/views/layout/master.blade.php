<?php

use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\URL;

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>@yield('title', 'Home Page')</title>

    @section('headerScripts')
    <!-- Bootstrap -->
    <link href="{{ asset ('vendors/bootstrap/dist/css/bootstrap.min.css') }}" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="{{ asset ('vendors/font-awesome/css/font-awesome.min.css') }}" rel="stylesheet">
    <!-- NProgress -->
    <link href="{{ asset ('vendors/nprogress/nprogress.css') }}" rel="stylesheet">
    <!-- iCheck -->
    <link href="{{ asset ('vendors/iCheck/skins/flat/green.css') }}" rel="stylesheet">

    <!-- bootstrap-progressbar -->
    <link href="{{ asset ('vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css') }}" rel="stylesheet">
    <!-- JQVMap -->
    <link href="{{ asset ('vendors/jqvmap/dist/jqvmap.min.css') }}" rel="stylesheet" />
    <!-- bootstrap-daterangepicker -->
    <link href="{{ asset ('vendors/bootstrap-daterangepicker/daterangepicker.css') }}" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="{{ asset ('build/css/custom.min.css') }}" rel="stylesheet">

    <style>
        .sv-root-modern .sv-container-modern__title {
            padding-top: 20px;
            margin-left: 15px;
        }

        .sv-page.sv-body__page {
            margin-left: 20px;
        }

        .correct_answer {
            background-color: rgba(26, 179, 148, 0.2);
        }
    </style>

    <!-- jQuery -->
    <script src="{{ asset ('vendors/jquery/dist/jquery.min.js') }}"></script>
    <!-- Bootstrap -->
    <script src="{{ asset ('vendors/bootstrap/dist/js/bootstrap.min.js') }}"></script>
    <!-- FastClick -->
    <script src="{{ asset ('vendors/fastclick/lib/fastclick.js') }}"></script>
    @show

    @yield('footerScripts')
</head>

<body class="nav-md">
    <div class="container body">
        <div class="main_container">

            <div class="col-md-3 left_col">
                <div class="left_col scroll-view">

                    <div class="navbar nav_title" style="border: 0;">
                        <a href="<?= URL::to('/'); ?>" class="site_title"><span>
                                <center>Yapena Backend</center>
                            </span></a>
                    </div>
                    <div class="clearfix"></div>
                    <!-- menu profile quick info -->
                    <div class="profile clearfix">
                        <div class="profile_pic">
                            <img src="<?= URL::to('/'); ?>/images/user.png" alt="..." class="img-circle profile_img">
                        </div>
                        <div class="profile_info">
                            <span>Welcome,</span>
                        </div>
                    </div>
                    <!-- /menu profile quick info -->
                    <br />
                    <!-- sidebar menu -->
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                        <div class="menu_section">
                            <h3>General</h3>
                            <ul class="nav side-menu">
                                <li class="s-nav">
                                    <a href="{{ url('dashboard') }}"><i class="fa fa-home"></i> Dashboard</span></a>
                                </li>
                            </ul><ul class="nav side-menu">
                                <li><a><i class="fa fa-gear"></i> Master <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li class="s-nav"><a href="{{ route('misi.index') }}">List Meeting</a></li>
                                    </ul>
                                </li>
                            </ul>

                        </div>
                    </div>
                    <!-- /sidebar menu -->
                </div>
            </div>

            <!-- top navigation -->

            <!-- /top navigation -->

            <div class="container">
                @yield('content')
            </div>

            <!-- footer content -->
            <footer>
                <div class="pull-right">
                    ToroCMS - Copyright 2017 Toro Developer
                </div>
                <div class="clearfix"></div>
            </footer>
            <!-- /footer content -->
        </div>
    </div>

    <!-- NProgress -->
    <script src="{{ asset ('vendors/nprogress/nprogress.js') }}"></script>
    <!-- Chart.js -->
    <script src="{{ asset ('vendors/Chart.js/dist/Chart.min.js') }}"></script>
    <!-- gauge.js -->
    <script src="{{ asset ('vendors/gauge.js/dist/gauge.min.js') }}"></script>
    <!-- bootstrap-progressbar -->
    <script src="{{ asset ('vendors/bootstrap-progressbar/bootstrap-progressbar.min.js') }}"></script>
    <!-- iCheck -->
    <script src="{{ asset ('vendors/iCheck/icheck.min.js') }}"></script>
    <!-- Skycons -->
    <script src="{{ asset ('vendors/skycons/skycons.js') }}"></script>
    <!-- Flot -->
    <script src="{{ asset ('vendors/Flot/jquery.flot.js') }}"></script>
    <script src="{{ asset ('vendors/Flot/jquery.flot.pie.js') }}"></script>
    <script src="{{ asset ('vendors/Flot/jquery.flot.time.js') }}"></script>
    <script src="{{ asset ('vendors/Flot/jquery.flot.stack.js') }}"></script>
    <script src="{{ asset ('vendors/Flot/jquery.flot.resize.js') }}"></script>
    <!-- Flot plugins -->
    <script src="{{ asset ('vendors/flot.orderbars/js/jquery.flot.orderBars.js') }}"></script>
    <script src="{{ asset ('vendors/flot-spline/js/jquery.flot.spline.min.js') }}"></script>
    <script src="{{ asset ('vendors/flot.curvedlines/curvedLines.js') }}"></script>
    <!-- DateJS -->
    <script src="{{ asset ('vendors/DateJS/build/date.js') }}"></script>
    <!-- JQVMap -->
    <script src="{{ asset ('vendors/jqvmap/dist/jquery.vmap.js') }}"></script>
    <script src="{{ asset ('vendors/jqvmap/dist/maps/jquery.vmap.world.js') }}"></script>
    <script src="{{ asset ('vendors/jqvmap/examples/js/jquery.vmap.sampledata.js') }}"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="{{ asset ('vendors/moment/min/moment.min.js') }}"></script>
    <script src="{{ asset ('vendors/bootstrap-daterangepicker/daterangepicker.js') }}"></script>

    <!-- Custom Theme Scripts -->
    <script src="{{ asset ('build/js/custom.js') }}"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $('.s-nav').each(function() {
                var link = $(this).find('a');
                var current = window.location.href;
                var href = link.attr('href');
                if (current.includes(href.split('/').pop())) {
                    if ($(this).parent().hasClass('child_menu')) {
                        $(this).parent().css('display', 'block');
                        $(this).parent().parent().addClass('active');
                        $(this).addClass('active');
                    } else {
                        $(this).addClass('active');
                    }
                }
            });
        });
    </script>

    @yield('script')
</body>

</html>
