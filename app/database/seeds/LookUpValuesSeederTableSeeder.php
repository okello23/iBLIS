<?php

// Composer: "fzaninotto/faker": "v1.3.0"
use Faker\Factory as Faker;

class LookUpValuesSeederTableSeeder extends Seeder {

	public function run()
	{
		DB::table('look_up_values')->insert(array(
			array(
				'look_up_id' => 1, 
				'value' => '1', 
				'value_description' => 'GeneXpert', 
				'status' => 1,
				'order' => 1,
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				'deleted_at' => 'NULL'
				),
			array(
				'look_up_id' => 1, 
				'value' => '2', 
				'value_description' => 'Sysmex', 
				'status' => 1,
				'order' => 1,
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				'deleted_at' => 'NULL'
				),
			array(
				'look_up_id' => 2, 
				'value' => '1', 
				'value_description' => 'Yes', 
				'status' => 1,
				'order' => 1,
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				'deleted_at' => 'NULL'
				),
			array(
				'look_up_id' => 2, 
				'value' => '0', 
				'value_description' => 'No', 
				'status' => 1,
				'order' => 1,
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				'deleted_at' => 'NULL'
				),
			array(
				'look_up_id' => 3, 
				'value' => '1', 
				'value_description' => 'Rapid Diagnostic Test', 
				'status' => 1,
				'order' => 1,
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				'deleted_at' => 'NULL'
				),
			array(
				'look_up_id' => 3, 
				'value' => '2', 
				'value_description' => 'Tile Method', 
				'status' => 1,
				'order' => 1,
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				'deleted_at' => 'NULL'
				),
			array(
				'look_up_id' => 3, 
				'value' => '3', 
				'value_description' => 'Tube Grouping', 
				'status' => 1,
				'order' => 1,
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				'deleted_at' => 'NULL'
				),
			array(
				'look_up_id' => 3, 
				'value' => '4', 
				'value_description' => 'Slide Method', 
				'status' => 1,
				'order' => 1,
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				'deleted_at' => 'NULL'
				),
			array(
				'look_up_id' => 4, 
				'value' => 'Negative', 
				'value_description' => 'Negative', 
				'status' => 1,
				'order' => 1,
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				'deleted_at' => 'NULL'
				),
			array(
				'look_up_id' => 4, 
				'value' => 'Positive', 
				'value_description' => 'Positive', 
				'status' => 1,
				'order' => 1,
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				'deleted_at' => 'NULL'
				),
			));

		echo "Look_Up Values data Seeded Successfully!\n";
	}

}