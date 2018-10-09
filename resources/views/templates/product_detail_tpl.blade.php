@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $quangcao = DB::table('lienket')->where('com','quang-cao')->get();
?>
<section class="vk-content">
    <div class="vk-breadcrumb">
        <nav class="container">
            <ul class="vk-list vk-list--inline vk-breadcrumb__list">
                <li class="vk-list__item"><a href="{{url('')}}"><i class="vk-icon fa fa-home"></i> Trang chủ</a></li>
                <!-- <li class="vk-list__item"><a href="shop-list.html">Phòng</a></li> -->

                <li class="vk-list__item"><a href="{{url('san-pham/'.$cateProduct->alias)}}">{{$cateProduct->name}}</a></li>

                <li class="vk-list__item active">{{$product_detail->name}}</li>
            </ul>
        </nav>
    </div>
    <!--./vk-breadcrumb-->    
    <div class="container">

        <div class="vk-shop-detail__top">
            <div class="row">
                <div class="col-lg-6 ">
                    <div class="vk-shop-detail__thumbnail">
                        <div class="vk-slider slider-for">
                            @if(count($album_hinh) > 0)
                            @foreach($album_hinh as $k=>$a)
                            <div class="_item">
                                <a href="#" class="vk-img vk-img--mw100">
                                    <img src="{{asset('upload/hasp/'.$a->photo)}}" alt="">
                                </a>
                            </div>
                            @endforeach
                            @else 
                            <div class="_item">
                                <a href="#" class="vk-img vk-img--mw100">
                                    <img src="{{asset('upload/product/'.$product_detail->photo)}}" alt="">
                                </a>
                            </div>
                            @endif
                        </div>
                    </div>
                    <div class="vk-shop-detail__thumbnail-slider">
                        <div class="vk-slider slider-nav">
                            @if(count($album_hinh) > 0)
                            @foreach($album_hinh as $k=>$a)
                            <div class="_item">
                                <div class="vk-img  vk-img--cover">
                                    <img src="{{asset('upload/hasp/'.$a->photo)}}" alt="">
                                </div>
                            </div>
                            @endforeach
                            @else 
                            <div class="_item">
                                <div class="vk-img  vk-img--cover">
                                    <img src="{{asset('upload/product/'.$product_detail->photo)}}" alt="">
                                </div>
                            </div>
                            @endif
                        </div>

                    </div>
                </div> <!--./col-->
                <div class="col-lg-6 pt-5 pt-lg-0">
                    <h1 class="vk-shop-detail__title">{{$product_detail->name}}</h1>
                    <div class="vk-shop-detail__status">Tình trạng: @if($product_detail->tinhtrang == 1) Còn hàng @else Hết hàng @endif</div>

                    <div class="vk-shop-detail__price-box">
                        <span class="_main">{{number_format($product_detail->price)}} đ</span>
                        @if($product_detail->price < $product_detail->price_old)
                        <span class="_old">Giá cũ: {{number_format($product_detail->price_old)}} đ</span>
                        @endif
                    </div>

                    <div class="vk-shop-detail__short-des">
                        {!! $product_detail->mota !!}
                    </div>
                <form action="{{ route('addProductToCart') }}" method="post">
                    {{csrf_field()}}                    
                    <input type="hidden" value="{{ $product_detail->id }}" name="product_id">    

                    <div class="vk-shop-detail__color">
                        <p><b>Màu sắc</b></p>
                        <ul class="vk-list vk-list--inline vk-shop-detail__color-list">
                            @foreach($colors as $color)
                            <li class="vk-list__item">
                                <label >
                                    <input type="radio" name="color"  value="{{ $color->id }}">
                                    <span class="_color1" style="background-color: {{ $color->code  }}"></span>
                                </label>
                            </li>
                            @endforeach                            
                        </ul>
                    </div>
                    <div class="vk-shop-detail__button">
                        <p>Số lượng</p>
                        <div class="vk-shop-detail__button-content">
                            <div class="vk-calculator" data-calculator="true">
                                <input type="number" name="product_numb" value="1" min="1" class="form-control order-2">
                                <a href="#" class="vk-calculator__button vk-btn vk-btn--minus order-1"
                                   data-index="minus">
                                    <i class="_icon fa fa-minus"></i>
                                </a>
                                <a href="#" class="vk-calculator__button vk-btn vk-btn--plus order-3" data-index="plus">
                                    <i class="_icon fa fa-plus"></i>
                                </a>
                            </div>
                            <!-- <a href="#" class="vk-btn vk-btn--grey-6">Thêm vào giỏ</a> -->
                            <button class="vk-btn vk-btn--grey-6">Thêm vào giỏ</button>
                        </div>
                    </div> <!--./button-->
                </form>
                </div> <!--./col-->
            </div> <!--./row-->
        </div> <!--./top-->
        <div class="vk-shop-detail__bot ">
            <div class="row">
                <div class="col-lg-9">
                    <h2 class="vk-shop-detail__title-sub vk-heading vk-heading--style-1">Thông tin sản phẩm</h2>
                    <div class="vk-shop-detail__des">
                        {!! $product_detail->content !!}
                    </div> <!--./description-->
                </div> <!--./col-->
                <div class="col-lg-3 pt-5 pt-lg-0">
                    @foreach($quangcao as $qc)
                    <div class="vk-ads mb-3">
                        <img src="{{ asset('upload/hinhanh/'.$qc->photo)}}" alt="" class="mw-100">
                    </div>
                    @endforeach
                    
                </div> <!--./col-->
            </div> <!--./row-->

        </div> <!--./bot-->
        <div class="vk-shop__relate mt-5">
            <h2 class="vk-shop-detail__title-sub vk-heading vk-heading--style-1">Sản phẩm liên quan</h2>
            <div class="vk-shop__list vk-slider" data-slider="relate">
                @foreach($productSameCate as $item)
                <div class="col-sm-6 col-md-4 _item">
                    <div class="vk-shop-item vk-shop-item--style-3">
                        <a href="{{ url('san-pham/'.$item->alias.'.html') }}" title="{{$item->name}}" class="vk-img vk-img--mw100 ">
                            <img src="{{asset('upload/product/'.$item->photo)}}" alt="{{$item->name}}" class="vk-img__img">
                            <span class="_sale">- {{ round(100-($item->price / $item->price_old)*100) }} %</span>
                        </a>
                        <div class="vk-shop-item__brief">
                            <h3 class="vk-shop-item__title"><a href="{{ url('san-pham/'.$item->alias.'.html') }}" title="{{$item->name}}">{{$item->name}}</a></h3>
                            <div class="vk-shop-item__price">{{number_format($item->price)}} đ <span class="_old">{{number_format($item->price_old)}} đ</span></div>
                            <div class="vk-shop-item__button">
                                <a href="#" class="vk-btn vk-btn--grey-1" title="Thêm vào giỏ"><img src="{{ asset('public/images/icon-3.png')}}" alt=""></a>
                                <a href="{{ url('san-pham/'.$item->alias.'.html') }}" class="vk-btn vk-btn--grey-1" title="Xem thêm"><i class="ti-search"></i></a>
                            </div>
                        </div>
                    </div> <!--./vk-shop-item-->
                </div>
                @endforeach    
                
            </div> <!--./list-->
        </div> <!--./relate-->

        <div class="vk-shop__relate mt-5">
            <h2 class="vk-shop-detail__title-sub vk-heading vk-heading--style-1">Sản phẩm đã xem</h2>
            <div class="vk-shop__list vk-slider" data-slider="relate">
                @foreach($productDaXem as $item)
                <div class="col-sm-6 col-md-4 _item">
                    <div class="vk-shop-item vk-shop-item--style-3">
                        <a href="{{ url('san-pham/'.$item->alias.'.html') }}" title="{{$item->name}}" class="vk-img vk-img--mw100 ">
                            <img src="{{asset('upload/product/'.$item->photo)}}" alt="{{$item->name}}" class="vk-img__img">
                            <span class="_sale">- {{ round(100-($item->price / $item->price_old)*100) }} %</span>
                        </a>
                        <div class="vk-shop-item__brief">
                            <h3 class="vk-shop-item__title"><a href="{{ url('san-pham/'.$item->alias.'.html') }}" title="{{$item->name}}">{{$item->name}}</a></h3>
                            <div class="vk-shop-item__price">{{number_format($item->price)}} đ <span class="_old">{{number_format($item->price_old)}} đ</span></div>
                            <div class="vk-shop-item__button">
                                <a href="#" class="vk-btn vk-btn--grey-1" title="Thêm vào giỏ"><img src="{{ asset('public/images/icon-3.png')}}" alt=""></a>
                                <a href="{{ url('san-pham/'.$item->alias.'.html') }}" class="vk-btn vk-btn--grey-1" title="Xem thêm"><i class="ti-search"></i></a>
                            </div>
                        </div>
                    </div> <!--./vk-shop-item-->
                </div>
                @endforeach    
                
            </div> <!--./list-->
        </div> <!--./relate-->

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
