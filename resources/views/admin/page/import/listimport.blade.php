@extends('admin.layout.master')
@section('content')
	@section('title')
		Admin Imports
	@endsection
	@section('breadcrumb')
	<ol class="breadcrumb">
	  	<li class="breadcrumb-item"><a href="{{route('getadminindex')}}">Home</a></li>
	  	<li class="breadcrumb-item active">Waiting Imports</li>
	</ol>
	@endsection
	<div class="row">
		<div class="col-md-12">
			@if(Session::has('mess'))
			<div class="alert alert-{{Session::get('style')}}">
				{{Session::get('mess')}}
			</div>
			@endif
			<div class="panel panel-success">
				<div class="panel-heading">
					<span class="panel-title">List Imports</span>
					
				</div>
				<div class="panel-body">
					<table class="table table-bordered table-hover">
						<thead>
							<tr class="title-center">
								<th>No.</th>
								<th>Name Emp</th>
								<th>Total_Quantity</th>
								<th>Total_Price</th>
								<th>Status</th>
								<th>Detail</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							@foreach($imports as $import)
							<tr>
								<td>{{$import->id}}</td>
								<td>{{$import->username}}</td>
								<td>{{$import->total_quantity}}</td>
								<td>{{$import->total_price}}</td>
								<td>{{$import->status}}</td>
								<td>
									<span><a href="{{route('getimportdetail',[$import->id,1])}}" class="btn btn-warning">Detail</a></span>
									<span><a href="{{route('getcancelimport',$import->id)}}" class="btn btn-default">Cancel</a></span>
								</td>
								<td class="object-center">
									<span><button type="button" detail_id="{{$import->id}}" class="btn btn-warning btn-update-detail">Update</button></span>
									<span><button type="button" detail_id="{{$import->id}}" class="btn btn-danger btn-delete-detail" >Delete</button></span>
								</td>
							</tr>
							@endforeach
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
@endsection