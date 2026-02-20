<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\Notebook;

class NotebookFactory extends Factory
{
    protected $model = Notebook::class;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->unique()->name(),
            'company' => $this->faker->word(),
            'phone' => Str::random(15),
            'email' => $this->faker->unique()->safeEmail(),
            'birthday' => now(),
            'foto' => 'images/'.Str::random(20).'.jpeg',
        ];
    }
}
