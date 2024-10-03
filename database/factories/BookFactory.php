<?php

namespace Database\Factories;

use App\Models\Book;
use Illuminate\Database\Eloquent\Factories\Factory;

class BookFactory extends Factory
{
    protected $model = Book::class;

    public function definition()
    {
        return [
            'title' => $this->faker->sentence(3),
            'author' => $this->faker->name(),
            'published_year' => $this->faker->year(),
            'publisher' => $this->faker->company(),
            'is_rented' => false,
            'client_id' => null,
        ];
    }
}