<?php
set_time_limit(0); //60 seconds = 1 minute
class HmisReportController extends \BaseController {
	public function hmis105($month = '')
	{
		$month = ($month == '') ? date('Y-m') : $month ;
		$testTypes = TestType::all();
		
		$visits = $this->getVisistsByMonth($month);
		$sepecimen_counts = $this->getSpecimenTotals($month);
		$total_test_count = $this->getHematologyCounts($month);
		$serology_test_counts = $this->getSerologyCounts($month);
		$blood_transfussion_test_counts  = $this->getBloodTransfusionCounts($month);
		$culture_and_sensitivity_counts  = $this->getCultureAndSensitivityCounts($month);
		$immunology_counts = $this->getImmunologyCounts($month);
		$molecular_counts = $this->getMolecularCounts($month);
		$hiv_by_purpose = $this->getHivTestByPurpose($month);
		return View::make('reports.hmis.hmis05')
							->with('month', $month)
							->with('sepecimen_counts', $sepecimen_counts)
							->with('total_test_count', $total_test_count)
							->with('serology_test_counts', $serology_test_counts)
							->with('visits', $visits)
							->with('blood_transfussion_test_counts', $blood_transfussion_test_counts)
							->with('culture_and_sensitivity_counts',$culture_and_sensitivity_counts)
							->with('immunology_counts', $immunology_counts)
							->with('molecular_counts',$molecular_counts)
							->with('hiv_by_purpose',$hiv_by_purpose);
	}

	/*
	* @parameters - $month - the period of consideration
	* Uses mysql query to get the counts of specimen collected out and those collected in 
	* @Return - array of total counts for the period for specimen of interest
	*/
	private function getVisistsByMonth($month){
		$visits_counts = ['in_patients' => 0, 'out_patients' => 0];
		$query = "SELECT SUM(IF(`visit_type` LIKE '%In-patient%', 1, 0)) AS 'in_patients',SUM(IF(`visit_type` LIKE '%Out-patient%', 1, 0)) AS 'out_patients'
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
	private function getTestCountsByLabSection($lab_section_id, $month){
		$query = "select test_type_id, tt.test_category_id as lab_section, count(ut.id) as total FROM unhls_tests ut 
		INNER JOIN test_types tt ON(ut.test_type_id = tt.id)
		INNER JOIN test_categories tc ON(tc.id = tt.test_category_id AND tt.test_category_id = $lab_section_id)
		WHERE `ut`.`time_created` LIKE '%".$month."%'
		GROUP BY test_type_id";
		//set variables for the target tests -from 
		//also get array of test_type ids to use in condition
	 	$rows = DB::select($query);
	 	return $rows;
	}
	private function getHematologyCounts($month){
		$test_type_ids = $this->getTestTypeIDs('hematology');
		$rows = $this->getTestCountsByLabSection($test_type_ids['test_category_id'],$month);
		//$test_type_counts = $this->getTestTypeInitialCounts('hematology');
		$test_type_counts['hb_non_automated'] = 0;
		$test_type_counts['vdrl_rrr'] = 0;
		$test_type_counts['cbc'] = 0;
		$test_type_counts['film_comment'] = 0;
		$test_type_counts['tpha'] = 0;
		$test_type_counts['esr'] = 0;
		$test_type_counts['shigella_dysentery'] = 0;
		$test_type_counts['bleeding_time'] = 0;
		$test_type_counts['Hepatitisb_sags'] = 0;
		$test_type_counts['prothrombin_time'] = 0;
		$test_type_counts['brucella'] = 0;
		$test_type_counts['clotting_time'] = 0;
		$test_type_counts['pregnancy_test'] = 0;
		$test_type_counts['sickle_cell'] = 0;
		$test_type_counts['others'] = 0;
	 	foreach($rows as $row){
	 		//dd($row);
	 		if((int)$row->test_type_id = $test_type_ids['hb_non_automated']){
	 			$test_type_counts['hb_non_automated'] = $test_type_counts['hb_non_automated'] + 1;
	 		}else if((int)$row->vdrl_rrr = $test_type_ids['vdrl_rrr']){
	 			$test_type_counts['vdrl_rrr'] = $test_type_counts['vdrl_rrr'] + 1;
	 		}else if((int)$row->cbc = $test_type_ids['cbc']){
	 			$test_type_counts['cbc'] = $test_type_counts['cbc'] + 1;
	 		}else if((int)$row->film_comment = $test_type_ids['film_comment']){
	 			$test_type_counts['film_comment'] = $test_type_counts['film_comment'] + 1;
	 		}else if((int)$row->tpha = $test_type_ids['tpha']){
	 			$test_type_counts['tpha'] = $test_type_counts['tpha'] + 1;
	 		}else if((int)$row->esr = $test_type_ids['esr']){
	 			$test_type_counts['esr'] = $test_type_counts['esr'] + 1;
	 		}else if((int)$row->bleeding_time = $test_type_ids['bleeding_time']){
	 			$test_type_counts['bleeding_time'] = $test_type_counts['bleeding_time'] + 1;
	 		}else if((int)$row->Hepatitisb_sags = $test_type_ids['Hepatitisb_sags']){
	 			$test_type_counts['Hepatitisb_sags'] = $test_type_counts['Hepatitisb_sags'] + 1;
	 		}else if((int)$row->prothrombin_time = $test_type_ids['prothrombin_time']){
	 			$test_type_counts['prothrombin_time'] = $test_type_counts['prothrombin_time'] + 1;
	 		}else if((int)$row->brucella = $test_type_ids['brucella']){
	 			$test_type_counts['brucella'] = $test_type_counts['brucella'] + 1;
	 		}else if((int)$row->clotting_time = $test_type_ids['clotting_time']){
	 			$test_type_counts['clotting_time'] = $test_type_counts['clotting_time'] + 1;
	 		}else if((int)$row->pregnancy_test = $test_type_ids['pregnancy_test']){
	 			$test_type_counts['pregnancy_test'] = $test_type_counts['pregnancy_test'] + 1;
	 		}else if((int)$row->sickle_cell = $test_type_ids['sickle_cell']){
	 			$test_type_counts['sickle_cell'] = $test_type_counts['sickle_cell'] + 1;
	 		}else{
	 			$test_type_counts['others'] = $test_type_counts['others'] + 1;
	 		}

	 	}
	 	return $test_type_counts;
	}
	private function getSerologyCounts($month){
		$test_type_ids = $this->getTestTypeIDs('serology');
		$rows = $this->getTestCountsByLabSection($test_type_ids['test_category_id'],$month);
		//$test_type_counts = $this->getTestTypeInitialCounts('hematology');
		$test_type_counts['vdrl_rrr'] = 0;
		$test_type_counts['tpha'] = 0;
		$test_type_counts['shigella_dysentery'] = 0;
		$test_type_counts['hepatitisb_sags'] = 0;
		$test_type_counts['brucella'] = 0;
		$test_type_counts['pregnancy_test'] = 0;
		$test_type_counts['crag'] = 0;
		$test_type_counts['rheumatoid_factor'] = 0;
		$test_type_counts['hepb_core_ag'] = 0;
		$test_type_counts['Hepatitisb_sags'] = 0;
		$test_type_counts['hepa'] = 0;
		$test_type_counts['hepc'] = 0;

	 	foreach($rows as $row){
	 		//dd($row);
	 		if((int)$row->test_type_id = $test_type_ids['vdrl_rrr']){
	 			$test_type_counts['vdrl_rrr'] = $test_type_counts['vdrl_rrr'] + 1;
	 		}else if((int)$row->test_type_id = $test_type_ids['tpha']){
	 			$test_type_counts['tpha'] = $test_type_counts['tpha'] + 1;
	 		}else if((int)$row->test_type_id = $test_type_ids['hepatitisb_sags']){
	 			$test_type_counts['hepatitisb_sags'] = $test_type_counts['hepatitisb_sags'] + 1;
	 		}else if((int)$row->film_comment = $test_type_ids['brucella']){
	 			$test_type_counts['brucella'] = $test_type_counts['brucella'] + 1;
	 		}else if((int)$row->test_type_id = $test_type_ids['pregnancy_test']){
	 			$test_type_counts['pregnancy_test'] = $test_type_counts['pregnancy_test'] + 1;
	 		}else if((int)$row->test_type_id = $test_type_ids['crag']){
	 			$test_type_counts['crag'] = $test_type_counts['crag'] + 1;
	 		}else if((int)$row->test_type_id = $test_type_ids['shigella_dysentery']){
	 			$test_type_counts['shigella_dysentery'] = $test_type_counts['shigella_dysentery'] + 1;
	 		}else if((int)$row->test_type_id = $test_type_ids['rheumatoid_factor']){
	 			$test_type_counts['rheumatoid_factor'] = $test_type_counts['rheumatoid_factor'] + 1;
	 		}else if((int)$row->test_type_id = $test_type_ids['hepb_core_ag']){
	 			$test_type_counts['hepb_core_ag'] = $test_type_counts['hepb_core_ag'] + 1;
	 		}else if((int)$row->test_type_id = $test_type_ids['Hepatitisb_sags']){
	 			$test_type_counts['Hepatitisb_sags'] = $test_type_counts['Hepatitisb_sags'] + 1;
	 		}else if((int)$row->test_type_id = $test_type_ids['hepa']){
	 			$test_type_counts['hepa'] = $test_type_counts['hepa'] + 1;
	 		}else if((int)$row->test_type_id = $test_type_ids['hepc']){
	 			$test_type_counts['hepc'] = $test_type_counts['hepc'] + 1;
	 		}else if((int)$row->test_type_id = $test_type_ids['clotting_time']){
	 			$test_type_counts['clotting_time'] = $test_type_counts['clotting_time'] + 1;
	 		}else if((int)$row->test_type_id = $test_type_ids['pregnancy_test']){
	 			$test_type_counts['pregnancy_test'] = $test_type_counts['pregnancy_test'] + 1;
	 		}else if((int)$row->test_type_id = $test_type_ids['sickle_cell']){
	 			$test_type_counts['sickle_cell'] = $test_type_counts['sickle_cell'] + 1;
	 		}else{
	 			$test_type_counts['others'] = $test_type_counts['others'] + 1;
	 		}

	 	}
	 	return $test_type_counts;
	}
	
	private function getBloodTransfusionCounts($month){
		$test_type_ids = $this->getTestTypeIDs('blood_transfusion');
		$rows = $this->getTestCountsByLabSection($test_type_ids['test_category_id'],$month);
		$test_type_counts = $this->getTestTypeInitialCounts('blood_transfusion');
	 	foreach($rows as $row){
	 		//dd($row);
	 		if((int)$row->test_type_id = $test_type_ids['ahb_combs_test']){
	 			$test_type_counts['ahb_combs_test'] = $test_type_counts['ahb_combs_test'] + 1;
	 		}else if((int)$row->test_type_id = $test_type_ids['abo_grouping']){
	 			$test_type_counts['abo_grouping'] = $test_type_counts['abo_grouping'] + 1;
	 		}else if((int)$row->test_type_id = $test_type_ids['cross_matching']){
	 			$test_type_counts['cross_matching'] = $test_type_counts['cross_matching'] + 1;
	 		}

	 	}
	 	return $test_type_counts;
	}
	private function getCultureAndSensitivityCounts($month){
		$test_type_ids = $this->getTestTypeIDs('culture_and_sensitivity_specimen');
		$test_type_counts = $this->getTestTypeInitialCounts('culture_and_sensitivity_specimen');
		$query = "SELECT specimen_id, test_status_id FROM unhls_tests WHERE specimen_id = ".$test_type_ids['test_type_id']." AND time_created LIKE '%".$month."%'";
		//set variables for the target tests -from 
		//also get array of test_type ids to use in condition
	 	$rows = DB::select($query);
	 	foreach($rows as $row){
	 		//dd($row);
	 		if((int)$row->specimen_id = $test_type_ids['blood']){
	 			$test_type_counts['blood'] = $test_type_counts['blood'] + 1;
	 		}else if((int)$row->specimen_id = $test_type_ids['urine']){
	 			$test_type_counts['urine'] = $test_type_counts['urine'] + 1;
	 		}else if((int)$row->specimen_id = $test_type_ids['stool']){
	 			$test_type_counts['stool'] = $test_type_counts['stool'] + 1;
	 		}else if((int)$row->specimen_id = $test_type_ids['sputum']){
	 			$test_type_counts['sputum'] = $test_type_counts['sputum'] + 1;
	 		}else if((int)$row->specimen_id = $test_type_ids['nosal_swab']){
	 			$test_type_counts['swabs'] = $test_type_counts['swabs'] + 1;
	 		}else if((int)$row->specimen_id = $test_type_ids['rectal_swab']){
	 			$test_type_counts['swabs'] = $test_type_counts['swabs'] + 1;
	 		}else if((int)$row->specimen_id = $test_type_ids['wound_swab']){
	 			$test_type_counts['swabs'] = $test_type_counts['swabs'] + 1;
	 		}else if((int)$row->specimen_id = $test_type_ids['pus_swab']){
	 			$test_type_counts['swabs'] = $test_type_counts['swabs'] + 1;
	 		}else if((int)$row->specimen_id = $test_type_ids['eye_swab']){
	 			$test_type_counts['swabs'] = $test_type_counts['swabs'] + 1;
	 		}else if((int)$row->specimen_id = $test_type_ids['ear_swab']){
	 			$test_type_counts['swabs'] = $test_type_counts['swabs'] + 1;
	 		}else if((int)$row->specimen_id = $test_type_ids['throat_swab']){
	 			$test_type_counts['swabs'] = $test_type_counts['swabs'] + 1;
	 		}else if((int)$row->specimen_id = $test_type_ids['uretheral_swab']){
	 			$test_type_counts['swabs'] = $test_type_counts['swabs'] + 1;
	 		}

	 	}
	 	return $test_type_counts;
	}
	private function getImmunologyCounts($month){
		$test_type_ids = $this->getTestTypeIDs('immunology');
		$test_type_counts = $this->getTestTypeInitialCounts('immunology');
		$query = "SELECT test_type_id, test_status_id FROM unhls_tests WHERE test_type_id IN(".$test_type_ids['cd4'].",".$test_type_ids['hiv_viral_load'].",".$test_type_ids['hepb'].") AND time_created LIKE '%".$month."%'";
		//set variables for the target tests -from 
		//also get array of test_type ids to use in condition
	 	$rows = DB::select($query);
	 	foreach($rows as $row){
	 		//dd($row);
	 		if((int)$row->test_type_id = $test_type_ids['cd4']){
	 			$test_type_counts['cd4'] = $test_type_counts['cd4'] + 1;
	 		}else if((int)$row->test_type_id = $test_type_ids['hiv_viral_load']){
	 			$test_type_counts['hiv_viral_load'] = $test_type_counts['hiv_viral_load'] + 1;
	 		}else if((int)$row->test_type_id = $test_type_ids['hepb']){
	 			$test_type_counts['hepb'] = $test_type_counts['hepb'] + 1;
	 		}
	 	}
	 	return $test_type_counts;
	}
	private function getMolecularCounts($month){
		$test_type_ids = $this->getTestTypeIDs('molecular');
		$test_type_counts = $this->getTestTypeInitialCounts('molecular');
		$query = "SELECT test_type_id, test_status_id FROM unhls_tests WHERE test_type_id IN(".$test_type_ids['tb_genexpert'].",".$test_type_ids['latent_tb'].",".$test_type_ids['tb_lam'].") AND time_created LIKE '%".$month."%'";
		//set variables for the target tests -from 
		//also get array of test_type ids to use in condition
	 	$rows = DB::select($query);
	 	foreach($rows as $row){
	 		//dd($row);
	 		if((int)$row->test_type_id = $test_type_ids['tb_genexpert']){
	 			$test_type_counts['tb_genexpert'] = $test_type_counts['tb_genexpert'] + 1;
	 		}else if((int)$row->test_type_id = $test_type_ids['latent_tb']){
	 			$test_type_counts['latent_tb'] = $test_type_counts['latent_tb'] + 1;
	 		}else if((int)$row->test_type_id = $test_type_ids['tb_lam']){
	 			$test_type_counts['tb_lam'] = $test_type_counts['tb_lam'] + 1;
	 		}
	 	}
	 	return $test_type_counts;
	}
	private function getTestTypeIDs($lab_section){
		$test_type_ids = [
						'hematology'=>
							[
							'test_category_id' => 3, //the id of the hematology - check test_categories table
							'hb_non_automated' => 4,
							'vdrl_rrr' => 45,
							'cbc' => 16,
							'film_comment' => 99,
							'tpha' => 33,
							'esr' =>94, 
							'shigella_dysentery' => 105,
							'bleeding_time' => 100,
							'Hepatitisb_sags' => 110,
							'prothrombin_time' => 115,
							'brucella' => 14,
							'clotting_time' => 120,
							'pregnancy_test' => 13,
							'sickle_cell' => 10,
						],
						'serology' => [
							'test_category_id' => 4, //the id of the serology - check test_categories table
							'vdrl_rrr' => 12,
							'tpha' => 102,
							'shigella_dysentery' => 104,
							'hepatitisb_sags' => 106,
							'brucella' => 14,
							'pregnancy_test' => 13,
							'crag' => 108,
							'rheumatoid_factor' => 110,
							'hepb_core_ag' => 112,
							'hepa' => 114,
							'hepc' => 116,
						],
						'blood_transfusion' => [
							'test_category_id' => 5, //the id of the serology - check test_categories table
							'ahb_combs_test' => 8,
							'abo_grouping' => 50,
							'rhesus_grouping' => 'N/A',
							'cross_matching' => 51,
						],
						//test based analysis
						'culture_and_sensitivity_specimen' => [
							'test_type_id' => 5, //the id of the cul n sens test - check test_types table
							'blood' => 22,
							'urine' => 26,
							'stool' => 13,
							'sputum' => 24,
							'nosal_swab' => 3,
							'rectal_swab' => 5,
							'wound_swab' => 15,
							'pus_swab' => 16,
							'eye_swab' => 18,
							'ear_swab' => 19,
							'throat_swab' => 20,
							'uretheral_swab' => 25,
						],
						'immunology' => [
							'cd4' => 47, 
							'hiv_viral_load' => 53,
							'hepb' => 500,
						],
						'molecular' => [
							'tb_genexpert' => 48, 
							'latent_tb' => 501,
							'tb_lam' => 49,
						],
						'renal_liver_lipid' => [//get ids from measures table
							'urea' => 510, 
							'calcium' => 92,
							'potassium' => 511,
							'sodium' => 512,
							'creatinine' => 513,
							'alt' => 514,
							'ast' => 515,
							'protein' => 12,
							'triglycerides' => 517,
							'cholesterol' => 518,
							'free_t3' => 519,
							'free_t4' => 520,
							'tsh' => 521,
							'alkaline_phosphate' => 516,
							'amylase' => 91,
							'amylase' => 91,
							'amylase' => 91,

						]
					];
		return $test_type_ids[$lab_section];
	}

	private function getTestTypeInitialCounts($lab_section){
		//blood transfusion
		$test_types['blood_transfusion']['ahb_combs_test'] = 0;
		$test_types['blood_transfusion']['abo_grouping'] = 0;
		$test_types['blood_transfusion']['rhesus_grouping'] = 'N/A';
		$test_types['blood_transfusion']['cross_matching'] = 0;
		//test based analysis - culture and sensitivity
		$test_types['culture_and_sensitivity_specimen']['urine'] = 0;
		$test_types['culture_and_sensitivity_specimen']['blood'] = 0;
		$test_types['culture_and_sensitivity_specimen']['stool'] = 0;
		$test_types['culture_and_sensitivity_specimen']['swabs'] = 0;
		$test_types['culture_and_sensitivity_specimen']['sputum'] = 0;
		//immunology
		$test_types['immunology']['cd4'] = 0;
		$test_types['immunology']['hiv_viral_load'] = 0;
		$test_types['immunology']['hepb'] = 0;
		//molecular
		$test_types['molecular']['tb_genexpert'] = 0;
		$test_types['molecular']['latent_tb'] = 0;
		$test_types['molecular']['tb_lam'] = 0;
		return $test_types[$lab_section]; 
	}

	private function getHivTestByPurpose($month){
		$ret_array =  array();
		$d_hct = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','1')->where('purpose','=','hct')
		->where('result', '!=', '')
		->where('unhls_tests.time_verified', 'LIKE', $month)->get();
		$ret_array['determine']['hct']= $d_hct[0]->counter;
		
		$d_emct = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','1')->where('purpose','=','emtct')->where('result', '!=', '')->get();
		$ret_array['determine']['emct']= $d_emct[0]->counter;

		$d_clinic = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','1')->where('purpose','=','clinical_diagnosis')->where('result', '!=', '')->get();
		$ret_array['determine']['clinic']= $d_clinic[0]->counter;

		$d_smc = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','1')->where('purpose','=','smc')->where('result', '!=', '')->get();
		$ret_array['determine']['smc']= $d_smc[0]->counter;

		$d_repeat = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','1')->where('purpose','=','repeat_test')->where('result', '!=', '')->get();
		$ret_array['determine']['repeat']= $d_repeat[0]->counter;

		$d_verification = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','1')->where('purpose','=','test_for_verification')->where('result', '!=', '')->get();
		$ret_array['determine']['verification']= $d_verification[0]->counter;

		$d_inconclusive = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','1')->where('purpose','=','inconclusive_results')->where('result', '!=', '')->get();
		$ret_array['determine']['inconclusive']= $d_inconclusive[0]->counter;

		$d_dna = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','1')->where('purpose','=','dna_confirmatory_test')->where('result', '!=', '')->get();
		$ret_array['determine']['dna']= $d_dna[0]->counter;

		$d_iqc = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','1')->where('purpose','=','iqc')->where('result', '!=', '')->get();
		$ret_array['determine']['iqc']= $d_iqc[0]->counter;

		$d_eqa = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','1')->where('purpose','=','eqa')->where('result', '!=', '')->get();
		$ret_array['determine']['eqa']= $d_eqa[0]->counter;

		// Statpak counts
		$s_hct = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','2')->where('purpose','=','hct')->where('result', '!=', '')->get();
		$ret_array['statpak']['hct']= $d_hct[0]->counter;

		$s_emct = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','2')->where('purpose','=','emtct')->where('result', '!=', '')->get();
		$ret_array['statpak']['emct']= $d_emct[0]->counter;

		$s_clinic = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','2')->where('purpose','=','clinical_diagnosis')->where('result', '!=', '')->get();
		$ret_array['statpak']['clinic']= $d_clinic[0]->counter;

		$s_smc = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','2')->where('purpose','=','smc')->where('result', '!=', '')->get();
		$ret_array['statpak']['smc']= $d_smc[0]->counter;

		$s_repeat = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','2')->where('purpose','=','repeat_test')->where('result', '!=', '')->get();
		$ret_array['statpak']['repeat']= $d_repeat[0]->counter;

		$s_verification = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','2')->where('purpose','=','test_for_verification')->where('result', '!=', '')->get();
		$ret_array['statpak']['verification']= $d_verification[0]->counter;

		$s_inconclusive = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','2')->where('purpose','=','inconclusive_results')->where('result', '!=', '')->get();
		$ret_array['statpak']['inconclusive']= $s_inconclusive[0]->counter;

		$s_dna = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','2')->where('purpose','=','dna_confirmatory_test')->where('result', '!=', '')->get();
		$ret_array['statpak']['dna']= $s_dna[0]->counter;

		$s_iqc = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','2')->where('purpose','=','iqc')->where('result', '!=', '')->get();
		$ret_array['statpak']['iqc']= $s_iqc[0]->counter;

		$s_eqa = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','2')->where('purpose','=','eqa')->where('result', '!=', '')->get();
		$ret_array['statpak']['eqa']= $s_eqa[0]->counter;

		// SD-Bioline counts
		$sd_hct = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','3')->where('purpose','=','hct')->where('result', '!=', '')	->get();
		$ret_array['sdbioline']['hct']= $sd_hct[0]->counter;

		$sd_emct = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','3')->where('purpose','=','emtct')->where('result', '!=', '')->get();
		$ret_array['sdbioline']['emct']= $sd_emct[0]->counter;

		$sd_clinic = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','3')->where('purpose','=','clinical_diagnosis')->where('result', '!=', '')->get();
		$ret_array['sdbioline']['clinic']= $sd_clinic[0]->counter;

		$sd_smc = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','3')->where('purpose','=','smc')->where('result', '!=', '')->get();
		$ret_array['sdbioline']['smc']= $sd_smc[0]->counter;

		$sd_repeat = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','3')->where('purpose','=','repeat_test')->where('result', '!=', '')->get();
		$ret_array['sdbioline']['repeat']= $sd_repeat[0]->counter;

		$sd_verification = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','3')->where('purpose','=','test_for_verification')->where('result', '!=', '')->get();
		$ret_array['sdbioline']['verification']= $sd_verification[0]->counter;

		$sd_inconclusive = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','3')->where('purpose','=','inconclusive_results')->where('result', '!=', '')->get();
		$ret_array['sdbioline']['inconclusive']= $sd_inconclusive[0]->counter;

		$sd_dna = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','3')->where('purpose','=','dna_confirmatory_test')->where('result', '!=', '')->get();
		$ret_array['sdbioline']['dna']= $sd_dna[0]->counter;

		$sd_iqc = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','3')->where('purpose','=','iqc')->where('result', '!=', '')->get();
		$ret_array['sdbioline']['iqc']= $sd_iqc[0]->counter;

		$sd_eqa = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','3')->where('purpose','=','eqa')->where('result', '!=', '')->get();
		$ret_array['sdbioline']['eqa']= $sd_eqa[0]->counter;

		// HIV-Syphilis Duo count
		$h_hct = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','100')->where('purpose','=','hct')->where('result', '!=', '')	->get();
		$ret_array['syphilis']['hct']= $h_hct[0]->counter;

		$h_emct = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','100')->where('purpose','=','emtct')->where('result', '!=', '')->get();
		$ret_array['syphilis']['emct']= $h_emct[0]->counter;

		$h_clinic = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','100')->where('purpose','=','clinical_diagnosis')->where('result', '!=', '')->get();
		$ret_array['syphilis']['clinic']= $h_clinic[0]->counter;

		$h_smc = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','100')->where('purpose','=','smc')->where('result', '!=', '')->get();
		$ret_array['syphilis']['smc']= $h_smc[0]->counter;

		$h_repeat = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','100')->where('purpose','=','repeat_test')->where('result', '!=', '')->get();
		$ret_array['syphilis']['repeat']= $h_repeat[0]->counter;

		$h_verification = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','100')->where('purpose','=','test_for_verification')->where('result', '!=', '')->get();
		$ret_array['syphilis']['verification']= $h_verification[0]->counter;

		$h_inconclusive = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','100')->where('purpose','=','inconclusive_results')->where('result', '!=', '')->get();
		$ret_array['syphilis']['inconclusive']= $h_inconclusive[0]->counter;

		$h_dna = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','100')->where('purpose','=','dna_confirmatory_test')->where('result', '!=', '')->get();
		$ret_array['syphilis']['dna']= $h_dna[0]->counter;

		$h_iqc = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','100')->where('purpose','=','iqc')->where('result', '!=', '')->get();
		$ret_array['syphilis']['iqc']= $h_iqc[0]->counter;

		$h_eqa = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','100')->where('purpose','=','eqa')->where('result', '!=', '')->get();
		$ret_array['syphilis']['eqa']= $h_eqa[0]->counter;

		// Oraquick count
		$o_hct = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','101')->where('purpose','=','hct')->where('result', '!=', '')	->get();
		$ret_array['oraquick']['hct']= $o_hct[0]->counter;

		$o_emct = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','101')->where('purpose','=','emtct')->where('result', '!=', '')->get();
		$ret_array['oraquick']['emct']= $o_emct[0]->counter;

		$o_clinic = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','101')->where('purpose','=','clinical_diagnosis')->where('result', '!=', '')->get();
		$ret_array['oraquick']['clinic']= $o_clinic[0]->counter;

		$o_smc = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','101')->where('purpose','=','smc')->where('result', '!=', '')->get();
		$ret_array['oraquick']['smc']= $o_smc[0]->counter;

		$o_repeat = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','101')->where('purpose','=','repeat_test')->where('result', '!=', '')->get();
		$ret_array['oraquick']['repeat']= $o_repeat[0]->counter;

		$o_verification = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','101')->where('purpose','=','test_for_verification')->where('result', '!=', '')->get();
		$ret_array['oraquick']['verification']= $o_verification[0]->counter;

		$o_inconclusive = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','101')->where('purpose','=','inconclusive_results')->where('result', '!=', '')->get();
		$ret_array['oraquick']['inconclusive']= $o_inconclusive[0]->counter;

		$o_dna = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','101')->where('purpose','=','dna_confirmatory_test')->where('result', '!=', '')->get();
		$ret_array['oraquick']['dna']= $o_dna[0]->counter;

		$o_iqc = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('unhls_tests.time_verified', 'LIKE', $month)
		->where('measure_id','=','101')->where('purpose','=','iqc')->where('result', '!=', '')->get();
		$ret_array['oraquick']['iqc']= $o_iqc[0]->counter;

		$o_eqa = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','101')->where('purpose','=','eqa')->where('result', '!=', '')->get();
		$ret_array['oraquick']['eqa']= $o_eqa[0]->counter;

//get the totals now
		$ret_array['determine']['total'] = $ret_array['determine']['hct']+$ret_array['determine']['emct']+$ret_array['determine']['clinic']+$ret_array['determine']['smc']+$ret_array['determine']['repeat']+$ret_array['determine']['verification']+
$ret_array['determine']['inconclusive']+$ret_array['determine']['dna']+$ret_array['determine']['iqc']+$ret_array['determine']['eqa'];

$ret_array['statpak']['total'] = $ret_array['statpak']['hct']+$ret_array['statpak']['emct']+$ret_array['statpak']['clinic']+$ret_array['statpak']['smc']+$ret_array['statpak']['repeat']+$ret_array['statpak']['verification']+
$ret_array['statpak']['inconclusive']+$ret_array['statpak']['dna']+$ret_array['statpak']['iqc']+$ret_array['statpak']['eqa'];

$ret_array['sdbioline']['total'] = $ret_array['sdbioline']['hct']+$ret_array['sdbioline']['emct']+$ret_array['sdbioline']['clinic']+$ret_array['sdbioline']['smc']+$ret_array['sdbioline']['repeat']+$ret_array['sdbioline']['verification']+
$ret_array['sdbioline']['inconclusive']+$ret_array['sdbioline']['dna']+$ret_array['sdbioline']['iqc']+$ret_array['sdbioline']['eqa'];

$ret_array['syphilis']['total'] = $ret_array['syphilis']['hct']+$ret_array['syphilis']['emct']+$ret_array['syphilis']['clinic']+$ret_array['syphilis']['smc']+$ret_array['syphilis']['repeat']+$ret_array['syphilis']['verification']+
$ret_array['syphilis']['inconclusive']+$ret_array['syphilis']['dna']+$ret_array['syphilis']['iqc']+$ret_array['syphilis']['eqa'];

$ret_array['oraquick']['total'] = $ret_array['oraquick']['hct']+$ret_array['oraquick']['emct']+$ret_array['oraquick']['clinic']+$ret_array['oraquick']['smc']+$ret_array['oraquick']['repeat']+$ret_array['oraquick']['verification']+
$ret_array['oraquick']['inconclusive']+$ret_array['oraquick']['dna']+$ret_array['oraquick']['iqc']+$ret_array['oraquick']['eqa'];
		

		return $ret_array;
	}
/*SELECT ur.id, ur.test_id, mr.measure_id, mr.interpretation  
FROM unhls_test_results ur
INNER JOIN measure_ranges mr ON(ur.measure_id = mr.measure_id)*/

}
