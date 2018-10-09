<?php
    $setting = Cache::get('setting');
    $chinhanhs = DB::table('chinhanh')->get();
?>
<footer class="text-white ft">
    <div class="b1 ft-1">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-5 col-md-6 col-sm-12">
                    <h2 class="f1 s18 text-uppercase ft-tit">Hệ thống nhà hàng Vũ Bảo</h2>
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
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <h2 class="f1 s18 text-uppercase ft-tit">Fanpage</h2>
                    <img src="{{ asset('public/images/fb.jpg')}}" title="" alt="">
                    <!-- <h3 class="pt-4">Số lượng truy cập: 239750</h3> -->
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <h2 class="f1 s18 text-uppercase ft-tit">Đăng ký</h2>
                    <p>Hãy đăng ký với chúng tôi để nhận được thông tin ưu đãi sớm nhất</p>
                    <form action="{{ route('postNewsletter') }}" method="post" class="ft-frm">
                        {{csrf_field()}}
                        <label class="sr-only" for="regisemail">Email</label>
                        <input id="regisemail" type="email" required="required" placeholder="Email" class="form-control">
                        <button aria-label="Đăng ký" role="button" type="submit" class="btn text-uppercase"><i class="far fa-paper-plane"></i></button>
                    </form>
                    <div class="ft-map">
                        {!! $setting->iframemap !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="b2 s14 ft-last">
        <div class="text-center container">
            <h2 class="">© 2018 Vu Bao Restaurant. All rights reserved.</h2>
            <h3>Chính sách và quy định chung Công ty TNHH Nhà Hàng Vũ Bảo</h3>
        </div>
    </div>
</footer>
