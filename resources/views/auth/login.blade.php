@extends('main')

@section('title', '|Login')

@section('content')

  <div class="row">
    <div class="col-md-6 col-md-offset-3">
      {!! Form::open() !!}

      {{Form::label('email', 'Email:')}}
      {{FOrm::email('email',null,['class'=>'form-control'])}}

      {{Form::label('password', 'Password:')}}
      {{FOrm::password('password',['class'=>'form-control'])}}
      <br>
      {{Form::checkbox('remember')}} {{Form::label('remember', 'Remember me')}}
      <br>
      {{Form::submit('Login',['class'=>'btn btn-primary btn-block'])}}

      {!! Form::close() !!}
    </div>
  </div>


  @endsection
