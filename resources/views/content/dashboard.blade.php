@extends('layout.master')
@section('title', 'Dashboard')
@section('content')
<?php

use Illuminate\Support\Facades\Session;
?>
<div class="right_col" role="main">

        <div class="ui grid">
            <div class="four wide column">
                <div class="ui fluid card">
                    <div class="content">
                        <div class="ui right floated header" style="color: #73879C;">
                            <i class="fa fa-book"></i>
                        </div>
                        <div class="header">
                            <div class="ui header" style="color: #73879C;">
                            </div>
                        </div>
                        <div class="meta">
                            Misi
                        </div>
                    </div>
                </div>
            </div>

        </div>

</div>
@endsection
@section('footerScripts')
<link href="{{ asset ('semantic/components/grid.css') }}" rel="stylesheet">
<link href="{{ asset ('semantic/components/card.css') }}" rel="stylesheet">
<link href="{{ asset ('semantic/components/icon.css') }}" rel="stylesheet">
<link href="{{ asset ('semantic/components/image.css') }}" rel="stylesheet">
<link href="{{ asset ('semantic/components/header.css') }}" rel="stylesheet">
<link href="{{ asset ('js/data-table/css/dataTables.bootstrap.min.css') }}" rel="stylesheet">
<link href="{{ asset ('js/data-table/buttons/buttons.bootstrap.min.css') }}" rel="stylesheet">
<link href="{{ asset ('js/data-table/colreorder/colReorder.bootstrap.min.css') }}" rel="stylesheet">
<link href="{{ asset ('js/data-table/keytable/keyTable.bootstrap.min.css') }}" rel="stylesheet">
<link href="{{ asset ('js/data-table/fixedheader/fixedHeader.bootstrap.min.css') }}" rel="stylesheet">
<link href="{{ asset ('js/data-table/fixedcolumns/fixedColumns.bootstrap.min.css') }}" rel="stylesheet">

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
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

@parent
@endsection
