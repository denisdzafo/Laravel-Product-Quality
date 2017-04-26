@extends('main')

@section('title', '|View Product')

@section('content')
  <div class="row">
    <div class="col-md-8">
      <a href="/product/public/" class="glyphicon glyphicon-arrow-left"> Back</a>
      <h1> {{ $product->name }} </h1>
      <h2>{{$product->manufacturer}}</h2>
      <h3>{{$product->serial}}</h3>
      <p class="lead"> {{ $product->description }} </p>

    </div>

  </div>


@endsection
