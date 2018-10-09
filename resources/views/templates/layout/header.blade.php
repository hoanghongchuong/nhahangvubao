<?php
    $setting = Cache::get('setting');
    $cate_news = DB::table('news_categories')->where('status',1)->where('com','tin-tuc')->where('parent_id',0)->get();
?>
<header class="fixed-top top">
    <div class="container">
        <div class="w-100 d-flex align-items-center justify-content-between top-menu">
            <div class="d-lg-none d-flex align-items-center justify-content-between top-menu-btn">
                <!-- hamburger menu -->
                <a id="nav-icon" href="#menu" class="">
                    <span></span>
                    <span></span>
                    <span></span>
                </a>
            </div>
            <!-- logo -->
            <a aria-label="Vũ Bảo" href="{{ url('') }}" title=""><img src="{{asset('upload/hinhanh/'.$setting->photo)}}" alt="" title="" class="logo"></a>
            <!-- menu -->
            <nav id="menu" class="menu-wrap">   
                <ul class="menu medium text-uppercase">
                    <li class="@if(@$com == 'index')active @endif"><a href="{{url('')}}" title="Trang chủ">Trang chủ</a></li>
                    <li class="@if(@$com == 'gioi-thieu')active @endif"><a href="{{url('gioi-thieu')}}" title="Giới thiệu">Giới thiệu</a></li>
                    <li class="@if(@$com == 'thuc-don')active @endif"><a href="{{url('menu')}}" title="Thực đơn">Thực đơn</a></li>
                    <li class="@if(@$com == 'khong-gian')active @endif"><a href="{{url('khong-gian')}}" title="Không gian">Không gian</a></li>
                    <li class="@if(@$com == 'khuyen-mai')active @endif"><a href="{{url('khuyen-mai')}}" title="Khuyến mại">Khuyến mãi</a></li>
                    <li class="@if(@$com == 'tin-tuc')active @endif"><a href="{{url('tin-tuc')}}" title="">Tin tức</a>
                        <ul>
                            @foreach($cate_news as $cateNews)
                            <li><a href="{{url('tin-tuc/'.$cateNews->alias)}}" title="">{{$cateNews->name}}</a></li>
                            @endforeach
                        </ul>
                    </li>
                    <li class="@if(@$com == 'tuyen-dung')active @endif"><a href="{{url('tuyen-dung')}}" title="Tuyển dụng">Tuyển dụng</a></li>
                    <li class="@if(@$com == 'lien-he')active @endif"><a href="{{url('lien-he')}}" title="Liên hệ">Liên hệ</a></li>
                </ul>
            </nav>
            <div class="d-flex align-items-center justify-content-end tfirst-control">
                <div class="tf-control-search">
                    <a aria-label='Tìm kiếm' href="#" title="" data-toggle="dropdown" class="d-inline-block"><img class="mx-3" src="{{ asset('public/images/search.png')}}" alt="" title=""></a>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <div class="dropdown-item d-flex align-items-center cart-top-item">
                            <form action="" class="search-frm">
                                <input type="text" required="required" class="form-control" placeholder="Từ khóa tìm kiếm...">
                                <button type="submit" class="btn">Tìm kiếm</button>
                            </form>
                        </div>
                    </div>
                </div>
                <a href="#regis-section" class="btn d-flex align-items-center text-uppercase regis-btn regis-link"><img src="{{ asset('public/images/calen.png')}}" title="" alt=""> <span>Đặt bàn</span></a>
            </div>
        </div>
    </div>
</header>