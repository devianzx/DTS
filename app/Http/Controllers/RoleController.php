<?php

namespace App\Http\Controllers;

use App\Models\Role;
use Illuminate\Http\Request;
use Inertia\Inertia;

class RoleController extends Controller
{
    //
    public function index()
    {
        return Inertia::render('Roles/RolesList', [
            'roles' => Role::all()
        ]);
    }
    
    //
    public function roleslist()
    {

        $data = Role::all();
        return $data;

    }
}
