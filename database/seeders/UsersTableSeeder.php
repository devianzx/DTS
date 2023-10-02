<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;
use Illuminate\Support\Facades\Hash;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        DB::table('users')->insert([
            //superadmin
            [  
                'name'=> 'Ian Balbuena',
                'fname'=> 'Ian',
                'mname'=>'Fechalin',
                'lname'=>'Balbuena',
                'email'=> 'ian@gmail.com',
                'password'=> Hash::make('111'),
                'role'=> 'superadmin',
                'station'=>'Station 1',
                'department'=>"Department 1"

            ],
              //admin
              [
                'name'=> 'Fatima Javier',
                'fname'=> 'Fatima',
                'mname'=>'Coronel',
                'lname'=>'Javier',
                'email'=>'fatima@gmail.com',
                'password'=> Hash::make('111'),
                'role'=> 'admin',
                'station'=>'Station 2',
                'department'=>"Department 2"

              ],
              //office
              [
                'name'=> 'Crizza Sevilla',
                'fname'=> 'Crizza Mariette',
                'mname'=>'Ganlao',
                'lname'=>'Sevilla',
                'email'=>'crizza@gmail.com',
                'password'=> Hash::make('111'),
                'role'=> 'office',
                'station'=>'Station 3',
                'department'=>"Department 3"
              ],
              //user
              [
                'name'=> 'User Ako',
                'fname'=> 'User',
                'mname'=>'Po',
                'lname'=>'Ako',
                'email'=>'user@gmail.com',
                'password'=> Hash::make('111'),
                'role'=> 'user',
                'station'=>'Station 3',
                'department'=>"Department 3"
              ]
              ]);
    }
}
