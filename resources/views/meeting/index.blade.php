@extends('layout.master')
@section('title', 'Misi')
@section('content')
<?php

use Illuminate\Support\Facades\Session;

?>

<div class="right_col" role="main">
    <div class="">
        <div class="row top_tiles">
            <div class="wrapper">
                <div class="row" id="row-report">
                    <div class="d-flex">
                        <section class="panel">
                            <header class="panel-heading" style = "font-size:30px;">
                                List Class Meeting
                            </header>
                            <div class="panel-body" id="toro-area">
                                <select class="form-select" aria-label="Default select example" style="width:100%; height: 50px; margin-bottom:10px;">
                                    <option selected style="text-align:center">Open this select menu</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                                <div class="col text-center ">
                                    <a class="btn btn-info" >Tambah Meeting</a>
                                </div >
                                <div class="container" >

                                    <div class="x_content" >

                                        <div class="accordion" id="accordion" role="tablist" aria-multiselectable="true">
                                            <div class="panel">
                                            <a class="panel-heading collapsed" role="tab" >

                                                <h4 class="panel-title" >Pertemuan 1 - Perkenalan Kelas</h4>

                                                 <ul class="nav navbar-right panel_toolbox ">
                                                            <!-- <li><button class="glyphicon glyphicon-trash btn btn-primary m-3" ></button>
                                                            </li>
                                                            <li><button class="glyphicon glyphicon-trash btn btn-primary" ></button>
                                                            </li> -->

                                                            <button class="btn collapse-link " aria-hidden="true" id="headingOne" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne"><i class="fa fa-chevron-up"></i>
                                                            </button>
                                                         <button class="btn btn-danger"><i class="fa fa-trash"></i></button>
                                                           <button class="btn btn-info"><i class="fa fa-search"></i></button>
                                                            <button class="btn btn-success">  <i class="fa fa-edit"></i></button>

                                                        </ul>
                                                 <div class="clearfix"></div>
                                            </a>
                                            <div id="collapseOne" class="panel-collapse in collapse" role="tabpanel" aria-labelledby="headingOne" style="">
                                            <div class="panel-body">
                                                <div class="x_panel">
                                                    <div class="x_title">
                                                        <h2> Materials</h2>
                                                           <ul class="nav navbar-right panel_toolbox">
                                                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                                            </li>

                                                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                                                            </li>
                                                        </ul>
                                                        <div class="clearfix"></div>

                                                    </div>
                                                    <div class="x_content" style="display: block;">
                                                        <div class="col-xs-3">

                                                        <h5>Aljabar</h5>

                                                        </div>
                                                        <div class="clearfix"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel-body">
                                                <div class="x_panel">
                                                    <div class="x_title">
                                                        <h2> Materials</h2>
                                                            <ul class="nav navbar-right panel_toolbox">
                                                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                                            </li>

                                                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                                                            </li>
                                                        </ul>
                                                        <div class="clearfix"></div>
                                                    </div>
                                                    <div class="x_content" style="display: block;">
                                                        <div class="col-xs-3">

                                                        <h5>Aljabar</h5>

                                                        </div>
                                                        <div class="clearfix"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion" id="accordion" role="tablist" aria-multiselectable="true">
                                            <div class="panel">
                                            <a class="panel-heading collapsed" role="tab" >
                                                <h4 class="panel-title" >Pertemuan 2- Perkenalan Kelas</h4>

                                                 <ul class="nav navbar-right panel_toolbox ">
                                                            <!-- <li><button class="glyphicon glyphicon-trash btn btn-primary m-3" ></button>
                                                            </li>
                                                            <li><button class="glyphicon glyphicon-trash btn btn-primary" ></button>
                                                            </li> -->
                                                            <button class="btn collapse-link " aria-hidden="true" id="headingTwo" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo"><i class="fa fa-chevron-up"></i>
                                                            </button>
                                                         <button class="btn btn-danger"><i class="fa fa-trash"></i></button>
                                                           <button class="btn btn-info"><i class="fa fa-search"></i></button>
                                                            <button class="btn btn-success">  <i class="fa fa-edit"></i></button>

                                                        </ul>
                                                 <div class="clearfix"></div>
                                            </a>
                                            <div id="collapseTwo" class="panel-collapse in collapse" role="tabpanel" aria-labelledby="headingTwo" style="">
                                            <div class="panel-body">
                                                <div class="x_panel">
                                                    <div class="x_title">
                                                        <h2> Materials</h2>
                                                            <ul class="nav navbar-right panel_toolbox">
                                                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                                            </li>

                                                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                                                            </li>
                                                        </ul>
                                                        <div class="clearfix"></div>
                                                    </div>
                                                    <div class="x_content" style="display: block;">
                                                        <div class="col-xs-3">

                                                        <h5>Aljabar</h5>

                                                        </div>
                                                        <div class="clearfix"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel-body">
                                                <div class="x_panel">
                                                    <div class="x_title">
                                                        <h2> Materials</h2>
                                                            <ul class="nav navbar-right panel_toolbox">
                                                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                                            </li>

                                                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                                                            </li>
                                                        </ul>
                                                        <div class="clearfix"></div>
                                                    </div>
                                                    <div class="x_content" style="display: block;">
                                                        <div class="col-xs-3">

                                                        <h5>Aljabar</h5>

                                                        </div>
                                                        <div class="clearfix"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                            </div>

                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('footerScripts')
<link href="{{ asset ('js/data-table/css/dataTables.bootstrap.min.css') }}" rel="stylesheet">
<link href="{{ asset ('js/data-table/buttons/buttons.bootstrap.min.css') }}" rel="stylesheet">
<link href="{{ asset ('js/data-table/colreorder/colReorder.bootstrap.min.css') }}" rel="stylesheet">
<link href="{{ asset ('js/data-table/keytable/keyTable.bootstrap.min.css') }}" rel="stylesheet">
<link href="{{ asset ('js/data-table/fixedheader/fixedHeader.bootstrap.min.css') }}" rel="stylesheet">
<link href="{{ asset ('js/data-table/fixedcolumns/fixedColumns.bootstrap.min.css') }}" rel="stylesheet">
<link href="{{ asset ('css/parsley/parsley.css') }}" rel="stylesheet">
<link href="{{ asset ('semantic/components/icon.min.css') }}" rel="stylesheet">
<link href="{{ asset ('semantic/components/statistic.min.css') }}" rel="stylesheet">

<script src="{{ asset ('js/data-table/js/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset ('js/data-table/js/dataTables.bootstrap.min.js') }}"></script>
<script src="{{ asset ('js/data-table/buttons/dataTables.buttons.min.js') }}"></script>
<script src="{{ asset ('js/data-table/buttons/buttons.bootstrap.min.js') }}"></script>
<script src="{{ asset ('js/data-table/buttons/buttons.flash.min.js') }}"></script>
<script src="{{ asset ('js/data-table/buttons/jszip.min.js') }}"></script>
<script src="{{ asset ('js/data-table/buttons/pdfmake.min.js') }}"></script>
<script src="{{ asset ('js/data-table/buttons/vfs_fonts.js') }}"></script>
<script src="{{ asset ('js/data-table/buttons/buttons.html5.min.js') }}"></script>
<script src="{{ asset ('js/data-table/buttons/buttons.print.min.js') }}"></script>
<script src="{{ asset ('js/data-table/buttons/buttons.colVis.min.js') }}"></script>
<script src="{{ asset ('js/data-table/colreorder/dataTables.colReorder.min.js') }}"></script>
<script src="{{ asset ('js/data-table/keytable/dataTables.keyTable.min.js') }}"></script>
<script src="{{ asset ('js/data-table/fixedheader/dataTables.fixedHeader.min.js') }}"></script>
<script src="{{ asset ('js/data-table/fixedcolumns/dataTables.fixedColumns.min.js') }}"></script>
<script src="{{ asset ('js/parsley/parsley.min.js') }}"></script>
@endsection
