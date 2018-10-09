@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $banner = DB::table('banner_content')->where('position', 5)->first();
?>
<main class="">
    <div class="container">
        <ul class="list-unstyled bread">
            <li><a href="{{url('')}}" title="">Trang chủ</a></li>
            <li>Liên hệ</li>
        </ul>
    </div>
    <section class="contact">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h1 class="f1 s18 text-uppercase py-4">Hệ thống nhà hàng Vũ Bảo</h1>

                    <ul class="list-unstyled ft-add">
                        @foreach($chinhanhs as $chinhanh)
                        <li>
                            <span class="ft-icon"><img src="{{ asset('public/images/pinkmap.png')}}" title=""/></span>
                            <span>{{$chinhanh->address}}</span>
                        </li>
                        <li>
                            <span class="ft-icon"><img src="{{ asset('public/images/pphone.png')}}" alt=""></span>
                            <a href="tel:{{$chinhanh->phone}}" title="">{{$chinhanh->phone}}</a> - <a href="tel:{{$chinhanh->map}}" title="">{{$chinhanh->map}}</a>
                        </li>
                        @endforeach
                    </ul>
                </div>
                <div class="col-sm-6">
                    <h2 class="f1 s18 text-uppercase py-4">Gửi thông tin phản hồi</h2>

                    <form action="{{ route('postContact') }}" method="post" class="pb-5 contact-frm">
                        {{csrf_field()}}
                        <div class="row">
                            <div class="col-md-6">
                                <input name="name" type="text" class="form-control" required="required" placeholder="Họ tên">
                            </div>
                            <div class="col-md-6">
                                <input name="email" type="email" class="form-control"  placeholder="Email">
                            </div>
                            <div class="col-md-6">
                                <input name="phone" type="text" class="form-control" required="required" placeholder="Số điện thoại">
                            </div>
                            <div class="col-md-6">
                                <input name='website' type="text" class="form-control"  placeholder="Tiêu đề">
                            </div>
                            <div class="col-12">
                                <textarea name="content" required="required" rows="5" class="form-control" placeholder="Nội dung"></textarea>
                            </div>
                        </div>                        
                        <div class="text-md-right text-center">
                            <button type="submit" class="btn bold more-btn">GỬI</button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="contact-map">
                {!! $setting->iframemap !!}
            </div>
        </div>
    </section>
</main>
@endsection
