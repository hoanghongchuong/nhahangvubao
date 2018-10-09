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
			<li>Tuyển dụng</li>
			<li>{{$news_detail->name}}</li>
		</ul>
	</div>
	<section class="f2 bdetail">
		<div class="container">
			<div class="row">
				<div class="col-sm-8">
					<div class="bdetail-header">
						<h1 class="light s36">{{$news_detail->name}}</h1>
					</div>

					<div class="s16 tddetail">
						{!! $news_detail->content !!}
					</div>

					<!-- <div class="tddetail-like">
						<img src="{{ asset('public/images/like.png')}}" title="" alt="">
					</div> -->

					<div class="tddetail-re">
						<h2 class="text-uppercase tddetail-re-tit">Bài viết tuyển dụng khác</h2>
						
						<div class="td-slider">
							<div class="td-wrap">
								@foreach($postDifferent as $item)
								<article class="tes-item">
									<figure class="text-center td-img"><a href="{{ url('tuyen-dung/'.$item->alias.'.html') }}"><img src="{{asset('upload/news/'.$item->photo)}}" alt="{{$item->name}}" title="{{$item->name}}"></a></figure>
									<figcaption class="td-info">
										<h3 class="light s16 py-2 tes-info-name"><a href="{{ url('tuyen-dung/'.$item->alias.'.html') }}" title="{{$item->name}}">{{$item->name}}</a></h3>
									</figcaption>
								</article>
								@endforeach								
							</div>
						</div>
					</div>
				</div>
				@include('templates.layout.hotnews')
			</div>
		</div>
	</section>
</main>
@endsection