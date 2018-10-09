@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $banner = DB::table('banner_content')->where('position', 8)->first();
?>
<main class="">
    <div class="container">
        <ul class="list-unstyled bread">
            <li><a href="{{url('')}}" title="">Trang chủ</a></li>
            <li><a href="#" title="">Tin tức</a></li>
            <li>{{ $news_detail->name }}</li>
        </ul>
    </div>
    <section class="f2 bdetail">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-7">
                    <div class="bdetail-header">
                        <h1 class="s36 light">{{ $news_detail->name }}</h1>
                        <h3 class="s12 t4 pt-2 blog-info-time">{{date('d/m/Y', strtotime($news_detail->created_at))}}</h3>
                    </div>
                    <div class="s16 medium bdetail-sum">
                        <!-- <h2>Hiện nay để giảm tình trạng "mắt to hơn bụng" của thực khách khi lấy đồ ăn vượt quá mức có thể ăn hết, một số nhà hàng buffet trên thế giới đã áp dụng hình thức phạt tiền. Thế nhưng đó có phải là cách hay?</h2> -->
                    </div>
                    <div class="text-justify s16 bdetail-content">
                        {!! $news_detail->content !!}
                    </div>
                    <div class="bdetail-re">
                        <h2 class="s16 bold text-uppercase bdetail-re-tit">Bài viết liên quan</h2>
                        @foreach($baiviet_khac as $b)
                        <article class="bdetailre-item">
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="bdetailre-img text-center"><a href="{{ url('tin-tuc/'.$b->alias.'.html') }}" title=""><img src="{{asset('upload/news/'.$b->photo)}}" title="" alt=""></a></div>
                                </div>
                                <div class="col-lg-8">
                                    <h3 class="bold s18 bdetail-retit"><a href="{{ url('tin-tuc/'.$b->alias.'.html') }}" title="">{{$b->name}}</a></h3>
                                    <h4 class="s12 t4 pt-2 blog-info-time">{{date('d/m/Y', strtotime($b->created_at))}}</h4>
                                    <p>{!! $b->mota !!}</p>
                                </div>
                            </div>
                        </article>
                        @endforeach
                    </div>
                </div>
                @include('templates.layout.hotnews')
            </div>
        </div>
    </section>
</main>

@endsection

