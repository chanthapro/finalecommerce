@extends('client.layout.master')
@section('content')			
			<div class="container">

                @if(Session::has('mess'))
                <div class="alert alert-info">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <strong>{{Session::get('mess')}}</strong>
                </div>
                @endif
                <div class="col-md-8">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                <i class="glyphicon glyphicon-shopping-cart"></i> <strong>My shopping cart</strong>
                            </h3>
                        </div>
                        <div class="panel-body"> 
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Form</th>
                                            <th>Product</th>
                                            <th>SL</th>
                                            <th>Price</th>
                                            <th>Paid Money</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                   
                                   @foreach($products as $product)
                                        
                                    <tr >
                                        <td>@if ($loop->first)
                                            {{$i=1}}
                                        @else
                                            {{++$i}}
                                        @endif</td>
                                        <td class="cell-center  ">
                                            <a href="#"><img src="image/products/{{$product->options->image}}" style ="max-width: 80px; max-height:60px;" alt="{{$product->image}}" title="{{$product->image}}"></a>
                                        </td>
                                        <td>
                                            <a href="phoneProduct.jsp?product=<%=list.getValue().getProduct().getMaSP()%>">{{$product->name}}</a>
                                        </td>
                                        <td>
                                            <div class="numbercart">
                                                 <input type="number" name="quantity_product" class="form-control" value="{{$product->qty}}" min="0" max="10" step="1">
                                            </div>
                                           
                                        </td>
                                        <td >{{number_format($product->price)}}</td>
                                        <td class="product_subtotal">{{$product->subtotal()}}</td>
                                        <td>
                                            <div class="numberbuttoncart btn-group btn-group-xs price">
                                                <button rowid="{{$product->rowId}}" type="button" class="btn btn-warning btn-update-cart" >Update</button>
                                                <button rowid="{{$product->rowId}}" type="button" class="btn btn-danger btn-delete-cart">Delete</button>
                                            </div>
                                           
                                        </td>
                                    </tr>
                                    @endforeach
                                    
                                    
                                </tbody>
                            </table>
                        </div>
                        <strong style="float: right">Total : $<span id="total_price_cart">{{Cart::subtotal()}}</span></strong>
                    </div>
                </div>
                <div >
                    <a href ="{{route('phone')}}" class="btn btn-primary" style="margin-left:30%"  >Continue buying</a>
                    <button class="btn btn-warning btnPaymentorders" id="btnPaymentorders">Order and pay</button>
                </div>
            </div>

                <div class="col-md-4 PaymentOrders" style="display: none"> 
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                <i class="glyphicon glyphicon-piggy-bank"></i> <strong>Payment orders</strong>
                            </h3>
                        </div>
                        <div class="panel-body"> 
                            <form action="{{route('payment')}}" method="post" id="form-payment">
                                <div class="form-group" name="cart">
                                   
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="name">First and last name(*):</label>
                                    <input  type="text" class="form-control" placeholder="First and last name" name="name" >
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="email">Email(*):</label>
                                    <input  type="text" class="form-control" placeholder="Email" name="email" >
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="address">Address(*):</label>
                                    <input  type="text" class="form-control" placeholder="Address" name="address" >
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="phone">Phone number(*):</label>
                                    <input  type="text" class="form-control" placeholder="Phone number" name="phone"> 
                                </div>
                                {{csrf_field()}}
                                <button onclick="return confirm('Are you sure you want to order?')" type="submit" class ="btn btn-primary" >Confirm</button>
                                <button id="btnTroVeGioHang" class="btn btn-warning" type="button">Return</button>
                            </form>
                        </div>
                    </div>
                </div>

            <!-- panel panel-default -->                
        </div>
@endsection
@section('script')
    <script type="text/javascript">
        $(document).ready(function () {
                $('.btnPaymentOrders').click(function () {
                    $('.PaymentOrders').show();
                });

                $('#btnTroVeGioHang').click(function () {
                    $('.PaymentOrders').hide();
                });
        });

    </script>
@endsection