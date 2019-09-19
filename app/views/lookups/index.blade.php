@extends("layout")
@section("content")
<div>
    <ol class="breadcrumb">
      <li><a href="{{{URL::route('user.home')}}}">{{trans('messages.home')}}</a></li>
      <li class="active">{{ Lang::choice('messages.role', 2) }}</li>
    </ol>
</div>
@if (Session::has('message'))
    <div class="alert alert-info">{{ Session::get('message') }}</div>
@endif
<div class="panel panel-primary">
    <div class="panel-heading ">
        <span class="glyphicon glyphicon-user"></span>
        {{ $page_title }}
        <div class="panel-btn">
            <a class="btn btn-sm btn-info" href="{{ URL::to("lookups/create/")}}?lookup_id={{$lookup_id}}" >
                <span class="glyphicon glyphicon-plus-sign"></span>
                {{$label_new}}
            </a>
        </div>
    </div>
    <div class="panel-body">
        <table class="table table-striped table-hover table-condensed">
            <thead>
                <tr>
                    <th>Name</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
            @forelse($lookups as $lookup)
                <tr>
                    <td>{{ $lookup->value_description }}</td>
                    <td>
                        <a class="btn btn-sm btn-info" 
                            href="{{ URL::to("lookups/create/")}}?lookup_id={{$lookup_id}}&id={{$lookup->id}}" >
                            <span class="glyphicon glyphicon-edit"></span>
                            {{ trans('messages.edit') }}
                        </a>
                        
                        <button class="btn btn-sm btn-danger delete-item-link" 
                            data-toggle="modal" data-target=".confirm-delete-modal" 
                            data-id='{{ URL::to("lookups/deactivate/")}}?lookup_id={{$lookup_id}}&id={{$lookup->id}}'>
                            <span class="glyphicon glyphicon-trash"></span>
                            {{ trans('messages.delete') }}
                        </button>
                    </td>
                </tr>
            @empty
                <tr><td colspan="2">No records</td></tr>
            @endforelse
            </tbody>
        </table>
        <?php echo Session::put('SOURCE_URL', URL::full());?>
    </div>
</div>
@stop