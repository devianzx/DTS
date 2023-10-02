<?php

namespace App\Http\Controllers;

use App\Models\Transaction;
use Illuminate\Http\Request;
use Inertia\Inertia;

class TransactionController extends Controller
{
    public function index()
    {
        return Inertia::render('Request/RequestList', [
            'transactions' => Transaction::all()
        ]);
    }
    
    //
    public function requestslist()
    {

        $data = Transaction::all();
        return $data;

    }
}
