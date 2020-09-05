<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         $this->call(ImportDetailTableSeeder::class);
         $this->call(ManufacturerTableSeeder::class);
         $this->call(ProductTableSeeder::class);
         $this->call(TypeProductTableSeeder::class);
         $this->call(TypeTableSeeder::class);
         $this->call(RoleTableSeeder::class);
         $this->call(UserTableSeeder::class);
    }
}
