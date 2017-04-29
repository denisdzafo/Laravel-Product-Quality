@extends('main')

@section('title', '|Change User Role')

@section('content')

  <div class="row">
    <h1>User: {{$user->name}}</h1>
    <div class="col-md-8">
      <form class="form-horizontal" action="{{route('users.update', $user->id)}}" method="post">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <input type="hidden" name="_method" value="PUT"/>

        <div class="form-group">
          <label class="col-md-1 control-label">Role</label>
          <div class="col-md-5">
            <select class="form-control" name="roles_id">
              @foreach($roles as $role)
                <option value="{{$role->id}}">{{$role->name}}</option>
              @endforeach
            </select>
          </div>
        </div>

        <div class="col-md-6 col-md-offset-1">

          <button type="submit" class="btn btn-success">Change role</button>

        </div>
      </form>
    </div>


  </div>


@endsection
