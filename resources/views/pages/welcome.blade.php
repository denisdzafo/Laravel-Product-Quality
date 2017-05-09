@extends('main')
@section('title','| Product quality')

    @section('content')
      <div class="row">

                <div class="jumbotron">
                    <h1>Welcome</h1>
                    <p class="lead">Page is currently under construction.</p>
                    <p>In tab About you can find instructions how to use app.</p>
                    <p>All code you can download on <a href="https://github.com/denisdzafo/Laravel-Product-Quality">Github</a></p>
                </div>

        </div>

        <div class="row">
          <div class="col-md-8">

            @foreach($products as $product)
            <div class="product">
              <h1>{{$product->name}}</h1>
              <p>{{$product->description}}</p>
              <a href="{{Route('products.show',$product->id)}}" class="btn btn-primary">Read more</a>
            </div>

            <hr>
            @endforeach
          </div>


        </div>
        <div class="text-center">
          {!!$products->links(); !!}
        </div>

      @endsection
