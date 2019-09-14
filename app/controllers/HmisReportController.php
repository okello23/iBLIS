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

		// Determine counts
		$d_hct = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','1')->where('purpose','=','hct')->where('result', '!=', '')->get();

		$d_emct = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','1')->where('purpose','=','emtct')->where('result', '!=', '')->get();

		$d_clinic = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','1')->where('purpose','=','clinical_diagnosis')->where('result', '!=', '')->get();

		$d_smc = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','1')->where('purpose','=','smc')->where('result', '!=', '')->get();

		$d_repeat = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','1')->where('purpose','=','repeat_test')->where('result', '!=', '')->get();

		$d_verification = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','1')->where('purpose','=','test_for_verification')->where('result', '!=', '')->get();

		$d_inconclusive = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','1')->where('purpose','=','inconclusive_results')->where('result', '!=', '')->get();

		$d_dna = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','1')->where('purpose','=','dna_confirmatory_test')->where('result', '!=', '')->get();

		$d_iqc = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','1')->where('purpose','=','iqc')->where('result', '!=', '')->get();

		$d_eqa = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','1')->where('purpose','=','eqa')->where('result', '!=', '')->get();

// Statpak counts
		$s_hct = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','2')->where('purpose','=','hct')->where('result', '!=', '')->get();

		$s_emct = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','2')->where('purpose','=','emtct')->where('result', '!=', '')->get();

		$s_clinic = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','2')->where('purpose','=','clinical_diagnosis')->where('result', '!=', '')->get();

		$s_smc = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','2')->where('purpose','=','smc')->where('result', '!=', '')->get();

		$s_repeat = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','2')->where('purpose','=','repeat_test')->where('result', '!=', '')->get();

		$s_verification = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','2')->where('purpose','=','test_for_verification')->where('result', '!=', '')->get();

		$s_inconclusive = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','2')->where('purpose','=','inconclusive_results')->where('result', '!=', '')->get();

		$s_dna = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','2')->where('purpose','=','dna_confirmatory_test')->where('result', '!=', '')->get();

		$s_iqc = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','2')->where('purpose','=','iqc')->where('result', '!=', '')->get();

		$s_eqa = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','2')->where('purpose','=','eqa')->where('result', '!=', '')->get();

// SD-Bioline counts
		$sd_hct = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','3')->where('purpose','=','hct')->where('result', '!=', '')	->get();

		$sd_emct = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','3')->where('purpose','=','emtct')->where('result', '!=', '')->get();

		$sd_clinic = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','3')->where('purpose','=','clinical_diagnosis')->where('result', '!=', '')->get();

		$sd_smc = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','3')->where('purpose','=','smc')->where('result', '!=', '')->get();

		$sd_repeat = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','3')->where('purpose','=','repeat_test')->where('result', '!=', '')->get();

		$sd_verification = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','3')->where('purpose','=','test_for_verification')->where('result', '!=', '')->get();

		$sd_inconclusive = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','3')->where('purpose','=','inconclusive_results')->where('result', '!=', '')->get();

		$sd_dna = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','3')->where('purpose','=','dna_confirmatory_test')->where('result', '!=', '')->get();

		$sd_iqc = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','3')->where('purpose','=','iqc')->where('result', '!=', '')->get();

		$sd_eqa = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','3')->where('purpose','=','eqa')->where('result', '!=', '')->get();

// HIV-Syphilis Duo count
		$h_hct = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','100')->where('purpose','=','hct')->where('result', '!=', '')	->get();

		$h_emct = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','100')->where('purpose','=','emtct')->where('result', '!=', '')->get();

		$h_clinic = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','100')->where('purpose','=','clinical_diagnosis')->where('result', '!=', '')->get();

		$h_smc = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','100')->where('purpose','=','smc')->where('result', '!=', '')->get();

		$h_repeat = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','100')->where('purpose','=','repeat_test')->where('result', '!=', '')->get();

		$h_verification = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','100')->where('purpose','=','test_for_verification')->where('result', '!=', '')->get();

		$h_inconclusive = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','100')->where('purpose','=','inconclusive_results')->where('result', '!=', '')->get();

		$h_dna = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','100')->where('purpose','=','dna_confirmatory_test')->where('result', '!=', '')->get();

		$h_iqc = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','100')->where('purpose','=','iqc')->where('result', '!=', '')->get();

		$h_eqa = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','100')->where('purpose','=','eqa')->where('result', '!=', '')->get();

// Oraquick count
		$o_hct = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','101')->where('purpose','=','hct')->where('result', '!=', '')	->get();

		$o_emct = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','101')->where('purpose','=','emtct')->where('result', '!=', '')->get();

		$o_clinic = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','101')->where('purpose','=','clinical_diagnosis')->where('result', '!=', '')->get();

		$o_smc = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','101')->where('purpose','=','smc')->where('result', '!=', '')->get();

		$o_repeat = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','101')->where('purpose','=','repeat_test')->where('result', '!=', '')->get();

		$o_verification = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','101')->where('purpose','=','test_for_verification')->where('result', '!=', '')->get();

		$o_inconclusive = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','101')->where('purpose','=','inconclusive_results')->where('result', '!=', '')->get();

		$o_dna = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','101')->where('purpose','=','dna_confirmatory_test')->where('result', '!=', '')->get();

		$o_iqc = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','101')->where('purpose','=','iqc')->where('result', '!=', '')->get();

		$o_eqa = DB::table("unhls_test_results")
		->select("unhls_tests.purpose","measures.name", DB::raw("COUNT(unhls_tests.id) as counter"))
		->join("measures","measures.id","=","unhls_test_results.measure_id")
		->join("unhls_tests","unhls_test_results.test_id","=","unhls_tests.id")
		->where('measure_id','=','101')->where('purpose','=','eqa')->where('result', '!=', '')->get();

		return View::make('reports.hmis.hmis05')
		->with('month', $month)
		->with('sepecimen_counts', $sepecimen_counts)
		->with('total_test_count', $total_test_count)
		->with('visits', $visits)
		->with('d_hct', $d_hct)
		->with('d_emct', $d_emct)
		->with('d_clinic', $d_clinic)
		->with('d_smc', $d_smc)
		->with('d_repeat', $d_repeat)
		->with('d_verification', $d_verification)
		->with('d_inconclusive', $d_inconclusive)
		->with('d_dna', $d_dna)
		->with('d_iqc', $d_iqc)
		->with('d_eqa', $d_eqa)
		->with('s_hct', $s_hct)
		->with('s_emct', $s_emct)
		->with('s_clinic', $s_clinic)
		->with('s_smc', $s_smc)
		->with('s_repeat', $s_repeat)
		->with('s_verification', $s_verification)
		->with('s_inconclusive', $s_inconclusive)
		->with('s_dna', $s_dna)
		->with('s_iqc', $s_iqc)
		->with('s_eqa', $s_eqa)
		->with('sd_hct', $sd_hct)
		->with('sd_emct', $sd_emct)
		->with('sd_clinic', $sd_clinic)
		->with('sd_smc', $sd_smc)
		->with('sd_repeat', $sd_repeat)
		->with('sd_verification', $sd_verification)
		->with('sd_inconclusive', $sd_inconclusive)
		->with('sd_dna', $sd_dna)
		->with('sd_iqc', $sd_iqc)
		->with('sd_eqa', $sd_eqa)
		->with('h_hct', $h_hct)
		->with('h_emct', $h_emct)
		->with('h_clinic', $h_clinic)
		->with('h_smc', $h_smc)
		->with('h_repeat', $h_repeat)
		->with('h_verification', $h_verification)
		->with('h_inconclusive', $h_inconclusive)
		->with('h_dna', $h_dna)
		->with('h_iqc', $h_iqc)
		->with('h_eqa', $h_eqa)
		->with('o_hct', $o_hct)
		->with('o_emct', $o_emct)
		->with('o_clinic', $o_clinic)
		->with('o_smc', $o_smc)
		->with('o_repeat', $o_repeat)
		->with('o_verification', $o_verification)
		->with('o_inconclusive', $o_inconclusive)
		->with('o_dna', $o_dna)
		->with('o_iqc', $o_iqc)
		->with('o_eqa', $o_eqa);

		// TODO: Not the best, but it serves the current purpose, we'll revise it when all is calm.
		/*
		Ben*/
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
