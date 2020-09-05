<?php

use Illuminate\Database\Seeder;
use App\manufacturers;

class ManufacturerTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        //		manufacturers::truncate();
        manufacturers::insert([
            [
                'name' => "Apple"
            ],
            [
                'name' => "Samsung"
            ],
            [
                'name' => "Oppo"
            ],
            [
                'name' => 'Vivo'
            ],
            [
                'name' => 'Nokia'
            ],
            [
                'name' => 'LG'
            ]
        ]);
    }
}
