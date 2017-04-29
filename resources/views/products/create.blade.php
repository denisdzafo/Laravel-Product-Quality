@extends('main')

@section('title','|Create new product')

@section('content')

  <div class="row">
    <div class="col-md-6 col-offset-3">
      <h1>Create new product</h1>
      <hr>
      <form class="form-horizontal" role="form"  method="post" action="{{route ('products.store')}}">
        <input type="hidden" name="_token" value="{{csrf_token()}}">

        <div class="form-group">
          <label class="col-md-4 control-label">Name</label>
          <div class="col-md-6">
            <input type="text" name="name" class="form-control">
          </div>
        </div>

        <div class="form-group">
          <label class="col-md-4 control-label">Manufacturer</label>
          <div class="col-md-6">
            <input type="text" name="manufacturer" class="form-control">
          </div>
        </div>

        <div class="form-group">
          <label class="col-md-4 control-label">Serial</label>
          <div class="col-md-6">
            <input type="text" name="serial" class="form-control">
          </div>
        </div>

        <div class="form-group">
          <label class="col-md-4 control-label">Country</label>
          <div class="col-md-6">
            <input type="text" name="country" class="form-control">
          </div>
        </div>

        <div class="form-group">
          <label class="col-md-4 control-label">Description</label>
          <div class="col-md-6">
            <input type="text" name="description" class="form-control">
          </div>
        </div>

        <div class="form-group">
							<div class="col-md-6 col-md-offset-4">
								<button type="submit" class="btn btn-primary">Add Product</button>

							</div>
						</div>


      </form>

      
    </div>
  </div>

  @endsection
