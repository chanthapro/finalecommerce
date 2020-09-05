<?php

use Illuminate\Database\Seeder;
use App\bills;

class BillTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        bills::truncate();
    	bills::insert([
    		[
    			'name' =>'Dara',
    			'phone' => '023666677',
    			'address' => 'PP',
    			'status' => 1,
    			'email' => 'dara@gmail.com',
    			'created_at' => new DateTime()
    		],
    	]);
    }
}
