@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');    
?>

<main class="">
    <div class="container">
        <ul class="list-unstyled bread">
            <li><a href="{{url('')}}" title="">Trang chủ</a></li>
            <li>Thực đơn</li>
        </ul>
    </div>
    <section class="thucdon">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4 col-sm-4 order-sm-1 order-12">
                    <aside class="menu-aside">
                        <h1 class="s16 b1 text-white text-uppercase text-center menu-aside-tit">Thực đơn nhà hàng</h1>
                        <div class="accordion" id="accordionExample">
                            @foreach($cate_pro as $k=>$cate)
                            <div class="td-wrap">
                                <div class="menu-header" id="heading{{$k}}">
                                  <h2 class="mb-0" data-toggle="collapse" data-target="#collapse{{$k}}">
                                      {{$cate->name}}
                                  </h2>
                                </div>
                                <div id="collapse{{$k}}" class="collapse @if(@$cate_parent->id== $cate->id)show @endif" data-parent="#accordionExample">
                                  <div class="menu-body">
                                    @if(count($cate->cateChilds) > 0)
                                    <ul class="list-unstyled menu-list">
                                        @foreach($cate->cateChilds as $cateChild)
                                        <li @if($cateChild->id == $product_cate->id) class="t1" @endif><a href="{{url('menu/'.$cateChild->alias)}}" title="">{{$cateChild->name}}</a></li>
                                        @endforeach
                                    </ul>
                                    @endif
                                  </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </aside>
                </div>
                <div class="col-lg-9 col-md-8 col-sm-8 order-sm-2 order-1">
                    <div class="row menu-row">
                        @foreach($products as $item)
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <article class="menu-item text-center">
                                <figure class="menu-img">
                                    <a href="#" title="{{$item->name}}"><img src="{{asset('upload/product/'.$item->photo)}}" title="{{$item->name}}" alt="{{$item->name}}"></a>
                                </figure>
                                
                                <h2 class="t1 s16 text-uppercase sbold d-flex align-items-end justify-content-between mdetail-info">
                                    <a href="#" title="">{{$item->name}}</a>
                                    <span>{{ number_format($item->price) }} đ</span>
                                </h2>
                            </article>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
@endsection

