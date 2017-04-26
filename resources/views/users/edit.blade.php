@extends('main')

@section('title', '|Change User Role')

@section('content')
<h1>User: {{$user->name}}</h1>
  <div class="row">
    {!! Form::model($user, ['route'=>['users.update',$user->id], 'method'=>'Put']) !!}

    <div class="col-md-4">
      {{Form::label('roles_id', 'Role:')}}
      {{Form::select('roles_id',$roles,null,['class'=>'form-control'])}}
      {{Form::submit('Save Changes', ['class'=>'btn btn-success btn-block', 'style'=>'margin-top:15px;'])}}
    </div>
    <div class="col-sm-6">


    </div>
    {!!Form::close() !!}
  </div>


@endsection
