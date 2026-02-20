<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Notebook;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        Notebook::factory(30)->create();
    }
}
