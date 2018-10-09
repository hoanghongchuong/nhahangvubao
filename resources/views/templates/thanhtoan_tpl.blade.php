@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>
<section class="vk-content">
    <div class="vk-breadcrumb">
        <nav class="container">
            <ul class="vk-list vk-list--inline vk-breadcrumb__list">
                <li class="vk-list__item"><a href="{{url('')}}"><i class="vk-icon fa fa-home"></i> Trang chủ</a></li>

                <li class="vk-list__item active">Thanh toán</li>
            </ul>
        </nav>
    </div>
    <!--./vk-breadcrumb-->    
    <div class="container">
        <h1 class="vk-shopcart__heading text-uppercase vk-heading--style-1">Giỏ hàng</h1>
        <form action="{{route('postOrder')}}" method="post" accept-charset="utf-8">
            <input type="hidden" name="_token" value="{{csrf_token()}}">      
            <div class="row">          
                <div class="col-lg-9">
                    <div class="vk-alert alert alert-secondary">
                        <i class="_icon fa fa-info-circle"></i> Thông tin của bạn tuyệt đối bảo mật
                    </div>
                    <div class=" vk-checkout__box vk-checkout__info">
                        <h2 class="vk-checkout__title vk-heading vk-heading--style-2">Thông tin giao hàng</h2>
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="form-group">
                                    <input type="text" placeholder="Họ và tên" name="full_name" required="" class="form-control">
                                </div>
                            </div><!--./col-->
                        </div> <!--./row-->

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="email" name="email" placeholder="Email" class="form-control">
                                </div>
                            </div> <!--./col-->

                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="text" name="phone" required="" placeholder="Số điện thoại" class="form-control">
                                </div>
                            </div> <!--./col-->
                        </div><!--./row-->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <input type="text" placeholder="Địa chỉ" name="address" required="" class="form-control">
                                </div>
                            </div> <!--./col-->
                        </div><!--./row-->
                        <!-- <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <select class="form-control">
                                        <option value="">Tỉnh / Thành phố</option>
                                        <option value="">Tỉnh / Thành phố</option>
                                        <option value="">Tỉnh / Thành phố</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <select class="form-control">
                                        <option value="">Quận / Huyện</option>
                                        <option value="">Quận / Huyện</option>
                                        <option value="">Quận / Huyện</option>
                                    </select>
                                </div>
                            </div> 
                        </div> -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <span class="vk-text--red-2">Vui lòng nhập đầy đủ thông tin địa chỉ để nhận hàng nhanh hơn!</span>
                                </div>
                            </div> <!--./col-->
                        </div><!--./row-->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea class="form-control" name="content" rows="3" placeholder="Nội dung chuyển hàng"></textarea>
                                </div>
                            </div> <!--./col-->
                        </div><!--./row-->
                    </div>                    
                    <div class="vk-checkout__box vk-checkout__method">
                        <h2 class="vk-checkout__title vk-heading vk-heading--style-2">Phương thức thanh toán</h2>

                        <input type="hidden" name="payment_method" value="1" id="payment_method">
                        
                        <div class="nav vk-nav vk-nav--style-1 listValuePayment" id="method" role="tablist" aria-orientation="vertical">
                            <a class="nav-link active" data-id="1" data-toggle="pill" href="#cod" role="tab"> Chuyển khoản qua ngân hàng</a>
                            <a class="nav-link" data-id="0" data-toggle="pill" href="#bank_transfer" role="tab">Thanh toán khi nhận hàng(COD)</a>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="cod" role="tabpanel">
                                <div class="vk-bank">
                                    <p>Lựa chọn ngân hàng để chuyển khoản</p>
                                    <div class="nav vk-nav--style-2" id="bank" role="tablist">
                                        @foreach($bank as $k=>$b)
                                        <a class="nav-link @if($k==0) active @endif" data-toggle="pill" href="#bank{{$k}}" role="tab"><img src="{{asset('upload/hinhanh/'.$b->img)}}" alt=""></a>
                                        @endforeach                                    
                                    </div>
                                    <div class="tab-content">
                                    @foreach($bank as $k=>$b)
                                        <div class="tab-pane show @if($k ==0)active @endif" id="bank{{$k}}" role="tabpanel">
                                            <div class="vk-bank-item">
                                                <h3 class="vk-bank-item__title">Thông tin tài khoản</h3>
                                                {!! $b->info !!}
                                            </div>
                                        </div>
                                    @endforeach    
                                    </div>
                                </div> <!--./bank-->
                            </div>
                            <div class="tab-pane fade" id="bank_transfer" role="tabpanel">
                                <p>Nhân viên của chúng tôi sẽ thu tiền trực tiếp khi giao hàng cho bạn. Vui lòng điền đẩy đủ
                                    thông tin cá nhân của bạn</p>
                            </div>
                        </div>
                    </div> <!--./box-->
                    <div class="vk-checkout__button">
                        <a href="{{url('gio-hang')}}" class="vk-btn vk-btn--outline-grey-6"><i class="fa fa-arrow-left mr-2"></i> Giỏ hàng</a>
                        <!-- <a href="shopcart.html" class="vk-btn vk-btn--grey-6">Hoàn tất</a> -->
                        <button class="vk-btn vk-btn--grey-6">Hoàn tất</button>
                    </div>
                </div> <!--./col-->
                <div class="col-lg-3 pt-5 pt-lg-0">
                    <h2 class="vk-checkout__title vk-heading vk-heading--style-2">Thông tin đơn hàng</h2>
                    <div class="row vk-checkout__list">
                        @foreach($product_cart as $item) 
                        <div class="col-lg-12 _item">
                            <div class="vk-checkout-item">
                                <a href="#" class="vk-img vk-img--cover">
                                    <img src="{{asset('upload/product/'.$item->options->photo)}}" alt="">
                                </a>
                                <div class="vk-checkout-item__brief">
                                    <h3 class="vk-checkout-item__title"><a href="#">{{$item->name}}</a></h3>
                                    <div class="vk-checkout-item__text">{{$item->qty}} * {{number_format($item->price)}} đ</div>
                                </div>
                            </div>
                        </div> <!--./item-->
                        @endforeach
                        
                    </div> <!--./list-->

                    <div class="vk-checkout__total">
                        <span>Tổng:</span>
                        <b class="vk-text--red-2">{{number_format($total)}} đ</b>
                    </div>

                    <p class="mb-0">Tổng đài hỗ trợ mua hàng online</p>
                    <p class="vk-checkout__hotline"><i class="_icon fa fa-phone"></i> <a href="callto:0923 333 454" class="vk-text--red-2"><b>{{$setting->phone}}</b></a></p>
                </div>
            </div>
        </form>
    </div>
    <div class="vk-map">
        <div class="vk-map__img">
            <img src="{{asset('public/images/map.jpg')}}" alt="">
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