@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $banner = DB::table('banner_content')->where('position', 3)->first();
?>
<main class="">
    <div class="container">
        <ul class="list-unstyled bread">
            <li><a href="{{url('')}}" title="">Trang chủ</a></li>
            <li>Giới thiệu</li>
        </ul>
    </div>
    <section class="about">
        <div class="container">
            <h1 class="s36 t1 f1 text-center py-4 about-tit">{!! $about->name !!}</h1>
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="text-justify about-wrap">
                        {!! $about->content !!}
                    </div>
                    <div class="about-sr">
                        <h2 class="s36 t1 f1 text-center about-sr-tit">Hệ thống cửa hàng</h2>
                        <div class="row sr-wrap">
                            @foreach($chinhanhs as $chinhanh)
                            <div class="col-md-4 col-sm-6">
                                <article class="sr-item">
                                    <h3 class="t3 bold sr-item-tit">{{$chinhanh->name}}</h3>

                                    <ul class="list-unstyled ft-add">
                                        <li>
                                            <span class="ft-icon"><i class="fas fa-map-marker-alt"></i></span>
                                            <span>{{$chinhanh->address}}</span>
                                        </li>
                                        <li>
                                            <span class="ft-icon"><img src="{{asset('public/images/pphone.png')}}" alt=""></span>
                                            <a href="tel:0437579499" title="">{{$chinhanh->phone}}</a> - <a href="tel:{{$chinhanh->map}}" title="">{{$chinhanh->map}}</a>
                                        </li>
                                    </ul>
                                </article>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
@endsection
