<?php

namespace App\Http\Controllers;

use App\Models\Office;
use Illuminate\Http\Request;
use Inertia\Inertia;

class OfficeController extends Controller
{
    //
    //
    public function index()
    {
        return Inertia::render('Offices/OfficesList', [
            'offices' => Offices::all()
        ]);
    }
    
    //
    public function officeslist()
    {

        $data = Office::all();
        return $data;

    }
}
