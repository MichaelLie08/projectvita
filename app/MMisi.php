<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MMisi extends Model
{
    public $table = 'misi_yapena';
    protected $fillable = [
        'misi',
        'status'
    ];

    public function user_create()
    {
        return $this->belongsTo('App\User', 'created_id', 'id');
    }



    public function filter($order_field, $order_ascdesc, $search, $search_column, $limit, $startLimit)
    {
        $sql = MMisi::select('misi_yapena.*','user_create.name as user_create_name', 'user_update.name as user_update_name')
        ->join('users as user_create', 'user_create.id', 'misi_yapena.created_id')
        ->join('users as user_update', 'user_update.id', 'misi_yapena.updated_id')
        ->orderBy($order_field, $order_ascdesc);

        if ($search != '' && $search != NULL) {
            $sql->where('misi_yapena.id', 'LIKE', "%{$search}%")
            ->orWhere('user_create.name', 'LIKE', "%{$search}%")
            ->orWhere('user_update.name', 'LIKE', "%{$search}%")
            ->orWhere('misi_yapena.visi', 'LIKE', "%{$search}%")
            ->orWhere('misi_yapena.updated_at', 'LIKE', "%{$search}%")
            ->orWhere('misi_yapena.created_at', 'LIKE', "%{$search}%")
            ->orWhere('misi_yapena.status', 'LIKE', "%{$search}%");
        }

        if ($search_column['id'] != '' && $search_column['id'] != NULL) {
            $sql->where('misi_yapena.id', 'LIKE', "%{$search_column['id']}%");
        }
        if ($search_column['user_create'] != '' && $search_column['user_create'] != NULL) {
            $sql->where('user_create.name', 'LIKE', "%{$search_column['user_create']}%");
        }
        if ($search_column['user_update'] != '' && $search_column['user_update'] != NULL) {
            $sql->where('user_update.name', 'LIKE', "%{$search_column['user_update']}%");
        }
        if ($search_column['misi'] != '' && $search_column['misi'] != NULL) {
            $sql->where('misi_yapena.visi', 'LIKE', "%{$search_column['misi']}%");
        }
        if ($search_column['updated_at'] != '' && $search_column['updated_at'] != NULL) {
            $sql->where('misi_yapena.updated_at', 'LIKE', "%{$search_column['updated_at']}%");
        }
        if ($search_column['created_at'] != '' && $search_column['created_at'] != NULL) {
            $sql->where('misi_yapena.created_at', 'LIKE', "%{$search_column['created_at']}%");
        }
        if ($search_column['status'] != '' && $search_column['status'] != NULL) {
            $sql->where('misi_yapena.status', 'LIKE', "%{$search_column['status']}%");
        }
        $filter_count = $sql->count();
        $filter_data = $sql->offset($startLimit)->limit($limit)->get();

        $data = ['filter_count' => $filter_count, 'filter_data' => $filter_data];
        return $data;
    }
}
