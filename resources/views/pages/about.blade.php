@extends('main')
@section('title','| About')

@section('content')
<div class="row">
        <div class="col-md-12">
          <h1>About page</h1>
          <hr>
          <p>This is product quality app where you can find information about products and see their reviews.
            There are four types of users on page:
              <ul>
                <li><strong>Super admin</strong> - He can change permissions of user. Permissions are:Super admin, Product Manager, Rate Manager, User. If you want to log in as super admin email is "admin@gmail.com" and password is "000000". </li>
                <li><strong>Product manager</strong> - He can add new product, edit product and delete product. If you want to log in as product manager email is "product@gmail.com" and password is "000000".</li>
                <li><strong>Rate manager</strong> - He can add new review about product. If you want to log in as rate manager email is "rate@gmail.com" and password is "000000".</li>
                <li><strong>Register user</strong> - He can comment product(this functionality isn't done). You can register new user, feel free to do that.</li>
              </ul>
              <br>
              App is currently under construction, i must done comment section for user, and some Frontend functionality.
              <br>
              P.S. If you want to edit product or delete, first you must log in as a product manager, and then click on button Read more.
          </p>

        </div>
</div>

@endsection
