<?php

// Composer: "fzaninotto/faker": "v1.3.0"
use Faker\Factory as Faker;

class ReferralReasonSeederTableSeeder extends Seeder {

	public function run()
	{
		DB::table('referral_reasons')->insert(array(
			array(
				'reason' => 'Equipment break down',
				),
			array(
				'reason' => 'Reagent stock out',
				),
			array(
				'reason' => 'Supplies stock out',
				),
			array(
				'reason' => 'Power outage',
				),
			array(
				'reason' => 'No testing expertise',
				),
			array(
				'reason' => 'Lack of required equipment',
				),
			array(
				'reason' => 'Confirmatory testing',
				),
			array(
				'reason' => 'For QA re-testing',
				),
			array(
				'reason' => 'Others',
				),
			));
		echo "Referral reasons Seeded Successfully!\n";
	}

}