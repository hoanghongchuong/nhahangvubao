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
			<li>Tuyển dụng</li>
		</ul>
	</div>
	<section class="f2 bdetail">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-7">
					<div class="bdetail-re">
						@foreach($tintuc as $item)
						<article class="bdetailre-item">
							<div class="row">
								<div class="col-lg-4">
									<div class="bdetailre-img text-center"><a href="{{ url('tuyen-dung/'.$item->alias.'.html') }}" title=""><img src="{{asset('upload/news/'.$item->photo)}}" title="{{$item->name}}" alt="{{$item->name}}"></a></div>
								</div>
								<div class="col-lg-8">
									<h3 class="light s24 pb-3 bdetail-retit"><a href="{{ url('tuyen-dung/'.$item->alias.'.html') }}" title="{{$item->name}}">{{$item->name}}</a></h3>									
									<p>{!! $item->mota !!}.</p>
								</div>
							</div>
						</article>
						@endforeach
					</div>
					<div class="list-unstyled s18 f2 mt-5 pagi">
						{!! $tintuc->links() !!}
					</div>
				</div>
				@include('templates.layout.hotnews')
			</div>
		</div>
	</section>
</main>

@endsection