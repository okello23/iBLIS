@extends("layout")
@section("content")
<div>
	<ol class="breadcrumb">
	  <li><a href="{{{URL::route('user.home')}}}">{{trans('messages.home')}}</a></li>

	  <li class="active">Equipment, Logistics and Supplies</li>
	</ol>
</div>

<div class="sub_panel" style="left: -220px;">
						<div class="side_inner ps-ready ps-container" style="height: 620px;">
							<h4 class="panel_heading panel_heading_first">Inventory</h4>
							<ul>
								<li>
									<a href="{{ URL::route("stockcard.index")}}">
									<span class="glyphicon glyphicon-tag"></span> {{trans('messages.stock-card')}}</a>
								</li>
							<li>
								<a href="{{ URL::route("stockrequisition.index")}}">
								<span class="glyphicon glyphicon-tag"></span> Stockbook</a>
							</li>
							<li>
								<a href="{{ URL::route("commodity.index")}}">
								<span class="glyphicon glyphicon-tag"></span> {{trans('messages.commodities')}}</a>
							</li>
							<li>
								<a href="{{ URL::route("supplier.index")}}">
								<span class="glyphicon glyphicon-tag"></span> {{Lang::choice('messages.suppliers',2)}}</a>
							</li>
							<li>
								<a href="{{ URL::route("metric.index")}}">
								<span class="glyphicon glyphicon-tag"></span> {{trans('messages.metrics')}}</a>
							</li>
							</ul>
							<h4 class="panel_heading">Equipment</h4>
							<ul>
								<li><a href="{{ URL::route("equipmentinventory.index")}}"><span class="glyphicon glyphicon-tag"></span> Inventory</a></li>
								<li><a href="{{ URL::route("equipmentmaintenance.index")}}"><span class="glyphicon glyphicon-tag"></span> Maintenance log</a></li>
								<li><a href="{{ URL::route("equipmentbreakdown.index")}}"><span class="glyphicon glyphicon-tag"></span> Breakdown</a></li>
								<li><a href="{{ URL::route("equipmentsupplier.index")}}"><span class="glyphicon glyphicon-tag"></span> Supplier</a></li>
							</ul>
						<div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 3px; width: 215px; display: none;"><div class="ps-scrollbar-x" style="left: 0px; width: 0px;"></div></div><div class="ps-scrollbar-y-rail" style="top: 0px; right: 3px; height: 620px; display: none;"><div class="ps-scrollbar-y" style="top: 0px; height: 0px;"></div></div></div>
					</div>




****************************************************


<div class="panel panel-primary row" >

<div class="panel-body row">
	<div class="btn-group container col-md-3">

		<a class="link-tip" href="{{ URL::route('datalogger.index')}}" data-toggle="tooltip" data-placement="bottom" title="Click to view key performance indicators for laboratory performance">
			<div class="panel panel-default">
			<span class="ion-ios-paper" style="font-size:80px"></span> <br><span class="nav_title">STOCK CARD</span>
			</div>
		</a>
	</div>
	<div class="btn-group container col-xs-3">
		<a class="link-tip" href="{{ URL::route('unhls_patient.index')}}" data-toggle="tooltip" data-placement="bottom" title="Click to view and  manage patient bio-data">
			<div class="panel panel-default">
			<span class="ion-person-stalker" style="font-size:80px"></span> <br><span class="nav_title">STOCK BOOK</span>
			</div>
		</a>
	</div>
	<div class="btn-group container col-xs-3">
		<a class="link-tip" href="{{ URL::route('commodity.index')}}" data-toggle="tooltip" data-placement="bottom" title="Click to mange stock of laboratory supplies and to update equipment information">
			<div class="panel panel-default">
			<span class="ion-ios-cart" style="font-size:80px"></span> <br><span class="nav_title">COMMODITY MANAGEMENT</span>
			</div>
		</a>
	</div>
	<div class="btn-group container col-xs-3">
		<a class="link-tip" href="{{URL::route('poc.index')}}" data-toggle="tooltip" data-placement="bottom" title="Click to access other resources e.g links to Viral load and EID Dashboard, CPHL websites">
			<div class="panel panel-default">
			<span class="ion-icon ion-ios-folder"></span> <br><span class="nav_title">SUPPLIERS</span>
			</div>
		</a>
	</div>
</div>


<div class="panel-body row">
	<div class="btn-group container  col-xs-3">
		<a href="{{ URL::route('reports.index')}}" data-toggle="tooltip" data-placement="bottom" title="Click to view periodic reports and special reports">
			<div class="panel panel-default">
			<span class="ion-icon ion-stats-bars"></span> <br><span class="nav_title">METRICS</span>
			</div>
		</a>
	</div>

		<div class="btn-group container col-xs-3">
		<a href="{{ URL::route('unhls_test.index')}}" data-toggle="tooltip" data-placement="bottom" title="Click to request for a lab test or to view the list and status of test requests">
			<div class=" panel panel-default">
			<span class="ion-erlenmeyer-flask" style="font-size:80px"></span> <br><span class="nav_title">TESTS</span>
			</div>
		</a>
	</div>

	<div class="btn-group container col-xs-3">
		<a href="{{ URL::route('bbincidence.index')}}" data-toggle="tooltip" data-placement="bottom" title="Click to view and record biosafety and biosecurity incidents">
			<div class="panel panel-default">
			<span class="ion-icon ion-nuclear"></span> <br><span class="nav_title">BIOSAFETY & BIOSECURITY</span>
			</div>
		</a>
	</div>
	<div class="btn-group container col-xs-3">
		<a href="{{ URL::route('user.index')}}" data-toggle="tooltip" data-placement="bottom" title="Click to manage user accounts and other Lab Configurations e.g creating Lab sections and new test type">
			<div class="panel panel-default">
			<span class="ion-icon ion-key"></span> <br><span class="nav_title">ACCESS CONTROL</span>
			</div>
		</a>
	</div>
</div>

@stop
