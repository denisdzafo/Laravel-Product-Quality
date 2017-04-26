@extends('main')

@section('title', '|All users')

@section('content')

<div class="row">
  <div class="col-md-8">
    <h1>All Users</h1>
    <table class="table">
      <thead>
        <tr>
          <th>#</th>
          <th>Name</th>
          <th>Email</th>
          <th>Role</th>
        </tr>
      </thead>

      <tbody>
        @foreach($users as $user)
        @if($user->roles->name!='admin')
          <tr>
            <td>{{$user->id}}</td>
            <td>{{$user->name}}</td>
            <td>{{$user->email}}</td>
            <td>{{$user->roles->name}}</td>
            <td><a href="{{route('users.edit',$user->id)}}" class="btn btn-default btn-sm">Change Role</a></td>
          </tr>
          @endif
        @endforeach
      </tbody>
    </table>
  </div>
</div>




@endsection
