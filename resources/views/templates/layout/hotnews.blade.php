<div class="col-lg-4 col-md-5">
    <aside class="bg-white bdetail-aside">
        <h2 class="bold s16 text-uppercase bdetail-aside-tit">Tin nổi bật</h2>

        <div class="bdetail-items">
            @foreach($hot_news as $hot)
            <article class="bdetail-aside-item">
                <div class="row no-gutters">
                    <div class="col-4">
                        <div class="bdetail-aside-img text-center">
                            <a href="{{ url('tin-tuc/'.$hot->alias.'.html') }}" title=""><img src="{{asset('upload/news/'.$hot->photo)}}" alt="" title=""></a>
                        </div>
                    </div>
                    <div class="col-8">
                        <h3 class="bdetail-aside-content"><a href="{{ url('tin-tuc/'.$hot->alias.'.html') }}" title="">{{$hot->name}}</a></h3>
                    </div>
                </div>
            </article>
            @endforeach
        </div>
        
    </aside>
    
</div>