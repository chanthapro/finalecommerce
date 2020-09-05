@extends('client.layout.master')
@section('content')
    <div class="main-content">
        <div class="container">

            <div class="row search-menu">
                <div class="col-md-12">
                    <form action="{{route('postphone')}}" method="POST" class="form-inline" role="form">
                        <div class="form-group">
                            Search by <span class="glyphicon glyphicon-hand-right"></span>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="">label</label>
                            <select name="manufacturer" class="form-control" >
                                <option value="0" selected disabled>-- Select Trademark --</option>
                                <option value="0"
                                        @if(!session('manufacturer'))
                                        selected
                                        @endif
                                >Trademark (all)</option>
                                @foreach($manus as $manu)
                                    @if(session('manufacturer') && session('manufacturer')==$manu->id)
                                        <option value="{{$manu->id}}" selected>{{$manu->name}}</option>
                                    @else
                                        <option value="{{$manu->id}}">{{$manu->name}}</option>
                                    @endif
                                @endforeach

                            </select>
                        </div>
                        <div class="form-group">
                            <select name="price_range" class="form-control">
                                <option value="" selected disabled>-- Choose a price --</option>
                                <option value="0"
                                        @if(!session('price_range'))
                                        selected
                                        @endif>Price (all)</option>
                                <option value="1"
                                        @if(session('price_range') && session('price_range')==1)
                                        selected
                                        @endif>Below 5 million</option>
                                <option value="2"
                                        @if(session('price_range') && session('price_range')==2)
                                        selected
                                        @endif>From 5-10 million</option>
                                <option value="3"
                                        @if(session('price_range') && session('price_range')==3)
                                        selected
                                        @endif>From 10-15 million</option>
                                <option value="4"
                                        @if(session('price_range') && session('price_range')==4)
                                        selected
                                        @endif>On 15 million</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <select name="order" class="form-control">
                                <option selected disabled>-- Sort --</option>
                                <option value="0"
                                        @if(Session::has('order') && session('order')==0)
                                        selected
                                        @endif>Price (From low to high)</option>
                                <option value="1"
                                        @if(session('order') && session('order')==1)
                                        selected
                                        @endif>Price (From high to low)</option>
                            </select>
                        </div>
                        <div class="form-group">

                            <input type="text"  class="form-control" placeholder="Search for Keywords" name="keyword" id="keyword"
                                   @if(session('keyword'))
                                   value="{{session('keyword')}}"
                                    @endif
                            >
                        </div>
                        {{csrf_field()}}

                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
            <div class="row search-result">
                Find <strong>{{count($products)}}</strong> product
            </div>

        {{-- content old --}}
        {{-- <div class="row">
            <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12 sp_phone" >
                <ul class="products homepage">

                    @foreach($products as $product)
                            <li>
                                @if($product->new == 1)
                                <div class="product_new badge" ><p>New</p></div>
                                @endif
                                @if($product->hot == 1)
                                <div class="product_hot badge" ><p>Hot</p></div>
                                @endif
                                <a href="{{route('phoneProduct',$product->id)}}">
                                    <img  src="image/products/{{$product->image}}"  alt ="{{$product->image}}"/>
                                    <h3>{{$product->name}}</h3>
                                    <h4>
                                        <span class="price-product">Price:</span>
                                        @if($product->promotion_price<=0)
                                        <span class="price-product">{{number_format($product->unit_price)}}đ</span>
                                        @else
                                         <span class="price-product-old">{{number_format($product->unit_price)}}đ</span>

                                        <span class="price-product-promotion">{{number_format($product->promotion_price)}}đ</span>
                                        @endif
                                    </h4>
                                    <!--<span class="textkm">Khuyến mãi trị gía đến <strong>500.000₫</strong>-->
                                    <!--</span>-->
                                    <p class="info">
                                        <span>Screen: {{$product->display}}'</span>
                                        <span>OS: {{$product->OS}}</span>
                                        <span>Memory: {{$product->memory}}</span>
                                        <span>Color: {{$product->color}}</span>
                                    </p>
                                </a>
                                 <div class="btn-group btn-group-xs alignright">
                                    <button type="button" onclick="addCompare({{$product->id}})" class="btn btn-primary ">Compare</button>
                                    <button type="button" onclick="dathang({{$product->id}})" class="btn btn-success ">Order</button>
                                </div>
                            </li>
                    @endforeach
                </ul>
            </div>
        </div> --}}
        {{-- content old --}}

        <!-- New Style -->
            <div class="new_style">
                <hr />
                @foreach($products as $product)
                    <div class="gallery">
                        <a target="" href="{{route('phoneProduct',$product->id)}}" style="text-decoration: none;">
                            <img src="image/products/{{$product->image}}" alt="Cinque Terre" width="600" height="400">
                        </a>
                        <div class="btn-group btn-group-xs alignright">
                            <button type="button" onclick="addCompare({{$product->id}})" class="btn btn-primary ">Compare</button>
                            <button type="button" onclick="dathang({{$product->id}})" class="btn btn-success ">Order</button>
                        </div>
                        <a target="" href="{{route('phoneProduct',$product->id)}}" style="text-decoration: none;">
                            <div class="desc">
                                <h4>{{$product->name}}</h4>
                                <p><span class="text-dark">Price: </span> {{$product->unit_price}} $</p>

                            </div>
                        </a>
                    </div>
                @endforeach

            </div>
            <!-- New Style -->

        </div>
    </div>
@endsection