<?php

use Illuminate\Database\Seeder;
use App\roles;
class RoleTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\roles::insert([
            [
                'name' => 'admin'
            ],
            [
                'name' => 'normal'
            ],
            [
                'name' => 'guest'
            ]

        ]);
    }
}
