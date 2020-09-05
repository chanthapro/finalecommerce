<?php

use Illuminate\Database\Seeder;
use App\types;

class TypeTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        types::truncate();
        types::insert([
            [
                'name' => 'Oppo F5'
            ],
            [
                'name' => 'Oppo F11 Pro'
            ],
            [
                'name' => 'Vivo F11'
            ],
            [
                'name' => 'Oppo F17 Pro'
            ],
            [
                'name' => 'Iphone X'
            ],
            [
                'name' => 'Iphone 8'
            ],
            [
                'name' => 'Samsung Note 8'
            ],
            [
                'name' => 'Samsung S8'
            ],

        ]);
    }
}
