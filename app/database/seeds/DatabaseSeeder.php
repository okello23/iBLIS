<?php

class DatabaseSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
<<<<<<< HEAD
		
	   Eloquent::unguard();
=======
		Eloquent::unguard();
		$this->call('DeploymentSeeder');
		$this->call('ConfigSettingSeeder');
	}
>>>>>>> case_butabika

        DB::unprepared(file_get_contents(base_path() . "/app/database/seeds/facilities.sql"));
        echo "bulk facilities seeded!\n";
    }

}
