<?php

use Illuminate\Database\Seeder;
use App\products;

class ProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        products::truncate();
        products::insert(
        [
        	[
                'manufacturer_id'=>1,
                'name'=>'Iphone X',
                'alias'=>'iphone-x',
                'detail'=>'iphone-x ',
                'image'=>'iphonex.png',
                'unit_price'=>3200,
                'promotion_price'=>0,
                'quantity'=>1,
                'OS'=>'IOS 11',
                'memory'=>'64GB',
                'RAM'=>'3GB',
                'display'=>'6 inch',
                'color'=>'Black',
                'status'=>1,
                'new' =>1
        	],
        	[
                'manufacturer_id'=>1,
                'name'=>'Iphone 8',
                'alias'=>'iphone-8',
                'detail'=>'iphone-8',
                'image'=>'ip7plus_den.jpg',
                'unit_price'=>2750,
                'promotion_price'=>0,
                'quantity'=>1,
                'OS'=>'IOS 11',
                'memory'=>'64GB',
                'RAM'=>'2.5GB',
                'display'=>'5 inch',
                'color'=>'Rose Gold',
                'status'=>1,
                'new' =>1
        	],
        	[
                'manufacturer_id'=>2,
                'name'=>'Samsung Note 8',
                'alias'=>'note-8',
                'detail'=>'note 8 ',
                'image'=>'ssgalaxya7_hong.jpg',
                'unit_price'=>2660,
                'promotion_price'=>0,
                'quantity'=>1,
                'OS'=>'Android 7.0',
                'memory'=>'64GB',
                'RAM'=>'4GB',
                'display'=>'6 inch',
                'color'=>'Black',
                'status'=>1,
                'new' =>1
        	],
        	[
                'manufacturer_id'=>2,
                'name'=>'Samsung S8',
                'alias'=>'samsung-s8',
                'detail'=>'samsung s8 ',
                'image'=>'ssgalaxys7_den.jpg',
                'unit_price'=>2200,
                'promotion_price'=>0,
                'quantity'=>1,
                'OS'=>'Android 7.0',
                'memory'=>'64GB',
                'RAM'=>'4GB',
                'display'=>'5.1 inch',
                'color'=>'Black',
                'status'=>1,
                'new' =>1
        	],
            [
                'manufacturer_id'=>3,
                'name'=>'Oppo F5',
                'alias'=>'Oppo F5',
                'detail'=>'oppo-f5 ',
                'image'=>'opa37_gold.jpg',
                'unit_price'=>180,
                'promotion_price'=>150,
                'quantity'=>1,
                'OS'=>'Android 7.0',
                'memory'=>'64GB',
                'RAM'=>'4GB',
                'display'=>'5.1 inch',
                'color'=>'Black',
                'status'=>1,
                'new' =>1
            ],
            [
                'manufacturer_id'=>3,
                'name'=>'Oppo F11 Pro',
                'alias'=>'oppo-f11-pro',
                'detail'=>'Oppo F11 Pro',
                'image'=>'oppo-a5s-cph1909-original-imaffmvuqzb8hghf.png',
                'unit_price'=>230,
                'promotion_price'=>240,
                'quantity'=>1,
                'OS'=>'Android 7.0',
                'memory'=>'64GB',
                'RAM'=>'4GB',
                'display'=>'5.1 inch',
                'color'=>'Black',
                'status'=>1,
                'new' =>1
            ],
            [
                'manufacturer_id'=>4,
                'name'=>'Vivo F11',
                'alias'=>'vivo-f11',
                'detail'=>'vivo-f11',
                'image'=>'vivo-v9--1-600x600.png',
                'unit_price'=>250,
                'promotion_price'=>210,
                'quantity'=>1,
                'OS'=>'Android 7.0',
                'memory'=>'64GB',
                'RAM'=>'4GB',
                'display'=>'5.1 inch',
                'color'=>'Black',
                'status'=>1,
                'new' =>1
            ],
            [
                'manufacturer_id'=>4,
                'name'=>'Oppo F17 Pro',
                'alias'=>'oppo-f17-pro',
                'detail'=>'oppo-f17-pro',
                'image'=>'Oppo-R17-Pro-PNG-Image-715x1191.png',
                'unit_price'=>270,
                'promotion_price'=>230,
                'quantity'=>1,
                'OS'=>'Android 7.0',
                'memory'=>'64GB',
                'RAM'=>'4GB',
                'display'=>'5.1 inch',
                'color'=>'Black',
                'status'=>1,
                'new' =>1
            ],
        ]
        );
    }
}
