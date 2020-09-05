<?php

use Illuminate\Database\Seeder;
use App\type_product;

class TypeProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        type_product::truncate();
        type_product::insert([
            [
                'product_id' => 5,
                'type_id' => 1
            ],
            [
                'product_id' => 6,
                'type_id' => 2
            ],
            [
                'product_id' => 7,
                'type_id' => 3
            ],
            [
                'product_id' => 8,
                'type_id' => 4
            ],
            [
                'product_id' => 1,
                'type_id' => 5
            ],
            [
                'product_id' => 2,
                'type_id' => 6
            ],
            [
                'product_id' => 3,
                'type_id' => 7
            ],
            [
                'product_id' => 4,
                'type_id' => 8
            ],
        ]);
    }
}
