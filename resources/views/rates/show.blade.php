@extends('main')

@section('title', '|View Rate')

@section('content')
  <div class="row">
    <div class="col-md-8">

      @foreach($rates as $rate)
      <div class="rate">
        <h1>{{$rate->name}}</h1>
        <p>{{$rate->product_id}}</p>
      </div>

      <hr>
      @endforeach

            @foreach($products as $product)
            <div class="rate">
              <h1>{{$product->name}}</h1>

            </div>

            <hr>
            @endforeach
    </div>


    </div>

  </div>


@endsection
