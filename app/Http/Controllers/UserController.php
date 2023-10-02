<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Inertia\Inertia;

class UserController extends Controller
{
    public function UserDashboard()
    {
        return view('user.user_dashboard');
    }

    public function destroy()
    {
        Auth::logout();
        return redirect()->route('login');
    }

    public function add()
    {
        return view('admin.add');
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'fname' => 'required|string',
            'mname' => 'required|string',
            'lname' => 'required|string',
            'role' => 'required|in:superadmin,admin,office,user',
            'station' => 'required|string',
            'department' => 'required|string',
            'email' => 'required|email|unique:users',
            'password' => 'required|string|min:8',
        ]);

        $user = new User();
        $user->fname = $validatedData['fname'];
        $user->mname = $validatedData['mname'];
        $user->lname = $validatedData['lname'];
        $user->role = $validatedData['role'];
        $user->station = $validatedData['station'];
        $user->department = $validatedData['department'];
        $user->email = $validatedData['email'];
        $user->password = bcrypt($validatedData['password']);

        $user->save();

        return redirect(route('admin.dashboard'))->with('success', 'User Created Successfully');
    }

    public function update(User $user, Request $request)
    {
        $validatedData = $request->validate([
            'fname' => 'required|string',
            'mname' => 'required|string',
            'lname' => 'required|string',
            'role' => 'required|in:superadmin,admin,office,user',
            'station' => 'required|string',
            'department' => 'required|string',
            'email' => 'required|email|unique:users,email,' . $user->id,
            'password' => 'required|string|min:8',
        ]);

        $user->update([
            'fname' => $validatedData['fname'],
            'mname' => $validatedData['mname'],
            'lname' => $validatedData['lname'],
            'role' => $validatedData['role'],
            'station' => $validatedData['station'],
            'department' => $validatedData['department'],
            'email' => $validatedData['email'],
            'password' => bcrypt($validatedData['password']),
        ]);

        return redirect(route('admin.dashboard'))->with('success', 'User Updated Successfully');
    }

    public function delete(User $user)
    {
        $user->delete();
        return Inertia::render('Users/Users', [
            'users' => User::all()
        ]);
    }


    public function userslist()
    {

        $data = User::all();
        return $data;

    }

    public function index()
    {
        return Inertia::render('Users/Users', [
            'users' => User::all()
        ]);
    }

    public function create()
    {
        return Inertia::render('Users/CreateUser');
    }
    
}
