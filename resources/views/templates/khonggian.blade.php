@extends('index')
@section('content')
<main class="">
	<div class="container">
		<ul class="list-unstyled bread">
			<li><a href="index.html" title="">Trang chủ</a></li>
			<li>Không gian</li>
		</ul>
	</div>
	<section class="khongian">
		<div class="container">
			<h1 class="s36 t1 f1 text-center khongian-tit">{{$about_khonggian->name}}</h1>
			<div class="w-lg-70 m-auto text-center t2 pb-5 khongian-sum">
				<h2 class="">{!! $about_khonggian->content !!}</h2>
			</div>

			<div class="row justify-content-center">
				<div class="col-lg-10 kg-wrap">
					<div class="flexslider kg-slider" id="f1">
					  <ul class="slides">
					    @foreach($albums as $album)
					    <li>
					      <img src="{{asset('upload/hinhanh/'.$album->photo)}}" />
					    </li>
					    @endforeach
					  </ul>
					</div>
					<div class="flexslider carousel kg-carousel" id="f2">
					  <ul class="slides">
					     @foreach($albums as $album)
					    <li>
					      <img src="{{asset('upload/hinhanh/'.$album->photo)}}" />
					    </li>
					    @endforeach
					  </ul>
					</div>
				</div>
			</div>
		</div>
	</section>
</main>

@endsection