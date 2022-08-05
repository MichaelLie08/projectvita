<?php

namespace App\Http\Controllers;

use App\MMeeting;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class MisiController extends Controller
{
    public function __construct()
    {
        if (!check_user_access(Session::get('user_access'), 'misi_manage')) {
            return redirect('/');
        }
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (!check_user_access(Session::get('user_access'), 'misi_manage')) {
            return redirect('/');
        }

        return view('meeting.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if (!check_user_access(Session::get('user_access'), 'misi_add')) {
            return redirect('/');
        }

        $data['actions'] = 'store';
        return view('meeting.misi', compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (!check_user_access(Session::get('user_access'), 'misi_add')) {
            return redirect('/');
        }
        $misi = new MMisi();
        $misi->misi = $request->namaMisi;
        if($request->status==NULL){
            $misi->status =  "Tidak Aktif";
        }
        if($request->status=="on"){
            $misi->status =  "Aktif";
        }
        $misi->created_id = Auth::user()->id;
        $misi->updated_id = Auth::user()->id;

        $misi->save();

        return redirect()->route('meeting.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if (!check_user_access(Session::get('user_access'), 'misi_read')) {
            return redirect('/');
        }

        $id = base64_decode($id);
        $data['misi'] = MMisi::find($id);
        return view('meeting.show', compact('data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if (!check_user_access(Session::get('user_access'), 'misi_update')) {
            return redirect('/');
        }

        $id = base64_decode($id);
        $data['actions'] = 'update';
        $data['misi'] = MMisi::find($id);
        return view('meeting.misi', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function update(Request $request, $id)
    {
        if (!check_user_access(Session::get('user_access'), 'misi_update')) {
            return redirect('/');
        }

        $id = base64_decode($id);

        $misi = MMisi::find($id);
        $misi->updated_id = Auth::user()->id;
        $misi->misi = $request->namaMisi;
        if($request->status==NULL){
            $misi->status =  "Tidak Aktif";
        }
        if($request->status=="on"){
            $misi->status =  "Aktif";
        }
        $misi->save();

        return redirect()->route('meeting.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function datatable(Request $request)
    {
        $search  = $_GET['search']['value'];
        $columns = $request->input('columns');

        $search_column = array(
            "id" => (isset($columns[1]['search']['value'])) ? $columns[1]['search']['value'] : "",
            "misi" => (isset($columns[2]['search']['value'])) ? $columns[2]['search']['value'] : "",
            "user_create" => (isset($columns[3]['search']['value'])) ? $columns[3]['search']['value'] : "",
            "user_update" => (isset($columns[4]['search']['value'])) ? $columns[4]['search']['value'] : "",
            "updated_at" => (isset($columns[5]['search']['value'])) ? $columns[5]['search']['value'] : "",
            "created_at" => (isset($columns[6]['search']['value'])) ? $columns[6]['search']['value'] : "",
            "status" => (isset($columns[7]['search']['value'])) ? $columns[7]['search']['value'] : "",
        );

        $limit = $request->input('length');
        $start = $request->input('start');
        $order_index = $_GET['order'][0]['column'];
        if ($order_index == 1)
            $order_field = 'id';
        else if ($order_index == 2)
            $order_field = 'misi';
        else if ($order_index == 3)
            $order_field = 'user_create_name';
        else if ($order_index == 4)
            $order_field = 'user_update_name';
        else if ($order_index == 5)
            $order_field = 'updated_at';
        else if ($order_index == 6)
            $order_field = 'created_at';
        else if ($order_index == 7)
            $order_field = 'created_at';
        else
            $order_field = 'id';

        $order_ascdesc = $_GET['order'][0]['dir'];

        $misi = new MMisi();

        $sql_total = $misi->count();
        $sql_filter = $misi->filter(
            $order_field,
            $order_ascdesc,
            $search,
            $search_column,
            $limit,
            $start
        );

        $filter_count = $sql_filter['filter_count'];
        $filter_data = $sql_filter['filter_data'];

        foreach ($filter_data as $value) {
            $row = array();

            $action = '';
            if (check_user_access(Session::get('user_access'), 'misi_update')) {
                $action .= "<a class='btn btn-info btn-xl' href='" . route('misi.edit', base64_encode($value->id)) . "'><i class='fa fa-fw fa-pencil'></i> Edit</a>";
            }
            if (check_user_access(Session::get('user_access'), 'misi_read')) {
                $action .= "<a class='btn btn-success btn-xl' href='" . route('misi.show', base64_encode($value->id)) . "'><i class='fa fa-fw fa-eye'></i> Detail</a>";
            }

            $row[] = $action;
            $row[] = $value->id;
            $row[] = $value->misi;
            $row[] = $value->user_create_name;
            $row[] = $value->user_update_name;
            $row[] = date_format(Carbon::createFromFormat('Y-m-d H:i:s', $value->updated_at, 'UTC')->tz('Asia/Jakarta'), 'd-m-Y H:i:s');
            $row[] = date_format(Carbon::createFromFormat('Y-m-d H:i:s', $value->created_at, 'UTC')->tz('Asia/Jakarta'), 'd-m-Y H:i:s');
            $row[] = $value->status;
            $data[] = $row;
        }

        if ($filter_count == 0) {
            $data = 0;
        }

        $callback = array(
            'draw' => $_GET['draw'],
            'recordsTotal' => $sql_total,
            'recordsFiltered' => $filter_count,
            'data' => $data
        );
        header('Content-Type: application/json');
        return $callback;
    }
}
