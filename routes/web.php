<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/
//login
Route::get('auth/login', ['as'=>'login', 'uses'=> 'Auth\LoginController@showLoginForm']);
Route::post('auth/login', 'Auth\LoginController@login');
Route::get('auth/logout',['as'=>'logout', 'uses'=>'Auth\LoginController@logout']);
//register
Route::get('auth/register', ['as'=>'register', 'uses'=>'Auth\RegisterController@showRegistrationForm']);
Route::post('auth/register','Auth\RegisterController@register');
//users
Route::resource('users', 'UserController', ['except'=>['create']]);
//slug
Route::get('product/{serial}', ['as'=>'product.single', 'uses' => 'PagesController@getSingle'])
    ->where('serial','[\w\d\-\_]+');

//roles
Route::get('roles/create', 'RolesController@store');

Route::get('contact', 'PagesController@getContact');

Route::get('pages/about', ['as'=>'about', 'uses'=> 'PagesController@getAbout']);

Route::get('/',['as'=>'index', 'uses'=>'PagesController@getIndex']);

Route::resource('products', 'ProductController');

Route::get('products/rate',['as'=>'rate', 'uses'=>'RateController@create']);

Route::resource('rates', 'RateController');
