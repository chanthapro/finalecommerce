<?php

use Illuminate\Database\Seeder;
use App\import_detail;
use App\User;
use App\manufacturers;

class ImportDetailTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        import_detail::truncate();
    	import_detail::insert([
    		[
    			'import_id' => 1,
    			'product_id' => 1,
    			'quantity' => 1,
    			'price' => 2000,
    		],
    		[
    			'import_id' => 1,
    			'product_id' => 2,
    			'quantity' => 1,
    			'price' => 1300,
    		],
		]);
		




    }
}
