<?php

// Composer: "fzaninotto/faker": "v1.3.0"
use Faker\Factory as Faker;

class TestPurposeSeederTableSeeder extends Seeder {

	public function run()
	{
		DB::table('unhls_testpurposes')->insert(array(
			array(
				'name' => 'AMR', 
				'description' => 'Anti-Microbial Resistance',
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				),
			array(
				'name' => 'Routine Testing', 
				'description' => '',
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				),
			array(
				'name' => 'Surveillance', 
				'description' => 'Disease investigation',
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				),
			array(
				'name' => 'Special screening', 
				'description' => '',
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				),
			array(
				'name' => 'Outbreak Investigation', 
				'description' => '',
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				),
			array(
				'name' => 'Follow-up', 
				'description' => '',
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				),
			array(
				'name' => 'Research', 
				'description' => '',
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				),
			array(
				'name' => 'IPC', 
				'description' => '',
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				),
			array(
				'name' => 'Confirmation', 
				'description' => '',
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
				),
			));
		echo "Test Purpose data Successfully Seeded!\n";
	}
}