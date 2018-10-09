@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    
?>
<section class="vk-content">
    <div class="vk-breadcrumb">
        <nav class="container">
            <ul class="vk-list vk-list--inline vk-breadcrumb__list">
                <li class="vk-list__item"><a href="{{ url('') }}"><i class="vk-icon fa fa-home"></i> Trang chủ</a></li>
                <li class="vk-list__item active">Catalog</li>
            </ul>
        </nav>
    </div>
    <!--./vk-breadcrumb-->    
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <h1 class="vk-heading vk-heading--style-1 vk-shop-detail__title-sub">{{$catalog->name}}</h1>
                <div class="">
                	{!! $catalog->content !!}
                </div>
                <p class="text-center"><strong>DOWNLOAD CATALOG</strong></p>
                <p class="text-center">
                    <a href="{{asset('upload/document/'.$catalog->document)}}"><img src="{{asset('public/images/cata-log-2.png')}}" alt="" class="mw-100"></a>
                </p>

            </div>
        </div>


    </div> <!--./container-->


    <div class="vk-map">
        <div class="vk-map__img">
            <img src="{{ asset('public/images/map.jpg')}}" alt="">
        </div>

        <div class="vk-map__main">
            <div class="container">
                <div class="vk-map__wrapper">
                    <div class="vk-map__content">
                        <h2 class="vk-map__title">HỆ THỐNG CỦA HÀNG VIDCOM</h2>
                        <div class="vk-map__text">
                            Vidcom hiện đang sở hữu hệ thống 16 Siêu thị Nội Thất và Trang Trí tại hai thành phố chính
                            của
                            Việt Nam là Hà Nội và TP.Hồ Chí Minh.
                        </div>
                        <a href="{{url('cua-hang')}}" class="vk-btn vk-btn--white vk-map__btn">Xem hệ thống cửa hàng</a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!--./map-->

</section>
@endsection