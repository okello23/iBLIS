<?php

// Composer: "fzaninotto/faker": "v1.3.0"
use Faker\Factory as Faker;

class LookUpsSeederTableSeeder extends Seeder {

	public function run()
	{
		DB::table('look_ups')->insert(array(
			array(
				'name' => 'EQUIPMENT_NAMES',
				'description' => 'The names of lab euipment',
				'status' => 1,
				'deleted_at' => 'NULL',
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				),
			array(
				'name' => 'YES_NO',
				'description' => 'The yes no options',
				'status' => 1,
				'deleted_at' => 'NULL',
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				),
			array(
				'name' => 'TEST_METHODS',
				'description' => 'The test method used in the the lab',
				'status' => 1,
				'deleted_at' => 'NULL',
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				),
			array(
				'name' => 'POSITIVE_NEGATIVE',
				'description' => 'Whether positive or negative',
				'status' => 1,
				'deleted_at' => 'NULL',
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				),
			));

		echo "Look_Ups data Seeded Successfully!\n";
	}

}