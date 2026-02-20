<?php

use App\Http\Controllers\NotebookController;
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

Route::get('/index', [NotebookController::class, 'index']);
Route::post('/store', [NotebookController::class, 'store']);
Route::get('/show/{id}', [NotebookController::class, 'show']);
Route::put('/update', [NotebookController::class, 'update']);
Route::delete('/destroy/{id}', [NotebookController::class, 'destroy']);
