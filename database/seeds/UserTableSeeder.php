<?php

use Illuminate\Database\Seeder;
use App\User;
class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
//		User::truncate();
        User::insert([
            [
                'name' => 'admin',
                'email' => 'admin@gmail.com',
                'role_id' => 1,
                'password' => bcrypt('123456'),
                'phone' => '023444455',
                'status' => 1
            ],
            [
                'name' => 'developer',
                'email' => 'developer@gmail.com',
                'role_id' => 1,
                'password' => bcrypt('123456'),
                'phone' => '023555544',
                'status' => 1
            ],
            [
                'name' => 'guest',
                'email' => 'guest@gmail.com',
                'role_id' => 3,
                'password' => bcrypt('123456'),
                'phone' => '023555599',
                'status' => 1
            ],

        ]);
    }
}
