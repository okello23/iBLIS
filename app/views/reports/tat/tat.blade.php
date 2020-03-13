@extends("layout")
@section("content")
<div>
	<ol class="breadcrumb">
	  <li><a href="{{{URL::route('user.home')}}}">{{ trans('messages.home') }}</a></li>
	  <li class="active"><a href="{{ URL::route('reports.patient.index') }}">{{ Lang::choice('messages.report', 2) }}</a></li>
	  <li class="active">{{ trans('messages.positivity-rates') }}</li>
	</ol>
</div>
{{ Form::open(array('route' => array('reports.aggregate.prevalence'), 'id' => 'prevalence_rates', 'method' => 'post')) }}
<div class="container-fluid">
  	<div id="chart1"></div>

{!! $chart1 !!}
</div>
{{ Form::close() }}
<br />

@stop