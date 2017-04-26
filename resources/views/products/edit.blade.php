@extends('main')

@section('title', '| Edit Product')

@section('content')

  <div class="row">
    {!! Form::model($product, ['route'=>['products.update',$product->id], 'method'=>'Put']) !!}
    <div class="md-col-8">

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
    </div>
        <div class="col-md-4">
          <div class="well">
            <dl class="dl-horizontal">
              <dt>Created at:</dt>
              <dd>{{date('M, j, Y H:i',strtotime($product->created_at)) }}</dd>
            </dl>

            <dl class="dl-horizontal">
              <dt>Last updated:</dt>
              <dd>{{date('M, j, Y H:i',strtotime($product->updated_at)) }}</dd>
            </dl>
            <hr>
            <div class="row">
              <div class="col-sm-6">
                {!! Html::linkRoute('products.show', 'Cancel', array($product->id), array('class'=>'btn btn-danger btn-block')) !!}

              </div>
              <div class="col-sm-6">
                {{Form::submit('Save Changes', ['class'=>'btn btn-success btn-block'])}}

              </div>
            </div>
          </div>
        </div>
        {!!Form::close() !!}

    </div>
@endsection
