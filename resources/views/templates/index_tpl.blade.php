@extends('index')
@section('content')
<?php
$setting = Cache::get('setting');
$sliders = DB::table('slider')->select()->where('status',1)->where('com','gioi-thieu')->orderBy('created_at','desc')->get();
$about_home = DB::table('about')->where('com','gioi-thieu')->first();
$cateMenu = DB::table('product_categories')->where('noibat',1)->where('status',1)->take(4)->get();
?>
<main class="b3">
	<section class="slider">
		<div class="container-flush">
			<div class="slider-wrap">
				<div id="slider">
					@foreach($sliders as $k=>$slider)
					<a href="#" title=""><img class="slider-img" src="{{asset('upload/hinhanh/'.$slider->photo)}}" alt="slider-img" title="#caption{{$k}}" /></a>
					@endforeach
				</div>
			</div>	
		</div>
	</section>
	<!-- regis -->
	<section id="regis-section" class="regis-section" style="background: url({{ asset('public/images/regisbg.png')  }});">
		<div class="container">
			<form  class="regis-sfrm">
				{{csrf_field()}}
				<div class="row justify-content-around">
					<div class="col-lg-2 col-md-4 col-sm-4">
						<div class="regis-sfrm-group wow fadeInUp" data-wow-offset='150'>
							<input name="time" type="time" class="time_book form-control" required="required">
							<label for=""><i class="far fa-clock"></i> Giờ</label>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 col-sm-4">
						<div class="regis-sfrm-group wow fadeInUp" data-wow-offset='150'>
							<input name="date" type="date" class="date_book form-control" required="required">
							<label for=""><i class="far fa-calendar-alt"></i> Ngày</label>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 col-sm-4">
						<div class="regis-sfrm-group wow fadeInUp" data-wow-offset='150'>
							<input name="quan" type="number" class="numb_book form-control" required="required" >
							<label for=""><i class="far fa-user"></i> Số lượng</label>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 col-sm-4">
						<div class="regis-sfrm-group wow fadeInUp" data-wow-offset='150'>
							<input name="tel" type="tel" class="phone_book form-control" required="required">
							<label for=""><i class="fas fa-phone-volume"></i> Số điện thoại</label>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 col-sm-4 text-center wow fadeInUp" data-wow-offset='150'>
						<button type="submit" class="btn text-uppercase regis-btn">Đặt bàn</button>
					</div>
				</div>
			</form>
		</div>
	</section>
	<!--  -->
	<section class="abouts">
		<div class="container">
			<div class="row">
				<div class="col-md-6 d-flex align-items-center">
					<div class="abouts-l">
						<h2 class="s30 t1 f1 text-center abouts-l-tit wow fadeInUp" data-wow-offset='150'>{!! $about_home->name !!}</h2>
						<div class="text-justify abouts-l-wrap wow fadeInUp" data-wow-offset='150'>
							{!! $about_home->mota !!}
						</div>
						<div class="my-3 text-center wow fadeInUp" data-wow-offset='150'>
							<a href="{{url('')}}" title="" class="btn text-uppercase main-btn">Chi tiết</a>
						</div>
					</div>
					
				</div>
				<div class="col-md-6 wow fadeInUp" data-wow-offset='150'>
					<img src="{{asset('upload/hinhanh/'.$about_home->photo)}}" title="" alt="">
				</div>
			</div>
			
		</div>
	</section>
	<!--  -->
	<section class="cate">
		<div class="container-fluid">
			<div class="flexslider carousel cate-slider">
			  <ul class="slides">
			  	@foreach($cateMenu as $menu)
			    <li>
				    <article class="cate-item">
						<figure class="cate-img">
							<a aria-label="{{$menu->name}}" href="{{ url('menu/'.$menu->alias) }}" title=""><img src="{{asset('upload/product/'.$menu->photo)}}" alt="{{$menu->name}}" title="{{$menu->name}}"></a>
						</figure>
						<figcaption class="d-flex align-items-center justify-content-md-between justify-content-around flex-wrap cate-info">
							<h2 class="sbold t1 text-uppercase cate-info-tit"><a href="{{ url('menu/'.$menu->alias) }}" title="">{{$menu->name}}</a></h2>
							<a href="{{ url('menu/'.$menu->alias) }}" class="btn text-uppercase main-btn">Chi tiết</a>
						</figcaption>
					</article>
			    </li>
			    @endforeach
			    <!-- items mirrored twice, total of 12 -->
			  </ul>
			</div>
		</div>
	</section>
	
	<section class="khonggian">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="row kg-row">
						@foreach($khonggian as $kg)
						<div class="col-6 wow fadeInUp" data-wow-offset='150'>
							<div class="kg-link">
							<a aria-label="{{$kg->name}}" href="{{asset('upload/hinhanh/'.$kg->photo)}}" data-fancybox="gallery" title=""><img src="{{asset('upload/hinhanh/'.$kg->photo)}}" alt="" title=""></a></div>
						</div>
						@endforeach
					</div>
				</div>
				<div class="col-sm-6 d-flex align-items-center">
					<div class="kg-r">
						<h2 class="f1 t1 s30 text-center kg-tit wow fadeInUp" data-wow-offset='150'>{{$about_khonggian->name}}</h2>
						<div class="text-justify abouts-l-wrap">
							{!! $about_khonggian->content !!}
						</div>
						<div class="mt-3 text-center wow fadeInUp" data-wow-offset='150'>
							<a href="{{url('khong-gian')}}" title="" class="btn text-uppercase main-btn">Chi tiết</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- tes -->
	<section class="tes">
		<div class="container">
			<h2 class="f1 t1 s30 text-center tes-tit wow fadeInUp" data-wow-offset='150'>Đánh giá của khách hàng</h2>
			<div class="row justify-content-center">
				<div class="col-lg-10">
					<div class="tes-slider wow fadeInUp" data-wow-offset='150'>
						<div class="tes-wrap">
							@foreach($customer as $cus)
							<article class="tes-item">
								<figure class="text-center tes-img"><img src="{{asset('upload/hinhanh/'.$cus->photo)}}" alt="" title=""></figure>
								<figcaption class="tes-info">
									<h3 class="bold s16 t1 text-capitalize text-center py-4 tes-info-name">{{$cus->name}}</h3>
									<div class="tes-info-content">
										<p>{!! $cus->content !!}</p>
									</div>
								</figcaption>
							</article>
							@endforeach
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="bg-white brand">
		<div class="container">
			<h2 class="f1 t1 s30 text-center tes-tit wow fadeInUp" data-wow-offset='150'>Đối tác của chúng tôi</h2>
			
			<div class="brand-slider carousel">
			  <ul class="slides">
			    @foreach($partners as $partner)
			    <li>
			      <img src="{{asset('upload/banner/'.$partner->photo)}}" alt="" />
			    </li>
			    @endforeach
			  </ul>
			</div>
		</div>
	</section>
</main>
@endsection
