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
        //factory(App\User::class, 50)->create();
//        factory(App\Category::class, 5)->create();
        factory(App\Manufacturer::class, 5)->create();
        // $this->call(UsersTableSeeder::class);
    }
}
