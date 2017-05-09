@extends('main')

@section('title', "|$product->name")

@section('content')

  <div class="row">
    <div class="col-md-8 col-md-offset-2">
      <h1>Product name: {{$product->name}}</h1>
      <h5><strong>Manufacturer:</strong> {{$product->manufacturer}}</h2>
      <h5><strong>Serial Number:</strong> {{$product->serial}}</h3>
      <h5><strong>Country of Origin:</strong> {{$product->country}}</h5>
      <p><strong>Description:</strong> {{$product->description}}</p>
      <hr>
      @if (Auth::check() && Auth::user()->roles->name=="product_manager")

      <a href="{{route('products.edit',$product->id)}}" class="btn btn-primary btn-sm">Edit</a>
      <form class="form-horizontal" role="form"  method="POST" action="{{route ('products.destroy',$product->id)}}">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <input type="hidden" name="_method" value="DELETE"/>
        <button type="submit" class="btn btn-danger">Delete</button>
      </form>


      @endif
      </div>

  </div>

@endsection
