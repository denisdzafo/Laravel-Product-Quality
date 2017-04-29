@extends('main')

@section('title', '| Edit Product')

@section('content')

  <div class="row">

    <div class="col-md-8">

      <form class="form-horizontal" role="form"  method="post" action="{{route ('products.update',$product->id)}}">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <input type="hidden" name="_method" value="PUT"/>

        <div class="form-group">
          <label class="col-md-4 control-label">Name</label>
          <div class="col-md-6">
            <input type="text" name="name" class="form-control" value= "<?php echo htmlspecialchars($product->name); ?>" >
          </div>
        </div>

        <div class="form-group">
          <label class="col-md-4 control-label">Manufacturer</label>
          <div class="col-md-6">
            <input type="text" name="manufacturer" class="form-control" value= "<?php echo htmlspecialchars($product->name); ?>">
          </div>
        </div>

        <div class="form-group">
          <label class="col-md-4 control-label">Serial</label>
          <div class="col-md-6">
            <input type="text" name="serial" class="form-control" value= "<?php echo htmlspecialchars($product->serial); ?>">
          </div>
        </div>

        <div class="form-group">
          <label class="col-md-4 control-label">Country</label>
          <div class="col-md-6">
            <input type="text" name="country" class="form-control" value= "<?php echo htmlspecialchars($product->country); ?>">
          </div>
        </div>

        <div class="form-group">
          <label class="col-md-4 control-label">Description</label>
          <div class="col-md-6">
            <input type="text" name="description" class="form-control" value= "<?php echo htmlspecialchars($product->description); ?>">
          </div>
        </div>




    </div>
        <div class="col-md-4">
          <div class="well">
            <dl class="dl-horizontal">
              <dt>Created at:</dt>
              <dd>{{date('M, j, Y H:i',strtotime($product->created_at)) }}</dd>
            </dl>

            <dl class="dl-horizontal">
              <dt>Last updated:</dt>
              <dd>{{date('M, j, Y H:i',strtotime($product->updated_at)) }}</dd>
            </dl>
            <hr>
            <div class="row">
              <div class="col-sm-6">

                <a href="{{route('index')}}" class="btn btn-danger "> Back</a>

              </div>
              <div class="col-sm-6">

                <button type="submit" class="btn btn-primary">Edit Product</button>

              </div>
            </div>
          </div>
        </div>
        </form>

    </div>
@endsection
