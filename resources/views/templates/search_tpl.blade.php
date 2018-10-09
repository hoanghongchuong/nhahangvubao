@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $banner = DB::table('banner_content')->where('position', 2)->first();
?>
<section class="vk-content">
    <div class="vk-breadcrumb">
        <nav class="container">
            <ul class="vk-list vk-list--inline vk-breadcrumb__list">
                <li class="vk-list__item"><a href="{{url('')}}"><i class="vk-icon fa fa-home"></i> Trang chủ</a></li>
                <li class="vk-list__item"><a href="#">Tìm kiếm</a></li>
                
                <li class="vk-list__item active">{{$search}}</li>
            </ul>
        </nav>
    </div>
    <!--./vk-breadcrumb-->
    <div class="container">
        <div class="row">
            
            <div class="col-lg-12 order-0 order-lg-1">
               
                <div class="vk-shop__list row">
                @foreach($data as $item)
                    <div class="col-sm-6 col-md-4 _item">
                        <div class="vk-shop-item vk-shop-item--style-3">
                            <a href="{{url('san-pham/'.$item->alias.'.html')}}" title="{{$item->name}}" class="vk-img vk-img--mw100 ">
                                <img src="{{asset('upload/product/'.$item->photo)}}" alt="{{$item->name}}" class="vk-img__img">
                                <span class="_sale">- {{ round(100-($item->price / $item->price_old)*100) }} %</span>
                            </a>
                            <div class="vk-shop-item__brief">
                                <h3 class="vk-shop-item__title"><a href="{{url('san-pham/'.$item->alias.'.html')}}" title="{{$item->name}}">{{$item->name}}</a></h3>
                                <div class="vk-shop-item__price">{{number_format($item->price)}} đ 
                                    @if($item->price < $item->price_old)
                                    <span class="_old">{{number_format($item->price_old)}} đ</span>
                                    @endif
                                </div>
                                <div class="vk-shop-item__button">
                                    <a href="javascript:;" data-id="{{$item->id}}" class="btn-addcartx vk-btn vk-btn--grey-1" title="Thêm vào giỏ"><img src="{{ asset('public/images/icon-3.png')}}" alt=""></a>
                                    <a href="{{url('san-pham/'.$item->alias.'.html')}}" class="vk-btn vk-btn--grey-1" title="Xem thêm"><i class="ti-search"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach                    
                </div>
                            
            </div> 
        </div> 
    </div> 

    

</section>
@endsection
