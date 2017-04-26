@extends('main')

@section('title','|Create new product')

@section('content')

  <div class="row">
    <div class="col-md-6 col-offset-3">
      <h1>Create new product</h1>
      <hr>
      {!!Form::open(array('route'=>'products.store')) !!}
        {{Form::label('name','Name:') }}
        {{Form::text('name', null, array('class'=>'form-control')) }}

        {{Form::label('manufacturer','Manufacturer:') }}
        {{Form::text('manufacturer', null, array('class'=>'form-control')) }}

        {{Form::label('serial','Serial:') }}
        {{Form::text('serial', null, array('class'=>'form-control')) }}

        {{Form::label('country','Country:') }}
        {{Form::text('country', null, array('class'=>'form-control')) }}

        {{Form::label('description','Decription:') }}
        {{Form::textarea('description', null, array('class'=>'form-control')) }}

        {{Form::submit('Create Product', array('class'=>'btn btn-success btn-lg btn-block')) }}
        <hr>
      {!!Form::close() !!}
    </div>
  </div>

  @endsection
