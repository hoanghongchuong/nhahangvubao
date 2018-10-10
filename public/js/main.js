$(document).ready(function($){
    $('.regis-sfrm').on('submit', function(){
        var time = $('.time_book').val();
        var date = $('.date_book').val();
        var numb = $('.numb_book').val();
        var phone = $('.phone_book').val();
        var token = $('input[name="_token"]').val();
       
        $.ajax({
            url: baseUrl() + '/dat-ban',
            type: 'POST',
            cache: false,
            data: {
                time: time,
                date: date,
                numb: numb,
                phone: phone,
                _token :token
            },
            success: function(res){
                if(res == 1){
                    // $('#info-modal').modal('show');
                    $('#regis-modal').modal('hide');
                }
            }
        });    
    });



  $('#f2').flexslider({
        animation: "slide",
        controlNav: true,
        animationLoop: false,
        slideshow: false,
        itemWidth: 110,
        itemMargin: 10,
        asNavFor: '#f1',
        minItems: 2,
      maxItems: 7,
      });
     
      $('#f1').flexslider({
        animation: "slide",
        controlNav: false,
        animationLoop: false,
        slideshow: false,
        sync: "#f2"
      });
  $('.cate-wrap').on('click', function(){
    $('.cate-list').toggleClass('on');
  });

  if($('header.fixed-top').length){
    $(window).scroll(function(){
      /*var anchor = $('header.top').offset().top;*/
      var anchor = $('header.fixed-top').offset().top;
      /*console.log(anchor);*/
      if(anchor >= 130){
          $('header.fixed-top').addClass('cmenu');
          $('.cate-list').removeClass('on');
      }
      else{
          $('header.fixed-top').removeClass('cmenu');
      }
    });
  }

  new WOW().init();
  if($('.to-top').length){
    $('.to-top').on('click',function(event){
        event.preventDefault();
    $('body, html').stop().animate({scrollTop:0},800)});
    $(window).scroll(function(){
        var anchor=$('.to-top').offset().top;
        if(anchor>1000){
            $('.to-top').css('opacity','1')
        }
        else{
            $('.to-top').css('opacity','0')
        }
    });
  }

  $("#menu").mmenu({
    "extensions": [
          "pagedim-black",
          "shadow-panels"
       ]
      // options
      /*"offCanvas": {
              "position": "right"
          }*/
    }, {
        // configuration
        clone: true
  });

  //Tooltip
  $('[data-toggle="tooltip"]').tooltip();

   /* nivoSlider */ 
  $("#slider").nivoSlider({ 
    effect: 'random',                 // Specify sets like: 'fold,fade,sliceDown' 
    slices: 15,                       // For slice animations 
    boxCols: 8,                       // For box animations 
    boxRows: 4,                       // For box animations 
    animSpeed: 700,                   // Slide transition speed 
    pauseTime: 4000,                  // How long each slide will show 
    startSlide: 0,                    // Set starting Slide (0 index) 
    directionNav: false,               // Next & Prev navigation 
    controlNav: true,                 // 1,2,3... navigation 
    controlNavThumbs: false,          // Use thumbnails for Control Nav 
    pauseOnHover: true,               // Stop animation while hovering 
    manualAdvance: false,             // Force manual transitions 
    randomStart: true,               // Start on a random slide 
    beforeChange: function(){},       // Triggers before a slide transition 
    afterChange: function(){},        // Triggers after a slide transition 
    slideshowEnd: function(){},       // Triggers after all slides have been shown 
    lastSlide: function(){},          // Triggers when last slide is shown 
    afterLoad: function(){}           // Triggers when slider has loaded 
  });

  $('.nivo-controlNav .nivo-control').html('<span class="dots"></span>');

  function getGridSize() {
    return  (window.innerWidth < 320) ? 290 :
            (window.innerWidth < 375) ? 355 :
            (window.innerWidth < 425) ? 400 :
            (window.innerWidth < 992) ? 380 : 300;
  }
  $('.flexslider').flexslider({
    animation: "slide",
    animationLoop: true,
    itemWidth: getGridSize(),//300
    itemMargin: 30,
    minItems: 1,
    maxItems: 3,
    prevText: "",           //String: Set the text for the "previous" directionNav item
    nextText: "",
    controlNav:false,//dots option
  });
  $('.tes-slider').flexslider({
    selector: ".tes-wrap > .tes-item",
    animation: "slide",
    animationLoop: true,
    itemWidth: 400,
    itemMargin: 50,
    controlNav:true,//dots option
    directionNav:false,//nav
    minItems: 1,
    maxItems: 2
  });
  $('.brand-slider').flexslider({
    /*selector: ".brand-wrap > .brand-img",*/
    animation: "slide",
    animationLoop: true,
    directionNav:false,//nav
    itemWidth: 150,
    itemMargin: 30,
    minItems: 2,
    maxItems: 5
  });
  $('.td-slider').flexslider({
    selector: ".td-wrap > .tes-item",
    animation: "slide",
    animationLoop: true,
    controlNav:true,//dots option
    directionNav:false,//nav
    itemWidth: getGridSize(),//240
    itemMargin: 35,
    minItems: 1,
    maxItems: 3
  });

  if($("[data-fancybox]").length){
    $("[data-fancybox]").fancybox({
      caption : function( instance, item ) {
        var caption = $(this).data('caption') || '';

        if ( item.type === 'images' ) {
            caption = (caption.length ? caption + '<br />' : '') + '<a href="' + item.src + '">Download image</a>' ;
        }

        return caption;
      },
      infobar: true,
    });
    /*if($('.linkyoutube').length) {
      var url = $('.linkyoutube').attr('href').replace('watch?v=', 'embed/');
      $('.linkyoutube').attr('href', url);
      $('.linkyoutube').each(function(index, el) {
        $(this).attr('href').replace('watch?v=', 'embed/').attr('href', url);
      });
    } */
  }
  
  $('.regis-link').click(function(e){
    e.preventDefault();
    $('.on').removeClass('on');
    el = $(this);
    name = el.attr('href');
    if($(window).width() >= 992) {
        pos = $(name).position().top - 80;
    }
    else {
        pos = $(name).position().top;
    }
    el.addClass('on');
    $('html,body').stop().animate({scrollTop:pos},600);
    return false;
});
});