@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
?>
<main class="">
    <div class="container">
        <ul class="list-unstyled bread">
            <li><a href="{{ url('') }}" title="">Trang chủ</a></li>
            <li>Tin tức</li>
            <li>{{ $tintuc_cate->name }}</li>
        </ul>
    </div>
    <section class="f2 blog">
        <div class="container">
            <div class="row blog-row">
                @foreach($tintuc as $item)
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <article class="blog-item">
                        <figure class="blog-img text-center">
                            <a href="{{ url('tin-tuc/'.$item->alias.'.html') }}" title=""><img src="{{asset('upload/news/'.$item->photo)}}" title="" alt="" title=""></a>
                        </figure>
                        <figcaption class="blog-info">
                            <h3 class="s12 t4 blog-info-time">{{date('d/m/Y', strtotime($item->created_at))}}</h3>
                            <h2 class="s24 light blog-info-tit"><a href="{{ url('tin-tuc/'.$item->alias.'.html') }}" title="">{{$item->name}}</a></h2>
                            <p>{!! $item->mota !!}</p>
                            <div class="text-sm-left text-center blog-link">
                                <a href="{{ url('tin-tuc/'.$item->alias.'.html') }}" class="btn more-btn" title="">Chi tiết</a>
                            </div>
                        </figcaption>
                    </article>
                </div>
                @endforeach
            </div>
            <div class="list-unstyled text-center s18 f2 mt-5 pagi">
                {!! $tintuc->links() !!}
            </div>
        </div>
    </section>
</main>
@endsection