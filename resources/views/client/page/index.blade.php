@extends('client.layout.master')
@section('content')

<div class="main-content">
    <div class="container" >
        <div class="row">
            <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">

                <!-- Slider -->
                <div class="container" style="margin: 15px 0px;">
                    <div class="col-md-12">
                        <div class="col-md-2">
                            <ul class="list-group" style="margin-left: -45px;border: #103668 1px solid;">
                                <li class="list-group-item " style="font-weight: bold;color:white;background-color: #286090;  border-radius: unset;">Phone</li>
                                <li class="list-group-item sub-item"><a href="http://localhost:8000/getModelPhone/1"> Iphone</a></li>
                                <li class="list-group-item sub-item"><a href="http://localhost:8000/getModelPhone/2">Samsung</a></li>
                                <li class="list-group-item sub-item"><a href="http://localhost:8000/getModelPhone/3">Oppo</a></li>
                                <li class="list-group-item sub-item"><a href="http://localhost:8000/getModelPhone/4">Vivo</a></li>
                                <li class="list-group-item sub-item"><a href="#">LG</a></li>
                                <li class="list-group-item sub-item"><a href="#">Nokai</a></li>
                            </ul>
            
                        </div>

                        <div class="col-md-10">
                            @include('client.page.slider')
                        </div>
                        
                    </div>
                    <hr />
                </div>
                <!-- Slider -->
               

                <!-- New Style -->
                <div class="new_style" style="padding-left: 200px;">
                        <div style="padding-left: 20px;">
                             <ul class="breadcrumb" style="width: 890px; background-color: unset;border-bottom: 1px #286090  solid;border-radius: unset;">
                                <li >
                                    <div class="tab-product">New Hot</div> 
                                </li>
                            </ul>
                        </div>

                    @foreach($products_new as $product)
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
            <!-- <div class="col-md-4 col-lg-4 col-sm-12 col-xs-12">
                        <div class="selloff">
                            <div class="top_right"><h2>Promotions</h2></div>
                            <ul class="right-content">
                                <li class =" right-main">
                                    <a href="ChiTietKhuyenMai.jsp" title="Note7 Exploding the ball on the door">Promotions terrible Price shock month 11/2016</a>
                                </li>
                                <div class="scroll">
                                    <li>
                                        <a href="">Note7 Price 3 million dong</a>
                                    </li>
                                    <li>
                                        <a href="">Promotions first day of school</a>
                                    </li>
                                    <li>
                                        <a href="">Discount Price on products Samsang tháng 10</a>
                                    </li>
                                    <li>
                                        <a href="">Lumia XL Price Discount Price on products</a>
                                    </li>
                                </div>
                            </ul>
                        </div>
                        <div class="news">
                            <div class="top_right"><h2>News</h2></div>
                            <ul class="right-content">
                                <li class =" right-main">
                                    <a href="" title="Note7 Exploding the ball on the door">Note7 Exploding the ball on the door</a>
                                </li>
                                <div class="scroll">
                                    <li>
                                        <a href="ChiTietTinTuc.jsp">Note7 Exploding the ball on the door</a>
                                    </li>
                                    <li>
                                        <a href="">Note7 Exploding the ball on the door</a>
                                    </li>
                                    <li>
                                        <a href="">Note7 Exploding the ball on the door</a>
                                    </li>
                                    <li>
                                        <a href="">Note7 Exploding the ball on the door</a>
                                    </li>
                                </div>
                            </ul>
                        </div>
                    </div> -->
        </div>

        <div class="load-content">
            <center>
            <button class="btn btn-default btn-load">Load For More Content</button>
            </center>
        </div>
            
    </div>
</div>
@endsection
@section('script')

@endsection