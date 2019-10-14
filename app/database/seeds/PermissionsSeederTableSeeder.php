<?php

// Composer: "fzaninotto/faker": "v1.3.0"
use Faker\Factory as Faker;

class PermissionsSeederTableSeeder extends Seeder {

	public function run()
	{
		DB::table('permissions')->insert([
			'id' => 31,
			'name' => 'can_reset_ulin',
			'display_name' => 'Can reset ULIN',
			'created_at' => '2019-09-15 21:00:00', 
			'updated_at' => '2019-09-15 21:00:00',				
			]);
		echo "Seeded Permissions Table Successfully!\n";
	}

}