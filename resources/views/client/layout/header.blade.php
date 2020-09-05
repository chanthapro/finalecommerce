<style>
    .dropbtn {
        background-color: #4CAF50;
        color: white;
        padding: 16px;
        font-size: 16px;
        border: none;
        cursor: pointer;
    }

    .dropdown {
        position: relative;
        display: inline-block;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
    }

    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }

    .dropdown-content a:hover {background-color: #f1f1f1}

    .dropdown:hover .dropdown-content {
        display: block;
    }

    .dropdown:hover .dropbtn {
        background-color: #3e8e41;
    }
</style>

<header class="head-top">
            <nav class="navbar navbar-default " role="navigation">
                <div class="container">
                    <div class="nav navbar-nav col-lg-2 col-xs-6 col-md-2 col-sm-4 " style="margin-top: 20px;">
                        <a href="{{route('index')}}"><img src="images/so9_LOGO.png" class = "logo img-responsive" alt=""></a>
                    </div>
                    <div class="col-lg-5 col-xs-12 col-md-3 col-sm-8" style="padding-left: 110px;margin-top: 15px;">
                        <form class="navbar-form" role="search">
                            <div class="input-group" id="TimKiem">
                                <input type="text"  class = "form-control" placeholder="Search Phone">	
                                <div class="input-group-btn">
                                    <button type="submit" class = "btn btn-default"><i class=" glyphicon glyphicon-search"></i></button>
                                </div>				
                            </div>
                        </form>
                    </div>
                    <div class="col-lg-5 ol-xs-12 col-md-7 col-sm-12" style="margin-top: 15px;">
                        <div class="row">
                            <ul class = "nav navbar-nav col-lg-9 col-xs-12 col-md-9 col-sm-10 hoverthanhnav">
                                {{-- <li ><a  href="{{route('phone')}}" title="Phone">
                                        <i class="glyphicon glyphicon-phone"></i> Phone </a></li> --}}
{{-- <!--                                 <li><a href="KhuyenMai.jsp" title="Promotion">
                                        <i class="glyphicon glyphicon-gift"></i> Promotion</a></li>
                                <li><a href="TinTuc.jsp" title="News"><i class= "glyphicon glyphicon-signal"></i> News</a></li> --> --}}
                                <!--Cart-->
                                <li>
{{-- Error --}} 
                                    {{-- <a href="{{route('cart')}}" title="News"><i class= "glyphicon glyphicon-shopping-cart"></i> Cart <span class="badge" id="total_quantity_cart" style="color:#F9F9F9;background: #c7254e;">{{Cart::count()}}</span></a> --}}
                                    <a href="{{route('cart')}}" title="News"><i class= "glyphicon glyphicon-shopping-cart"></i> Cart <span class="badge" id="total_quantity_cart" style="color:#F9F9F9;background: #c7254e;"></span></a>
                                </li>
                                <!--Cart-->
                            </ul>
                            <div class="nav navbar-nav col-lg-3 col-xs-12 col-md-3 col-sm-2">
                                
                                <ul class="nav navbar-nav navbar-right">
                                    <li class="navbar-right dropdown">
                                        @if(Auth::check())
                                        <a href = "" class="navbar-right dropdown-toggle" data-toggle="dropdown"><span>Hello: {{Auth::user()->name}}</span> <span class="caret"></span></a>
                                        <ul class = "dropdown-menu">
                                            <li><a href="{{route('getadminindex')}}">Management page</a></li>
                                            <li><a href="{{route('getlogout')}}">Log out</a></li>
                                        </ul>
                                        @else
                                        <a href="{{route('login')}}" ><i class="glyphicon glyphicon-log-in"></i> Log in </a>
                                        @endif        
                                    </li>                  
                                </ul>
                                                     
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="col-md">
                        <div class="topnav">
                            <a href="{{route('phone')}}">Products</a>
                            <a href="#news">
                                Category
                            </a>
                            <a href="#contact">Promotion</a>
                            <a href="#about">New</a>
                            <a href="#about">About US</a>
                        </div>
                     </div>    
                </div>
            </nav><!-- /Part menu -->
    
        </header>
         
        <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="#">Product</a></li>
            <li><a href="#">Hot New</a></li>
          </ul>
        </div>
        @if(Session::has('popcomp'))
                <div class="col-md-4 compare-info">
                     <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <tbody>
                                        <tr>
                                            @if(Session::has('popcomp1'))
                                            <td><img src="image/products/{{Session::get('popcomp1')->image}}" alt="{{Session::get('popcomp1')->image}}"></td>
                                            <td>{{Session::get('popcomp1')->name}}</td>
                                            <td><button type="button" class="btn btn-danger btn-xs" onclick="removeCompare(0)">Remove</button></td>
                                            @else
                                            <td>Form</td>
                                            <td>Name</td>
                                            <td>Remove</td>
                                            @endif
                                        </tr>
                                        <tr>
                                            @if(Session::has('popcomp2'))
                                            <td><img src="image/products/{{Session::get('popcomp2')->image}}" alt="{{Session::get('popcomp2')->image}}"></td>
                                            <td>{{Session::get('popcomp2')->name}}</td>
                                            <td><button type="button" class="btn btn-danger btn-xs" onclick="removeCompare(1)">Remove</button></td>
                                            @else
                                            <td>Form</td>
                                            <td>Name</td>
                                            <td>Remove</td>
                                            @endif
                                        </tr>
                                        <tr>
                                            @if(Session::has('popcomp1')&&Session::has('popcomp2'))
                                           <td colspan="3" style="text-align: center;">
                                            <a href="{{route('compare',[Session::get('popcomp1')->id,Session::get('popcomp2')->id])}}" class="btn btn-primary">Compare</a>
                                           </td>
                                           @endif
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
        @endif
       