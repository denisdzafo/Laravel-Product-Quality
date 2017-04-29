@extends('main')

@section('title', "|$product->name")

@section('content')

  <div class="row">
    <div class="col-md-8 col-md-offset-2">
      <h1>Product name: {{$product->name}}</h1>
      <h2>Manufacturer: {{$product->manufacturer}}</h2>
      <h3>Serial Number: {{$product->serial}}</h3>
      <h5>Country of Origin: {{$product->country}}</h5>
      <p>Description: {{$product->description}}</p>
      <hr>
      @if (Auth::check() && Auth::user()->roles->name=="product_manager")

      <a href="{{route('products.edit',$product->id)}}" class="btn btn-primary btn-sm">Edit</a>

      <a href="{{route('products.destroy', $product->id)}}" class="btn btn-danger btn-sm">Delete</a>

      @endif
      </div>

  </div>

@endsection
