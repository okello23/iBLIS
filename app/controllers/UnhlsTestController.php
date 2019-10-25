<?php

	public function getFacility($id){
		$clinician = Facility::find($id);
		return $clinician;
	}

	public function getHub($id){
		$clinician = Hub::find($id);
		return $clinician;
	}
