<?php

// Composer: "fzaninotto/faker": "v1.3.0"
use Faker\Factory as Faker;

class UnhlsFinancialYearsSeederTableSeeder extends Seeder {

	public function run()
	{
		DB::table('unhls_financial_years')->insert([
				'year' => '2019/2020',
				'created_at' => '2019-09-15 21:00:00', 
				'updated_at' => '2019-09-15 21:00:00',
			]);

		echo "Financial Years data Seeded Successfully!\n";
	}
}