@extends('main')
@section('title','| Rate Product')

@section('content')
<div class="row">
        <div class="col-md-12">
          <h1>Rate product</h1>
          <hr>
          {!!Form::open(array('route'=>'rates.store') ) !!}
          {{Form::label('product_id','Product')}}
          <select class="form-control" name="product_id">
            @foreach($products as $product)
              <option value="{{$product->id}}">{{$product->name}}</option>
            @endforeach
          </select>

          {{Form::label('name', 'Rate Name')}}
          {{Form::text('name', null, array('class'=>'form-control'))}}

          {{Form::label('description', 'Description')}}
          {{Form::textarea('description', null, array('class'=>'form-control'))}}

          {{Form::submit('Add rate', array('class'=>'btn btn-succes btn-lg btn-block'))}}

          {!!Form::close()!!}
        </div>
</div>

@endsection
