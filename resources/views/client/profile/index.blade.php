@extends('client.layout.master')
@section('content')

<div class="container">

    <div class="trungbaysanpham">
        <ul class="nav nav-tabs" role="tablists">
            <li class="active" role="tab">
                <a href="#product" role="tab" data-toggle="tab" title="New product">
                    <i class="glyphicon glyphicon-asterisk"></i> All product
                </a>
            </li>
                


            <li>
                <a href="#sanphambanchay" role="tab" data-toggle="tab" title="Selling products">
                    <i class="glyphicon glyphicon-fire"></i> Selling products
                </a>
            </li>
            <li>
                <a href="#sanphambanchay" role="tab" data-toggle="tab" title="Selling products">
                    <i class="glyphicon glyphicon-fire"></i> Bill
                </a>
            </li>
            <li>
                <a href="#sanphambanchay" role="tab" data-toggle="tab" title="Selling products">
                    <i class="glyphicon glyphicon-fire"></i> New Post
                </a>
            </li>
            <li>
                <a href="#sanphambanchay" role="tab" data-toggle="tab" title="Selling products">
                    <i class="glyphicon glyphicon-fire"></i> My Profile
                </a>
            </li>
        </ul>
    </div>

</div>

@endsection
