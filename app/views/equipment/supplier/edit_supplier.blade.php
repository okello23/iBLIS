@extends("layout")
@section("content")
<div>
    <ol class="breadcrumb">
        <li><a href="{{{URL::route('user.home')}}}">{{trans('messages.home')}}</a></li>
        <li><a href="{{{URL::route('equipmentsupplier.index')}}}">{{trans('messages.supplier-list')}}</a></li>
        <li class="active">{{ Lang::choice('messages.supplier',2) }}</li>
    </ol>

</div>
@if (Session::has('message'))
    <div class="alert alert-info">{{ trans(Session::get('message')) }}</div>
@endif
@if($errors->all())
                <div class="alert alert-danger">
                    {{ HTML::ul($errors->all()) }}
                </div>
@endif


<div class="panel panel-primary">
    <div class="panel-heading ">
        <span class="glyphicon glyphicon-user"></span>
        {{ Lang::choice('messages.supplier',2) }}
    </div>
    <div class="panel-body">

      {{ Form::model($supplier, array('route' => array('equipmentsupplier.update', $supplier->id), 'method' => 'PUT',
                'id' => 'form-supplier-patient')) }}

                            <fieldset> 


                                <div class="form-group">
                                {{ Form::label('supplier_name', 'Name', ['class' => 'col-lg-2 control-label']) }}
                                  <div class="col-lg-7">
                                        {{ Form::text('name',Input::old('name'),['class' => 'form-control','placeholder' => 'Name', 'required' => 'true']) }}

                                        @if ($errors->has('name'))
                                            <span class="text-danger">
                                                <strong>{{ $errors->first('name') }}</strong>
                                            </span>
                                        @endif

                                  </div>
                                </div>

                                <div class="form-group">
                                {{ Form::label('phone', 'Phone', ['class' => 'col-lg-2 control-label']) }}
                                  <div class="col-lg-7">
                                        {{ Form::text('phone',Input::old('phone'),['class' => 'form-control','placeholder' => 'Phone', 'type'=>'number','required' => 'true']) }}

                                        @if ($errors->has('phone'))
                                            <span class="text-danger">
                                                <strong>{{ $errors->first('phone') }}</strong>
                                            </span>
                                        @endif

                                  </div>
                                </div>

                                <div class="form-group">
                                {{ Form::label('email', 'Email', ['class' => 'col-lg-2 control-label']) }}
                                  <div class="col-lg-7">
                                        {{ Form::text('email',Input::old('email'),['class' => 'form-control','placeholder' => 'Email', 'type'=>'email','required' => 'true']) }}

                                        @if ($errors->has('email'))
                                            <span class="text-danger">
                                                <strong>{{ $errors->first('email') }}</strong>
                                            </span>
                                        @endif

                                  </div>
                                </div>

                                <div class="form-group">
                                {{ Form::label('address', 'Address', ['class' => 'col-lg-2 control-label']) }}
                                  <div class="col-lg-7">
                                        {{ Form::textarea('address',Input::old('address'),['rows' => '3','class' => 'form-control','placeholder' => 'Address', 'required' => 'true']) }}

                                        @if ($errors->has('address'))
                                            <span class="text-danger">
                                                <strong>{{ $errors->first('address') }}</strong>
                                            </span>
                                        @endif

                                  </div>
                                </div>
                                    <div class="form-group">
                                      <div class="col-lg-10 col-lg-offset-2">
                                        <a href="{{url('/equipmentsupplier')}}" class="btn btn-default">Cancel</a>
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                      </div>
                                    </div>
                                </div>                                

                            </fieldset>
        
        {{ Form::close() }}

        <?php  
        Session::put('SOURCE_URL', URL::full());?>
    </div>
    
</div>
@stop