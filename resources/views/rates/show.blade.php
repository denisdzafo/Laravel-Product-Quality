@extends('main')

@section('title', '|View Rate')

@section('content')
  <div class="row">
    <div class="col-md-8">

      @foreach($rates as $rate)
      <div class="rate">
        <h1>{{$rate->name}}</h1>
        <p>{{$rate->description}}</p>
        <?php
          $pom="";

          foreach ($products as $product) {
            if($rate->product_id==$product->id){
              $pom=$product->name;
              break;
            }
          }
          echo "<p>This is rate for product: <strong>".$pom."</strong>";
         ?>

      </div>

      <hr>
      @endforeach

    </div>


    </div>

  </div>


@endsection
