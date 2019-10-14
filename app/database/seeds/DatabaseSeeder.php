<?php

class DatabaseSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 * Use seeder command for a new installation
	 * @return void
	 */
	public function run()
	{
		//Unlock seederclasses for new a new installation
		
		// $this->call(LookUpsSeederTableSeeder::class);
  // 	 	$this->call(LookUpValuesSeederTableSeeder::class);
  //      	$this->call(PermissionsSeederTableSeeder::class);
  //      	$this->call(ReferralReasonSeederTableSeeder::class);
  //      	$this->call(TestPurposeSeederTableSeeder::class);
  //      	$this->call(UnhlsFinancialYearsSeederTableSeeder::class);
		
	    Eloquent::unguard();

        DB::unprepared(file_get_contents(base_path() . "/app/database/seeds/facilities.sql"));
        echo "bulk facilities seeded!\n";

        DB::unprepared(file_get_contents(base_path() . "/app/database/seeds/permissions_update.sql"));
        echo "Updated permissions Table!\n";

        DB::unprepared(file_get_contents(base_path() . "/app/database/seeds/test_status.sql"));
        echo "Updated test_statuses Table!\n";
    }

}
