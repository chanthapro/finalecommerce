@extends('client.layout.master')
@section('content')			
			<div>About Us</div>
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