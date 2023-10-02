<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\TransactionController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\OfficeController;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

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

Route::get('/', function () {
    return Inertia::render('Auth/Login', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
    ]);
});

//Route::get('/dashboard', function () {
    //return Inertia::render('Dashboard');
//})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth:sanctum', 'verified')->group(function () {

    //default from laravel
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    //dashboard
    Route::get('/dashboard', function () {
        return Inertia::render('HomeView');
    })->name('dashboard');

    //users
    Route::get('/users', function () {
        return Inertia::render('Users/Users');
    })->name('users');
    Route::get('/users', [UserController::class, 'index'])->name('users');
    Route::get('/users/userslist', [UserController::class, 'userslist'])->name('user.userslist');
    Route::get('/users/create', [UserController::class, 'create'])->name('user.create');
    Route::delete('/users/delete/{user}', [UserController::class, 'delete'])->name('user.delete');

    //requests
    Route::get('/requests', function () {
        return Inertia::render('Request/Requests');
    })->name('requests');
    Route::get('/requests/requestslist', [TransactionController::class, 'requestslist'])->name('request.requestslist');

    //requests
    Route::get('/offices', function () {
        return Inertia::render('Offices/Offices');
    })->name('offices');
    Route::get('/offices/officeslist', [OfficeController::class, 'officeslist'])->name('offices.officeslist');

    //requests
    Route::get('/roles', function () {
        return Inertia::render('Roles/Roles');
    })->name('roles');
    Route::get('/roles/roleslist', [RoleController::class, 'roleslist'])->name('roles.roleslist');


});

require __DIR__.'/auth.php';
