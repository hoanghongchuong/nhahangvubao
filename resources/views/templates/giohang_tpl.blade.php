@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>
<section class="vk-content">
    <div class="vk-breadcrumb">
        <nav class="container">
            <ul class="vk-list vk-list--inline vk-breadcrumb__list">
                <li class="vk-list__item"><a href="index.html"><i class="vk-icon fa fa-home"></i> Trang chủ</a></li>

                <li class="vk-list__item active">Giỏ hàng</li>
            </ul>
        </nav>
    </div>
    <!--./vk-breadcrumb-->
    <div class="vk-page vk-page--shopcart">
        <div class="vk-shopcart">
        <form action="{{route('updateCart')}}" method="post" id="cartformpage">   
                    <input type="hidden" name="_token" value="{{csrf_token()}}" > 
            <div class="container">
                <h1 class="vk-shopcart__heading text-uppercase vk-heading--style-1">Giỏ hàng</h1>

                <table class="vk-table vk-shopcart__table">
                    <tr>
                        <th>Sản phẩm</th>
                        <th>Giá bán</th>
                        <th>Số lượng</th>
                        <th>Thành tiền</th>
                        <th>Thao tác</th>
                    </tr>
                    @foreach($product_cart as $key=>$item)
                    <tr>
                        <td>
                            <div class="vk-shopcart-item">
                                <a href="shop-details.html" title="" class="vk-img vk-img--mw100">
                                    <img src="{{asset('upload/product/'.$item->options->photo)}}" alt="" class="vk-img__img">
                                </a>
                                <div class="vk-shopcart-item__brief">
                                    <h3 class="vk-shopcart-item__title"><a href="#" title="">{{$item->name}}</a></h3>
                                    <div class="vk-shopcart-item__color color-cart">
                                    <?php $color = DB::table('colors')->where('id', $item->options->color)->first(); ?>
                                        <!-- <span>Màu sắc </span> -->
                                        <span style="background: {{ @$color->code }}; width: 30px; height: 30px; border-radius: 50%"></span>
                                    </div>
                                </div>
                            </div> <!--./vk-shopcart-item-->
                        </td>
                        <td>
                        <span class="vk-shopcart__price vk-text--red-1">
                            <span class="d-lg-none">Giá: </span>
                                {{ number_format($item->price) }} đ
                        </span>
                        </td>
                        <td>
                            <div class="vk-shopcart__quantity">
                                <span class="d-lg-none d-block">Số lượng: </span>
                                <div class="vk-calculator" data-calculator="true">
                                    <input type="number" id="{{ $item->rowId }}"  name="numb[{{$key}}]" value="{{$item->qty}}" min="1" class="form-control order-2">
                                    <a href="#" class="vk-calculator__button vk-btn vk-btn--minus order-1"
                                       data-index="minus">
                                        <i class="_icon fa fa-minus"></i>
                                    </a>
                                    <a href="#" class="vk-calculator__button vk-btn vk-btn--plus order-3" data-index="plus">
                                        <i class="_icon fa fa-plus"></i>
                                    </a>
                                </div> <!--./calculator-->
                            </div> <!--./vk-shopcart__quantity-->
                        </td>
                        <td>
                        <span class="vk-shopcart__price vk-text--red-1">
                            <span class="d-lg-none">Thành tiền: </span>{{number_format($item->price * $item->qty)}} đ</span>
                        </td>
                        <td>
                            <div class="vk-button">
                                <a href="{{url('xoa-gio-hang/'.$item->rowId)}}" id="{{$item->rowId}}" class="vk-btn vk-btn--del vk-btn--grey-2 "><i class="ti-trash mr-2"></i> Xóa</a>
                            </div>
                        </td>
                    </tr>
                    @endforeach
                </table>
                <div class="vk-shopcart__button">
                    <div>
                        <a href="{{url('thanh-toan')}}" title="" class="vk-btn vk-btn--grey-6">Thanh toán</a>
                        <button class="vk-btn vk-btn--grey-6">Cập nhật</button>
                        <!-- <a href="#" title="" class="vk-btn vk-btn--outline-grey-6">Xóa giỏ hàng</a> -->
                    </div>
                    <div class="vk-shopcart__total">
                        <div class="vk-shopcart__label">Tạm tính: </div>
                        <div class="vk-text--red-2">{{number_format($total)}} VNĐ</div>
                    </div>

                </div>
                <a href="{{url('')}}" class="vk-btn vk-btn--link pl-0"><i class="fa fa-caret-right mr-2"></i> Mua thêm sản phẩm khác</a>

            </div>
        </form>
            <!-- /.container -->
        </div> <!--./vk-shopcart-->


    </div> <!--./vk-page-->
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
