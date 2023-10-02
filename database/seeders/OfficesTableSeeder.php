<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;

class OfficesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        DB::table('offices')->insert([
            [  
                'office_name'=> 'PESO'
            ],
            [  
                'office_name'=> 'HR (Human Resources)'
            ],
            [  
                'office_name'=> 'ACCESOR'
            ],
            [  
                'office_name'=> 'MLR (MUNICIPAL LOCAL REGISTRAR)'
            ],
            [  
                'office_name'=> 'ENGR'
            ],
            [  
                'office_name'=> 'MPDO'
            ],
            [  
                'office_name'=> 'GSO'
            ],
            [  
                'office_name'=> 'ACCOUNTING'
            ],
            [  
                'office_name'=> 'COA'
            ],
            [  
                'office_name'=> 'TREASURY'
            ],
            [  
                'noffice_nameame'=> 'SB'
            ],
            [  
                'office_name'=> 'MIS'
            ],
            [  
                'office_name'=> 'ADMIN OFFICE'
            ],
            [  
                'office_name'=> 'MAYOR OFFICE'
            ],
            [  
                'office_name'=> 'MSWD'
            ],
            [  
                'office_name'=> 'DEPT. of AGRI'
            ],
            [  
                'office_name'=> 'NEGO CENTER'
            ],
            [  
                'office_name'=> 'TOURISM'
            ],
            [  
                'office_name'=> 'MDRRMO'
            ],
            [  
                'office_name'=> 'MHO'
            ]
        ]);
    }
}
