<?php

class LookUpController  extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$cond = '';
		$lookup_id = Input::get('lookup_id');
		$page_title = '';
		$label_new = '';
		if($lookup_id){
			$cond = ' AND lv.look_up_id = '.$lookup_id;
			if($lookup_id == 1){
				$page_title = 'Lab Equipment Names';
				$label_new = 'New Name';
			}elseif($lookup_id == 3){
				$page_title = 'Test Methods';
				$label_new = 'New Method';
			}
		}
		$query = "SELECT lv.id, lv.look_up_id, lv.value, lv.value_description FROM look_up_values AS lv WHERE status = 1 ".$cond;
		$lookups = DB::select($query);
		return View::make('lookups.index')
					->with('lookup_id', $lookup_id)
					->with('page_title', $page_title)
					->with('label_new',$label_new)
					->with('lookups', $lookups);
	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		$cond = '';
		$lookup_id = Input::get('lookup_id');
		$id = Input::get('id');
		if($id == ''){
			$id = 0;
		}
		$page_title = '';
		$label_new = '';
		if($lookup_id){
			$cond = ' AND lv.look_up_id = '.$lookup_id;
			if($lookup_id == 1){
				$page_title = 'New Equipment Name';
				$label_new = 'New Name';
			}elseif($lookup_id == 3){
				$page_title = 'Test Methods';
				$label_new = 'New Method';
			}
		}
		$lookup_value = LookupTypeValue::find($id);

		return View::make('lookups.create')
						->with('page_title',$page_title)
						->with('label_new',$label_new)
						->with('lookup_id',$lookup_id)
						->with('lookup_value',$lookup_value)
						->with('id',$id);
	}

	
	
	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		$rules = array('value_description' => 'required');
		$form_values = Input::all();
		$validator = Validator::make($form_values, $rules);

		if($validator->fails())
		{
			return Redirect::route('role.create')->withInput()->withErrors($validator);
		}
		else
		{
			if($form_values['id']){
				$lookup_value = LookupTypeValue::find($form_values['id']);
			}else{
				$lookup_value = new LookupTypeValue;
				$lookup_value->look_up_id = $form_values['look_up_id'];
				//get the value base on the previously saved one 
				$query = "SELECT MAX(lv.id) as lv_id FROM look_up_values AS lv WHERE look_up_id = ".$form_values['look_up_id'];
				$result = DB::select($query);
				$last_saved_value_id = $result[0]->lv_id;
				//dd($last_saved_value_id);
				$last_saved_lv = LookupTypeValue::find($last_saved_value_id);
				if(is_numeric($last_saved_lv->value)){
					$lookup_value->value = intval($last_saved_lv->value) + 1;
				}else{
					$lookup_value->value = generateSlug($form_values['value_description'],'_');
				}
			}
			$lookup_value->value_description = $form_values['value_description'];

			try
			{
				$lookup_value->save();
				$url = Session::get('SOURCE_URL');
				return Redirect::to($url)
				->with('lookup_id',$form_values['look_up_id'])
				->with('id',$form_values['id'])
				->with('message', 'successful');
			}
			catch (QueryException $e)
			{
				Log::error($e);
			}
		}
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//No need for showing
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$lookup_value = LookupTypeValue::find($id);
		return View::make('role.edit')->with('role', $lookup_value);
	}


	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		
	}
	public function deactivate(){
		$lookup_value = LookupTypeValue::find(Input::get('id'));
        $lookup_value->status = 0;
        $lookup_value->save();
        $url = Session::get('SOURCE_URL');
			
		return Redirect::to($url)
					->with('lookup_id',Input::get('lookup_id'))
					->with('id',Input::get('id'))
					->with('message', 'Deleted successfully');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function delete($id)
	{
		//Soft delete the role
        $lookup_value = LookupTypeValue::find($id);
        $lookup_value->delete();
        // redirect

        $url = Session::get('SOURCE_URL');
			
		return Redirect::to($url)->with('message', 'Deleted successfully');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}


}
