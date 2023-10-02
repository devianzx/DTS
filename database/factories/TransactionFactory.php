<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Transactions>
 */
class TransactionFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'fullname' => $this->faker->name,
            'office' => "",
            'contactnumber' => "",
            "doctype" => "",
            "purpose" => "",
            "details" => $this->faker->sentence,
            'requested_by' => \App\Models\User::factory(),
        ];
    }
}
