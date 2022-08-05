<?php

namespace App\Http\Controllers;

use App\AccessGroup;
use App\AccessMaster;
use App\MMeeting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use DateInterval;
use DatePeriod;
use DateTime;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function index()
    {
        return view('content.dashboard');
    }


}
