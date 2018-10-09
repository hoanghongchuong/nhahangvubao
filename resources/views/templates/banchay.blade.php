@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $cateProducts = Cache::get('cateProducts');
    
?>
<section class="vk-content">
    <div class="vk-breadcrumb">
        <nav class="container">
            <ul class="vk-list vk-list--inline vk-breadcrumb__list">
                <li class="vk-list__item"><a href="{{url('')}}"><i class="vk-icon fa fa-home"></i> Trang chủ</a></li>
                <li class="vk-list__item"><a href="#">Hàng mới về</a></li>
               
                
            </ul>
        </nav>
    </div>
    <!--./vk-breadcrumb-->
    <div class="container">
        <form action="" id="filter_products"  method="get">
            <div class="row">
                <div class="col-lg-3 order-1 order-lg-0 pt-5 pt-lg-0">
                    <div class="vk-sidebar">

                        <div class="vk-sidebar__box">
                            <h2 class="vk-sidebar__title vk-heading vk-heading--style-1 ">Danh mục</h2>
                            <ul class="vk-list vk-sidebar__list">
                                @foreach($cate_pro as $k=>$cate)
                                <li class="vk-list__item">
                                    <a href="#pNgu{{ $k }}" class="_icon collapsed" data-toggle="collapse"><i class="fa fa-caret-up"></i></a>
                                    <a href="{{url('san-pham/'.$cate->alias)}}">{{$cate->name}}</a>
                                    <?php $cateChilds = DB::table('product_categories')->where('status',1)->where('parent_id', $cate->id)->get(); ?>
                                    @if($cateChilds)
                                    <ul class="vk-list collapse" id="pNgu{{$k}}">
                                        @foreach($cateChilds as $child)
                                        <li class="vk-list__item"><a href="{{url('san-pham/'.$child->alias)}}">{{$child->name}}</a></li>
                                        @endforeach
                                    </ul>
                                    @endif
                                </li>
                                @endforeach
                            </ul>
                        </div> <!--./box-->

                        <input type="hidden" class="set_from" value="{{ $price_from ? $price_from : 0}}">
                        <input type="hidden" class="set_to" value="{{ $price_to ? $price_to : 100000000}}">
                        <div class="vk-sidebar__box">
                            <h2 class="vk-sidebar__title vk-heading vk-heading--style-1 mb-4">Khoảng giá</h2>
                            <div id="slider-range" class="form-change"></div>
                            <input type="hidden" name="from" id="amount1">
                            <input type="hidden" name="to" id="amount2">

                            <div class="vk-sidebar__price">
                                <span id="text_amount1"></span> đ -
                                <span id="text_amount2"></span> đ
                            </div>
                        </div> <!--./box-->
                        <div class="vk-sidebar__box">
                            <h2 class="vk-sidebar__title vk-heading vk-heading--style-1">Màu sắc</h2>
                            <ul class="vk-sidebar__color-list vk-list vk-list--inline">
                                 <input type="hidden" name="color"  value="{{$colorx}}" class="set_color">
                                @foreach($colors as $color)
                                <li class="vk-list__item color-item" data-color="{{$color->id}}">
                                    <a href="javascript:;" class="_color1 form-change" style="background-color: {{$color->code}}"></a>
                                </li>
                                @endforeach
                            </ul>
                        </div> <!--./box-->
                        <button class="btn-primary btn btn-filter" type="button">Lọc sản phẩm</button>
                    </div> <!--./sidebar-->
                </div> <!--./col-->
                <div class="col-lg-9 order-0 order-lg-1">
                    <div class="vk-banner vk-banner--style-2">
                        <h1 class="vk-banner__title">Hàng mới về</h1>
                    </div> <!--./banner-->
                    <div class="vk-filter">
                        <div class="vk-filter__item">
                            <span class="mr-1">Hiển thị</span>
                            <select name="view" id="" class="form-control form-change">
                                <option value="9" {{ (isset($viewx) and $viewx == 9) ? 'selected' : ''}}>9</option>
                                <option value="12" {{ (isset($viewx) and $viewx == 12) ? 'selected' : ''}}>12</option>
                                <option value="15" {{ (isset($viewx) and $viewx == 15) ? 'selected' : ''}}>15</option>
                            </select>
                            <span class="ml-1">Sản phẩm</span>
                        </div>

                        <div class="vk-filter__item">
                            <span class="mr-2">Sắp xếp sản phẩm</span>                        
                            <select name="sort" id="product_filter" class="form-control form-change">
                                <option value="asc" {{ (isset($sortx) and $sortx == 'asc') ? 'selected' : ''}}>Giá thấp đến cao</option>
                                <option value="desc" {{ (isset($sortx) and $sortx == 'desc') ? 'selected' : ''}}>Giá cao đến thấp</option>
                               
                            </select>
                        </div>

                    </div> <!--./filter-->

                    <div class="vk-shop__list row">
                    @foreach($products as $item)
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
                    <nav class="vk-pagination">
                        {!! $products->links() !!}
                        
                    </nav>               
                </div> 
            </div> 
        </form>
    </div> 
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
                            Vidcom hiện đang sở hữu hệ thống 16 Siêu thị Nội Thất và Trang Trí tại hai thành phố chính của
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