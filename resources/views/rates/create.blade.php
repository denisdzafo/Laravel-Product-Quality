@extends('main')

@section('title','| Rate Product')

@section('content')
<div class="row">
      <div class="col-md-10">


          <h1>Rate product</h1>
          <hr>

          <form class="form-horizontal" action="{{route('rates.store')}}" method="post">
              <input type="hidden" name="_token" value="{{csrf_token()}}">

              <div class="form-group">

                <label class="col-md-2 control-label">Product</label>
                <div class="col-md-8">
                  <select class="form-control" name="product_id">
                    @foreach($products as $product)
                      <option value="{{$product->id}}">{{$product->name}}</option>
                    @endforeach
                  </select>
                </div>
              </div>

              <div class="form-group">
                <label class="col-md-2 control-label">Name of rate</label>
                <div class="col-md-8">
                  <input type="text" name="name" class="form-control">
                </div>
              </div>

              <div class="form-group">
                <label class="col-md-2 control-label">Description</label>
                <div class="col-md-8">
                  <input type="textarea" name="description" class="form-control">
                </div>
              </div>

              <div class="form-group">
      							<div class="col-md-3 col-md-offset-2">
      								<button type="submit" class="btn btn-primary">Add Rate</button>
      							</div>
      				</div>

            </form>
          </div>
</div>

@endsection
