<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('auth/logout', 'AuthController@logout');

Route::middleware(['auth'])->group(function () {
	Route::get('/', 'DashboardController@index');
	Route::get('dashboard', 'DashboardController@index');

    Route::get('misi/datatable', 'MisiController@datatable')->name('misi.datatable');
	Route::resource('misi', MisiController::class);

	Route::resource('reports', ReportController::class);
});

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
