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
		$query = "SELECT lv.id, lv.look_up_id, lv.value, lv.value_description FROM look_up_values AS lv WHERE id <> ''".$cond;
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
		return View::make('lookups.create')
						->with('page_title',$page_title)
						->with('label_new',$label_new)
						->with('lookup_id',$lookup_id)
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
		$validator = Validator::make(Input::all(), $rules);

		if($validator->fails())
		{
			return Redirect::route('role.create')->withInput()->withErrors($validator);
		}
		else
		{
			$lookup_value = new LookupTypeValue;
			$lookup_value->value_description = Input::get('value_description');

			try
			{
				$lookup_value->save();
				$url = Session::get('SOURCE_URL');
				return Redirect::to($url)->with('message', 'successful');
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
			
		return Redirect::to($url)->with('message', trans('messages.success-deleting-role'));
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
