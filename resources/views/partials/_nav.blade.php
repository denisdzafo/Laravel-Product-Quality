<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand">Product page</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="{{Request::is('/') ? "active":"" }}"><a href="{{route('index')}}">Product</a></li>
        <li class="{{Request::is('rates') ? "active":"" }}"><a href="{{route('rates.index')}}">View rates</a></li>

        <li class="{{Request::is('about') ? "active":"" }}"><a href="{{route('about')}}">About</a></li>
        <li class="{{Request::is('contact') ? "active":"" }}"><a href="{{route('contact')}}">Contact</a></li>
        @if (Auth::check() && Auth::user()->roles->name=="product_manager")
          <li class="{{Request::is('products') ? "active":"" }}"><a href="{{route('products.create')}} ">Create New Product</a></li>
        @endif
        @if (Auth::check() && Auth::user()->roles->name=="rate_manager")
        <li ><a href="{{route('rates.create')}}">Rate product</a></li>

        @endif
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        @if (Auth::check())
        <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hello {{Auth::user()->name}} <span class="caret"></span></a>
                      <ul class="dropdown-menu">
                        @if (Auth::check() && Auth::user()->roles->name=="admin")
                        <li><a href="{{route('users.index')}}">All Users</a></li>
                        @endif
                        <li role="separator" class="divider"></li>
                        <li><a href="{{route('logout')}}">Logout</a></li>
                      </ul>
          </li>
          @else
            <li><a href="{{route('login')}}">Login</a></li>
            <li><a href="{{route('register')}}">Register</a></li>
          @endif

      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
