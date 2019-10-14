@extends("layout")
@section("content")
<div>
	<ol class="breadcrumb">
	  <li><a href="{{{URL::route('user.home')}}}">{{trans('messages.home')}}</a></li>
	 
	  <li class="active">{{ Lang::choice('messages.supplier-list',2) }}</li>
	</ol>
</div>
@if (Session::has('message'))
	<div class="alert alert-info">{{ trans(Session::get('message')) }}</div>
@endif
<div class="panel panel-primary">
	<div class="panel-heading ">
		<span class="glyphicon glyphicon-user"></span>
		{{trans('messages.supplier-list')}}
		<div class="panel-btn">

			<a href="{{ URL::route("equipmentsupplier.create")}}" class="btn btn-sm btn-info">
                                <span class="glyphicon glyphicon-plus-sign"></span>
                                {{trans('messages.add')}}
                            </a>
			
		</div>
	</div>


	<div class="panel-body">
	<div class="table-responsive">
  	<table class="table table-striped search-table">
			<thead>
				<tr>
					<th class="col-sm-3">Name</th>
					<th class="col-sm-2">Phone</th>
					<th class="col-sm-2">Email</th>
					<th class="col-sm-3">Address</th>
					<th class="col-sm-2"></th>								
				</tr>
			</thead>			
			<tbody>
			@foreach($suppliers as $supplier)
				<tr>
				<td class="col-sm-3">{{ $supplier->name }}</td>
				<td class="col-sm-2">{{ $supplier->phone }}</td>
				<td class="col-sm-2">{{ $supplier->email }}</td>
				<td class="col-sm-3">{{ $supplier->address }}</td>
				<td class="col-sm-2">
					<a class="btn btn-sm btn-info" href="{{ URL::route('equipmentsupplier.edit', array($supplier->id)) }}" >
							<span class="glyphicon glyphicon-edit"></span>
							{{trans('messages.edit')}}
						</a>
						@if(Auth::user()->can('manage_inventory'))
						<!-- can delete patient -->
						<button class="btn btn-sm btn-danger delete-item-link"
							data-toggle="modal" data-target=".confirm-delete-modal"
							data-id="{{ URL::route('equipmentsupplier.delete', array($supplier->id)) }}">
							<span class="glyphicon glyphicon-trash"></span>
							{{ trans('messages.delete') }}
						</button>
						@endif
					</td>
				</tr>
			@endforeach	
			</tbody>
  </table>
</div>

		<?php Session::put('SOURCE_URL', URL::full());?>
	</div>
	
</div>


@stop