@extends('client.layout.master')		
@section('content')
		<div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="detail-img">
                        <img src="image/products/{{$product->image}}" alt="{{$product->image}}">
                    </div>
                </div>
                <div class="col-md-8">
                    <H2><strong>{{$product->name}}</strong></H2>
                    <h4>
                        <span>Color: {{$product->color}}</span>
                        <span class="color-item" data-toggle="tooltip" data-original-title="+0 vnđ" style="background-color: #000000" title="{{$product->color}}"></span>
                        <span style="margin-left:20px"></span>
                       
                    </h4>
                    <h4>
                        <span>Status:</span> 
                        <span>
                            @if($product->quantity>0)
                                Stocking
                            @else
                                Out of stock
                            @endif
                        </span>
                    </h4>
                    @if(count($others)>0)
                    <h4>
                        <span>Other products:</span>
                        @foreach($others as $other)
                        <span><a href="{{route('phoneProduct',$other->id)}}">{{$other->name}}-{{$other->color}}</a></span>  
                        @endforeach
                    </h4>
                    @endif
                    @if($product->promotion_price>0)
                    <h3>
                        Promotion price:
                        <span>${{number_format($product->promotion_price)}}</span>
                    </h3>
                    <h3>
                        Old price: <span style="text-decoration: line-through;">${{number_format($product->unit_price)}}</span>
                    </h3>
                   @else
                    <h3>
                        Price:
                        <span>{{number_format($product->unit_price)}} đ</span>
                    </h3>
                    @endif
                    <a href="{{route('pageaddtocart',$product->id)}}" class ="btn btn-success">Add in my bag <i class= "glyphicon glyphicon-shopBatteryg-cart"></i></a>
                    <a href ="{{route('popcompare',$product->id)}}" class="btn btn-sm btn-default">Compare with</a>
                    <h3>
                        <a href ="{{route('cart')}}" class ="btn btn-info"><i class= "glyphicon glyphicon-shopBatteryg-cart"></i> View cart </a>
                    </h3>
                    
                </div>

            </div>
        <!-- row -->
        <hr>
        <div class="row">
            <div class="col-md-8">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        Technical specifications
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-bordered ">
                                <tr>
                                    <th class="tieude_cauhinh">Screen</th>
                                </tr>
                                <tr>
                                    <th>Screen technology</th>
                                    <td><%=mh.getTechnology()%></td>
                                </tr>
                                <tr>
                                    <th>Resolution</th>
                                    <td><%=mh.getResolution()%></td>
                                </tr>
                                <tr>
                                    <th>Widescreen</th>
                                    <td><%=mh.getWidescreen()%></td>
                                </tr>
                                <tr>
                                    <th>Touch</th>
                                    <td><%=mh.getTouch()%></td>
                                </tr>
                                <tr>
                                    <th>Touch Screen Glass</th>
                                    <td><%=mh.getTouchScreenGlass()%></td>
                                </tr>
                                <tr>
                                    <th class="tieude_cauhinh">Rear camera</th>
                                </tr>
                                <tr>
                                    <th>Resolution</th>
                                    <td><%=DeepPlug.getResolution()%></td>
                                </tr>
                                <tr>
                                    <th>Video</th>
                                    <td><%=DeepPlug.getVideo()%></td>
                                </tr>
                                <tr>
                                    <th>FlashLight</th>
                                    <td><%=DeepPlug.getFlashLight()%></td>
                                </tr>
                                <tr>
                                    <th>Advanced photography</th>
                                    <td><%=DeepPlug.getAdvancedPhotography()%></td>
                                </tr>
                                <tr>
                                    <th class="tieude_cauhinh">Front camera</th>
                                </tr>
                                <tr>
                                    <th>Resolution</th>
                                    <td><%=Before.getResolution()%></td>
                                </tr>
                                <tr>
                                    <th>Video</th>
                                    <td><%=Before.getVideo()%></td>
                                </tr>
                                <tr>
                                    <th>Videocall</th>
                                    <td><%=Before.getVideoCall()%></td>
                                </tr>
                                <tr>
                                    <th>Other information</th>
                                    <td><%=Before.getOtherInformation()%></td>
                                </tr>
                                <tr>
                                    <th class="tieude_cauhinh">CPU</th>
                                </tr>
                                <tr>
                                    <th>Operating system</th>
                                    <td><%=cpu.getOS()%></td>
                                </tr>
                                <tr>
                                    <th>Chipset</th>
                                    <td><%=cpu.getChipSet()%></td>
                                </tr>
                                <tr>
                                    <th>CPU speed</th>
                                    <td><%=cpu.getCPU()%></td>
                                </tr>
                                <tr>
                                    <th>Graphics chip (GPU)</th>
                                    <td><%=cpu.getGPU()%></td>
                                </tr>
                                <tr>
                                    <th class="tieude_cauhinh">Memory</th>
                                </tr>
                                <tr>
                                    <th>RAM</th>
                                    <td><%=bn.getRAM()%></td>
                                </tr>
                                <tr>
                                    <th>ROM</th>
                                    <td><%=bn.getROM()%></td>
                                </tr>
                                <tr>
                                    <th>Memory remaining (available)</th>
                                    <td><%=bn.getAvailableMemory()%></td>
                                </tr>
                                <tr>
                                    <th>External memory card</th>
                                    <td><%=bn.getExternalMemoryCard()%></td>
                                </tr>
                                <tr>
                                    <th>Hỗ trợ thẻ tối đa</th>
                                    <td><%=bn.getHoTroTheToiDa()%></td>
                                </tr>
                                <tr>
                                    <th class="tieude_cauhinh">Design</th>
                                </tr>
                                <tr>
                                    <th>Material</th>
                                    <td><%=tk.getMaterial()%></td>
                                </tr>
                                <tr>
                                    <th>Size</th>
                                    <td><%=tk.getSize()%></td>
                                </tr>
                                <tr>
                                    <th>Size</th>
                                    <td><%=tk.getSize()%></td>
                                </tr>
                                <tr>
                                    <th class="tieude_cauhinh">Battery</th>
                                </tr>
                                <tr>
                                    <th>Battery capacity</th>
                                    <td><%=Battery.getBatteryCapacity()%></td>
                                </tr>
                                <tr>
                                    <th>Battery Type</th>
                                    <td><%=Battery.getBatteryType()%></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        Maybe you want to buy
                    </div>
                    <div class="panel-body">
                        <ul>
                            <%for(Product sp2: spDAO.getListBestSellingProduct(5)){ %>
                            <li><a href="phoneProduct.jsp?product=<%=sp2.getMaSP()%>"><%=sp2.getTenSP()%></a></li>
                                <% } %>
                        </ul>
                    </div>
                </div>
            </div>
        </div> 

        <!--row-->
        <!--        <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                Comments / Feedback 
                            </div>
                            <div class="panel panel-body panelBinhLuan">
                                <form class ="form-horizontal">
                                    <div class = "form-group">
                                        <label class = "col-sm-2 control-label">Họ tên: </label>
                                        <div class="col-sm-10">
                                            <input class = "form-control"  placeholder="Nhập họ tên" type="text" >
                                        </div>
                                    </div>
                                    <div class = "form-group">
                                        <label class = "col-sm-2 control-label">Email: </label>
                                        <div class="col-sm-10">
                                            <input class = "form-control"  placeholder="Nhập Email" type="email" >
                                        </div>
                                    </div>
                                    <div class = "form-group">
                                        <label class = "col-sm-2 control-label">Ý kiến: </label>
                                        <div class="col-sm-10">
                                            <textarea class="form-control" placeholder="Nhập ý kiến của bạn" rows="3"></textarea>
                                        </div>
                                    </div>
                                    <input class="btn btn-danger" value="Gửi Comment" style="margin-left: 40%">
                                    <hr>
                                    <ul class="listComment" style="padding-top: 15px;">
                                        <li class="comment">
                                            <div class="usercomment"><strong>Trương Thanh Quang</strong></div>
                                            <div class="ndcomment">Galaxy J7 Prime Price còn 3 triệu đúng không ạ?</div>
                                            <div class="thoigiancomment">16/11/2016 17:48:00</div>
                                        </li>
                                        <li class="comment">
                                            <div class="usercomment"><strong>Trương Thanh Quang</strong></div>
                                            <div class="ndcomment">Galaxy J7 Prime Price còn 3 triệu đúng không ạ?</div>
                                            <div class="thoigiancomment">16/11/2016 17:48:00</div>
                                        </li>
                                    </ul>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>-->
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        Comments / Feedback 
                    </div>
                    <!-- The code is integrated to bring society into the page (the header still has 1 paragraph) -->

                    <div class="fb-comments" data-href="phoneProduct.jsp?product=<%=sp.getMaSP()%>" data-width="1000" data-numposts="5"></div>
                    <!--end Comment-->
                </div>
            </div>
        </div>
    </div>
@endsection
@section('script')
	<script>(function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id))
                return;
            js = d.createElement(s);
            js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.8&appId=1376022525742876";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
@endsection