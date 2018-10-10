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
                    <li class="@if(@$com == 'tin-tuc')active @endif"><a href="#" title="">Tin tức</a>
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
                @if(@$com =='index')
                <a href="#regis-section" class="btn d-flex align-items-center text-uppercase regis-btn regis-link"><img src="{{ asset('public/images/calen.png')}}" title="" alt=""> <span>Đặt bàn</span></a>
                @else
                <a href="javascript:;" data-toggle="modal" data-target="#regis-modal" class="btn text-uppercase regis-btn"><img src="{{ asset('public/images/calen.png')}}" title="" alt=""> <span>Đặt bàn</span></a>
                @endif
            </div>
        </div>
    </div>
</header>
@if(@$com !='index')
<div class="modal fade regis-modal" id="regis-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="b1 modal-header">
            <h2 class="bold s18 text-uppercase text-white text-center modal-title" id="exampleModalLabel">Đặt bàn</h2>
            <button type="button" class="d-lg-none d-inline-block close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form  class="regis-sfrm">
                <div class="regis-sfrm-group">
                    <input name="time" type="time" class="form-control time_book" required="required">
                    <label for=""><i class="far fa-clock"></i> Giờ</label>
                </div>
            
                <div class="regis-sfrm-group">
                    <input name="date" type="date" class="form-control date_book" required="required">
                    <label for=""><i class="far fa-calendar-alt"></i> Ngày</label>
                </div>
            
                <div class="regis-sfrm-group">
                    <input name="quan" type="number" class="form-control numb_book" required="required" >
                    <label for=""><i class="far fa-user"></i> Số lượng</label>
                </div>
            
                <div class="regis-sfrm-group">
                    <input name="tel" type="tel" class="form-control phone_book" required="required">
                    <label for=""><i class="fas fa-phone-volume"></i> Số điện thoại</label>
                </div>
            
                <div class="text-center">
                    <button class="btn text-uppercase regis-btn">Đặt bàn</button>
                </div>
            </form>
          </div>
        </div>
    </div>
</div>
@endif
<div class="modal fade info-modal" id="info-modal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="f2 text-center modal-body">
            <h2>Quý khách đã đặt bàn thàng công. Chúng tôi sẽ liên hệ với quý khách sớm nhất để xác nhận.</h2>
            <h3 class="t1 italic">Cảm ơn quý khách!</h3>
            <div class="text-center info-modal-link">
                <a href="{{url('')}}" class="btn text-uppercase t1 main-btn">
                  Trang chủ
                </a>
            </div>
          </div>
        </div>
    </div>
</div>