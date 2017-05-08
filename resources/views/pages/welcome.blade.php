@extends('main')
@section('title','| Product quality')

    @section('content')
      <div class="row">
            <div class="jumotron">
                <div class="jumbotron">
                    <h1>Dobro dosli</h1>
                    <p class="lead">Hvala vam sto ste posjetili</p>
                    <p><a class="btn btn-primary btn-lg" href="#" role="button">Popularni post</a></p>
                </div>
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

      @endsection
