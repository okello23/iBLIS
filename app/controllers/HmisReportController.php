<?php
set_time_limit(0); //60 seconds = 1 minute
class HmisReportController extends \BaseController {
	public function hmis105($month = '')
	{
		$month = ($month == '') ? date('Y-m') : $month ;
		$testTypes = TestType::all();

		$visits = $this->getVisistsByMonth($month);
		$sepecimen_counts = $this->getSpecimenTotals($month);
		$total_test_count = $this->getTestsCounts($month);
		//dd($total_test_count);
		return View::make('reports.hmis.hmis05')
							->with('month', $month)
							->with('sepecimen_counts', $sepecimen_counts)
							->with('total_test_count', $total_test_count)
							->with('visits', $visits);
	}

	/*
	* @parameters - $month - the period of consideration
	* Uses mysql query to get the counts of specimen collected out and those collected in
	* @Return - array of total counts for the period for specimen of interest
	*/
	private function getVisistsByMonth($month){
		$visits_counts = ['in_patients' => 0, 'out_patients' => 0];
		$query = "SELECT SUM(IF(`visit_type` LIKE '%In_patient%', 1, 0)) AS 'in_patients',SUM(IF(`visit_type` LIKE '%Out_patient%', 1, 0)) AS 'out_patients'
				FROM `unhls_visits`
				WHERE `created_at` LIKE '%".$month."%' ";
		$results = \DB::select($query);
		if(!empty($results[0]->in_patients)){
			$visits_counts['in_patients'] = $results[0]->in_patients;
			$visits_counts['out_patients'] = $results[0]->out_patients;
		}
		return  $visits_counts;
	}

	/*
	* @parameters - $month - the period of consideration
	* Uses mysql query to get the counts of specimen collected out and those collected in
	* @Return - array of total counts for the period for specimen of interest
	*/
	private function getSpecimenTotals($month){
		$query = "select t.specimen_id, st.name, v.visit_type, st.id, v.id as visit_id from unhls_tests as t
INNER JOIN  unhls_visits v ON(v.id = t.visit_id)
INNER JOIN specimens s ON(t.specimen_id = s.id)
INNER JOIN specimen_types st ON(s.specimen_type_id = st.id)
WHERE `v`.`created_at` LIKE '%".$month."%'
GROUP BY v.id";
	 $samples_on_visit = DB::select($query);
	 //define varialbe to hold the various counts
	 $blood_collected_in = 0; $blood_collected_out = 0;
	 $stool_collected_in = 0; $stool_collected_out = 0;
	 $urine_collected_in = 0; $urine_collected_out = 0;
	 $sputum_collected_in = 0; $sputum_collected_out = 0;
	 $csf_collected_in = 0; $csf_collected_out = 0;
	 $csf_collected_in = 0; $csf_collected_out = 0;
	 $biopsy_collected_in = 0; $biopsy_collected_out = 0;
	 $pus_swab_collected_in = 0; $pus_swab_collected_out = 0;
	 $genital_swab_collected_in = 0; $genital_swab_collected_out = 0;
	 $skin_collected_in = 0; $skin_collected_out = 0;
	 $others_collected_in = 0; $others_collected_out = 0;
	 $specimen_of_interest = array(22,13,26,24,27,14,17,16,11,7);
	 foreach ($samples_on_visit as $sample_on_visit){
	 	//samples in = out-patient + in-patients visit_types
	 	//the id is the specimen_type
	 	if(in_array($sample_on_visit->id, $specimen_of_interest)){
		 	if(($sample_on_visit->visit_type == 'Out-patient' || $sample_on_visit->visit_type == 'in-patient') && $sample_on_visit->id == 22){
		 		$blood_collected_in++;
		 	}else if($sample_on_visit->visit_type == 'Referral' && $sample_on_visit->id == 22){
		 		$blood_collected_out++;
		 	}else if(($sample_on_visit->visit_type == 'Out-patient' || $sample_on_visit->visit_type == 'in-patient') && $sample_on_visit->id == 13){
		 		$stool_collected_in++;
		 	}else if($sample_on_visit->visit_type == 'Referral' && $sample_on_visit->id == 13){
		 		$stool_collected_out++;
		 	}else if(($sample_on_visit->visit_type == 'Out-patient' || $sample_on_visit->visit_type == 'in-patient') && $sample_on_visit->id == 26){
		 		$urine_collected_in++;
		 	}else if($sample_on_visit->visit_type == 'Referral' && $sample_on_visit->id == 26){
		 		$urine_collected_out++;
		 	}else if(($sample_on_visit->visit_type == 'Out-patient' || $sample_on_visit->visit_type == 'in-patient') && $sample_on_visit->id == 24){
		 		$sputum_collected_in++;
		 	}else if($sample_on_visit->visit_type == 'Referral' && $sample_on_visit->id == 24){
		 		$sputum_collected_out++;
		 	}else if(($sample_on_visit->visit_type == 'Out-patient' || $sample_on_visit->visit_type == 'in-patient') && $sample_on_visit->id == 14){
		 		$csf_collected_in++;
		 	}else if($sample_on_visit->visit_type == 'Referral' && $sample_on_visit->id == 14){
		 		$csf_collected_out++;
		 	}else if(($sample_on_visit->visit_type == 'Out-patient' || $sample_on_visit->visit_type == 'in-patient') && $sample_on_visit->id == 27){
		 		$biopsy_collected_in++;
		 	}else if($sample_on_visit->visit_type == 'Referral' && $sample_on_visit->id == 27){
		 		$biopsy_collected_out++;
		 	}else if(($sample_on_visit->visit_type == 'Out-patient' || $sample_on_visit->visit_type == 'in-patient') && $sample_on_visit->id == 16){
		 		$pus_swab_collected_in++;
		 	}else if($sample_on_visit->visit_type == 'Referral' && $sample_on_visit->id == 16){
		 		$pus_swab_collected_out++;
		 	}else if(($sample_on_visit->visit_type == 'Out-patient' || $sample_on_visit->visit_type == 'in-patient') && $sample_on_visit->id == 11){
		 		$genital_swab_collected_in++;
		 	}else if($sample_on_visit->visit_type == 'Referral' && $sample_on_visit->id == 11){
		 		$genital_swab_collected_out++;
		 	}else if(($sample_on_visit->visit_type == 'Out-patient' || $sample_on_visit->visit_type == 'in-patient') && $sample_on_visit->id == 7){
		 		$skin_collected_in++;
		 	}else if($sample_on_visit->visit_type == 'Referral' && $sample_on_visit->id == 7){
		 		$skin_collected_out++;
		 	}
		 }else{
		 	if($sample_on_visit->visit_type == 'Out-patient' || $sample_on_visit->visit_type == 'in-patient'){
		 		$others_collected_in++;
		 	}else{
		 		$others_collected_out++;
		 	}
		 }
	 }
	 $sample_counts_array = ['blood_collected_in' => $blood_collected_in,
	 					   'blood_collected_out' => $blood_collected_out,
	 					   'stool_collected_in' => $stool_collected_in,
	 					   'stool_collected_out' => $stool_collected_out,
	 					   'urine_collected_in' => $urine_collected_in,
	 					   'urine_collected_out' => $urine_collected_out,
	 					   'sputum_collected_in' => $sputum_collected_in,
	 					   'sputum_collected_out' => $sputum_collected_out,
	 					   'csf_collected_in' => $csf_collected_in,
	 					   'csf_collected_out' => $csf_collected_out,
	 					   'biopsy_collected_in' => $biopsy_collected_in,
	 					   'biopsy_collected_out' => $biopsy_collected_out,
	 					   'pus_swab_collected_in' => $pus_swab_collected_in,
	 					   'pus_swab_collected_out' => $pus_swab_collected_out,
	 					   'genital_swab_collected_in' => $genital_swab_collected_in,
	 					   'genital_swab_collected_out' => $genital_swab_collected_out,
	 					   'skin_collected_in' => $skin_collected_in,
	 					   'skin_collected_out' => $skin_collected_out,
	 					   'others_collected_in' => $others_collected_in,
	 					   'others_collected_out' => $others_collected_out,
						];
	//dd($sample_counts_array);
	return $sample_counts_array;
	}

	private function getTestsCounts($month){
		$query = "select test_type_id, tt.test_category_id as lab_section, count(ut.id) as total FROM unhls_tests ut
		INNER JOIN test_types tt ON(ut.test_type_id = tt.id)
		INNER JOIN test_categories tc ON(tc.id = tt.test_category_id)
		WHERE `ut`.`time_created` LIKE '%".$month."%'
		group by test_type_id";
		//set variables for the target tests -from
		//also get array of test_type ids to use in condition
	 	$test_count = DB::select($query);
	 //	dd($test_count);
	 	$total = 0;
	 	/*if(!empty($test_count)){
	 		$total = $test_count->total;
	 	}*/
	 	return $total;
	}

}
