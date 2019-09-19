@extends("layout")
@section("content")
<div>
    <ol class="breadcrumb">
      <li><a href="{{{URL::route('user.home')}}}">{{trans('messages.home')}}</a></li>
      <li>
        <a href="{{ URL::route('lookups.index') }}">{{ $page_title}}</a>
      </li>
      <li class="active">{{$label_new}}</li>
    </ol>
</div>
<div class="panel panel-primary">
    <div class="panel-heading ">
        <span class="glyphicon glyphicon-user"></span>
        {{$label_new}}
    </div>
    <div class="panel-body">
    <!-- if there are creation errors, they will show here -->
        @if($errors->all())
            <div class="alert alert-danger">
                {{ HTML::ul($errors->all()) }}
            </div>
        @endif

        {{ Form::open(array('url' => 'lookups', 'id' => 'form-create-lookup')) }}

            <div class="form-group">
                {{ Form::label('name', Lang::choice('messages.name',1)) }}
                @if($id)
                    {{ Form::text('value_description', $lookup_value->value_description, array('class' => 'form-control')) }}
                @else
                    {{ Form::text('value_description', Input::old('value_description'), array('class' => 'form-control')) }}
                @endif
                {{Form::hidden('look_up_id', $lookup_id) }}
                {{Form::hidden('id', $id) }}
            </div>
            
            <div class="form-group actions-row">
                    {{ Form::button("<span class='glyphicon glyphicon-save'></span> ".trans('messages.save'), 
                        array('class' => 'btn btn-primary', 'onclick' => 'submit()')) }}
            </div>
        {{ Form::close() }}
    </div>
</div>
@stop