<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});



Route::group(['middleware' => 'auth:api'], function(){
Route::get('login', 'API\UserController@login')->name('userLogin');
Route::get('details', 'API\UserController@details')->name('getDetails');
Route::get('/home', 'API\UserController@home')->name('home');
Route::post('logout', 'API\UserController@logout')->name('logout');
Route::post('updateProfile', 'API\UserController@updateProfile')->name('updateProfile');
Route::get('getGithub', 'API\UserController@getGithub')->name('getGithub');
Route::post('addGithub', 'API\UserController@addGithub')->name('addGithub');

});