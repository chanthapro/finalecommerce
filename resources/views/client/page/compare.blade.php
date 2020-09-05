@extends('client.layout.master')
@section('content')
        <div class="container">
                <div class="row">
                    <h3>Compare phones: <strong>{{$product1->name}}</strong> vs <strong>{{$product2->name}}</strong></h3>
            </div>
            <hr>
            <div class="row">
                <div class="col-md-12">
                    <table class="table table-bordered table-hover ">
                        <thead>
                            <tr>
                                <th style="width: 20%"></th>
                                <th style="width: 40%" >
                                    <p style="text-align: center;">{{$product1->name}}</p>

                                </th>
                                <th style="width: 40%">
                                    <p style="text-align: center;">{{$product2->name}}</p>
                                </th>
                            </tr>
                        </thead>
                        <!--Phần so sanh các điểm nổi bật-->
                        <tbody>
                            <tr>
                                <td></td>
                                <td class="compare-img">
                                    <a href="DienThoaiSanPham.jsp?sanpham=<%=sp.getMaSP()%>" >
                                        <img src="image/products/{{$product1->image}}" width="auto " height="365px;" >
                                    </a>
                                    
                                </td>
                                <td class="compare-img">
                                     <a href="DienThoaiSanPham.jsp?sanpham=<%=sp2.getMaSP()%>"><img src="image/products/{{$product2->image}}" width="auto" height="365px;">
                                     </a>
                                   
                                </td>
                            </tr>
                            <tr>
                                <td>Price</td>
                                <td>
                                    @if($product1->promotion_price>0)
                                        <span class="price-product-old">{{number_format($product1->unit_price)}}đ</span>
                                        <span class="price-product-promotion">{{number_format($product1->promotion_price)}}đ</span>
                                    @else
                                        <span class="price-product">{{number_format($product1->unit_price)}}đ</span>
                                    @endif
                                </td>
                                <td>
                                    @if($product2->promotion_price>0)
                                        <span class="price-product-old">{{number_format($product2->unit_price)}}đ</span>
                                        <span class="price-product-promotion">{{number_format($product2->promotion_price)}}đ</span>
                                    @else
                                        <span class="price-product">{{number_format($product2->unit_price)}}đ</span>
                                    @endif
                                </td>
                            </tr>
                             <tr>
                                <td>Color</td>
                                <td>{{$product1->color}}</td>
                                <td>{{$product2->color}}</td>
                            </tr>
                            <tr>
                                <td>Color</td>
                                <td>{{$manu1}}</td>
                                <td>{{$manu2}}</td>
                            </tr>
                            <tr>
                                <td>Screen</td>
                                <td>
                                    {{$product1->display}}
                                </td>
                                <td>
                                    {{$product2->display}}
                                </td>
                            </tr>
                            <tr>
                                <td>OS</td>
                                <td>
                                    {{$product1->OS}}
                                </td>
                                <td>
                                    {{$product2->OS}}
                                </td>
                            </tr>
                            <tr>
                                <td>Memory</td>
                                <td>
                                    {{$product1->memory}}
                                </td>
                                <td>
                                    {{$product2->memory}}
                                </td>
                            </tr>
                            <tr>
                                <td>RAM</td>
                                <td>
                                    {{$product1->RAM}}
                                </td>
                                <td>
                                    {{$product2->RAM}}
                                </td>
                            </tr>
            
                            <tr>
                                <td></td>
                                <td class="obj-center">
                                   <button type="button" onclick="dathang({{$product1->id}})" class="btn btn-success"><i class="glyphicon glyphicon-shopping-cart"></i>Add in cart </button>
                                </td>
                                <td class="obj-center">
                                    <button type="button" onclick="dathang({{$product2->id}})" class="btn btn-success"><i class="glyphicon glyphicon-shopping-cart"></i>Add in cart </button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
@endsection