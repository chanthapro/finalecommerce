@extends('client.layout.master2')
@section('content')
		<div class="container">
            <form class="frm_DangNhap" action="{{route('postlogin')}}" method="POST" id="form-login">
                <h2 style="margin-top: 0">Login administrator</h2>
                <small>If you already have an account, please login below</small>
                @if(Session::has('mess'))
                <div class="alert alert-danger alert-error-login" >
                    <strong>{{Session::get('mess')}}</strong>
                </div>
                @endif
                <div class="form-group">
                    <label for="email">Email</label>
                    <input name = "email" type ="text" class="form-control">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input name="password" type ="password" class="form-control"">
                </div>
                <a href="#ForgotMKModal" data-toggle="modal" data-target="#ForgotMKModal">Forgot password?</a>
                {{csrf_field()}}
                <div class="obj-center ">
                    <input type="submit" class="btn btn-success button-login" value="Log in">
                </div>
            </form>
        </div>

        <div class="modal fade" id="ForgotMKModal" tabindex="-1">
            <div class="modal-dialog ">
                <div class="modal-content">
                    <div class="modal-header">
                        <button class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Forgot password</h4>
                    </div>
                    <div class="modal-body">
                        <p>Please enter your username and email to register here to retrieve your new password.</p>
                        <form action="ForgotMatKhauServlet" method="post" class="form-horizontal" id="formSendForgotMK">
                            <div class="form-group">
                                <label for="lmk_name" class="col-xs-3 control-label">Enter Name:</label>
                                <div class="col-xs-9">
                                    <input type="text" name="lmk_name" class="form-control" placeholder="Username" required="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="lmk_email" class="col-xs-3 control-label">Enter Email:</label>
                                <div class="col-xs-9">
                                    <input type="email" name="lmk_email" class="form-control" placeholder="Email" required="">
                                </div>
                            </div>
                            <input type="submit" value="Password retrieval" class="btn btn-primary">
                        </form>
                        <p>Please check your email to retrieve your password</p>
                    </div>
                </div>
            </div>
        </div>
@endsection