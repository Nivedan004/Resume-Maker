//# sourceMappingURL=scripts.js.map
var process=process||{env:{NODE_ENV:"development"}};
(function(a){a(window).on("load",function(){a(".preloader").delay(700).fadeOut(500)});var h=a(".header_wrap:not('.sidebar_menu')").height()-10;a("a.page-scroll").on("click",function(b){if(location.pathname.replace(/^\//,"")===this.pathname.replace(/^\//,"")&&location.hostname===this.hostname){var c=a(this.hash),d=a(this).data("speed")||800;c=c.length?c:a("[name="+this.hash.slice(1)+"]");c.length&&(b.preventDefault(),a("html, body").animate({scrollTop:c.offset().top-h},d))}});a(window).on("scroll",
function(){80<=a(window).scrollTop()?a("header").addClass("nav-fixed"):a("header").removeClass("nav-fixed")});a(document).on("ready",function(){a(".dropdown-menu a.dropdown-toggler").on("click",function(){a(this).next().hasClass("show")||a(this).parents(".dropdown-menu").first().find(".show").removeClass("show");a(this).next(".dropdown-menu").toggleClass("show");a(this).parent("li").toggleClass("show");a(this).parents("li.nav-item.dropdown.show").on("hidden.bs.dropdown",function(){a(".dropdown-menu .show").removeClass("show")});
return!1})});var g=a(".header_wrap"),k=g.find(".navbar-collapse ul li a.page-scroll");a.each(k,function(){a(this).on("click",function(){g.find(".navbar-collapse").collapse("hide");a("header").removeClass("active")})});a(".navbar-toggler").on("click",function(){a("header").toggleClass("active")});992<=a(window).width()?0<a(".header_wrap.sidebar_menu,.portfolio_modal .modal-content").length&&a(".header_wrap.sidebar_menu,.portfolio_modal .modal-content").mCustomScrollbar({theme:"dark"}):0<a(".header_wrap .navbar-collapse, .portfolio_modal .modal-content").length&&
a(".header_wrap .navbar-collapse, .portfolio_modal .modal-content").mCustomScrollbar({theme:"dark"});a(".owl-thumbs-slider").owlCarousel({loop:!1,items:4,dots:!1,margin:10,nav:!0,thumbs:!0,navText:['<i class="ion-ios-arrow-back"></i>','<i class="ion-ios-arrow-forward"></i>']});a(window).on("load",function(){a(".carousel_slider").each(function(){var b=a(this);b.owlCarousel({dots:b.data("dots"),loop:b.data("loop"),items:b.data("items"),margin:b.data("margin"),mouseDrag:b.data("mouse-drag"),touchDrag:b.data("touch-drag"),
autoHeight:b.data("autoheight"),center:b.data("center"),nav:b.data("nav"),rewind:b.data("rewind"),navText:['<i class="ion-ios-arrow-back"></i>','<i class="ion-ios-arrow-forward"></i>'],autoplay:b.data("autoplay"),animateIn:b.data("animate-in"),animateOut:b.data("animate-out"),autoplayTimeout:b.data("autoplay-timeout"),smartSpeed:b.data("smart-speed"),responsive:b.data("responsive")})})});a(window).on("load",function(){var b=a(".grid_container");a(document).ready(function(){0<b.length&&b.imagesLoaded(function(){b.hasClass("masonry")?
b.isotope({itemSelector:".grid_item",percentPosition:!0,layoutMode:"masonry",masonry:{columnWidth:".grid-sizer"}}):b.isotope({itemSelector:".grid_item",percentPosition:!0,layoutMode:"fitRows"})})});a(document).on("click",".grid_filter > li > a",function(){a(".grid_filter > li > a").removeClass("current");a(this).addClass("current");var c=a(this).data("filter");b.hasClass("masonry")?b.isotope({itemSelector:".grid_item",layoutMode:"masonry",masonry:{columnWidth:".grid_item"},filter:c}):b.isotope({itemSelector:".grid_item",
layoutMode:"fitRows",filter:c});return!1});a(window).on("resize",function(){setTimeout(function(){b.find(".grid_item").removeClass("animation").removeClass("animated");b.isotope("layout")},300)})});a(".grid_item .image_popup").on("click",function(){a(this).find(".link_container").magnificPopup("open")});a(".link_container").each(function(){a(this).magnificPopup({delegate:".image_popup",type:"image",gallery:{enabled:!0}})});a("#submitButton").on("click",function(b){b.preventDefault();b=a("form").serialize();
a.ajax({type:"POST",dataType:"json",url:"contact.php",data:b,success:function(c){"error"===c.type?(a("#alert-msg").removeClass("alert-msg-success"),a("#alert-msg").addClass("alert-msg-failure")):(a("#alert-msg").addClass("alert-msg-success"),a("#alert-msg").removeClass("alert-msg-failure"),a("#first-name").val("Enter Name"),a("#email").val("Enter Email"),a("#subject").val("Enter Subject"),a("#description").val("Enter Message"));a("#alert-msg").html(c.msg);a("#alert-msg").show()},error:function(c,
d){alert(d)}})});a(window).on("scroll",function(){150<a(this).scrollTop()?a(".scrollup").fadeIn():a(".scrollup").fadeOut()});a(".scrollup").on("click",function(b){b.preventDefault();a("html, body").animate({scrollTop:0},600);return!1});a(".content-popup").magnificPopup({type:"inline",preloader:!0,mainClass:"mfp-zoom"});a(".image_gallery").each(function(){a(this).magnificPopup({delegate:"a",type:"image",gallery:{enabled:!0},zoom:{enabled:!0,duration:300,opener:function(b){return b.find("img")}}})});
a(document).on("ready",function(){a(".popup-ajax").magnificPopup({type:"ajax"})});a(".portfolio_item .image_popup").on("click",function(){a(this).find(".link_container").magnificPopup("open")});a(".link_container").each(function(){a(this).magnificPopup({delegate:".image_popup",type:"image",gallery:{enabled:!0}})});a(document).on("ready",function(){a(".video_popup, .iframe_popup").magnificPopup({type:"iframe",mainClass:"mfp-fade",removalDelay:160,preloader:!1,fixedContentPos:!1})});a(function(){function b(c,
d){c.each(function(){var e=a(this),l=e.attr("data-animation"),f=e.attr("data-animation-delay");e.css({"-webkit-animation-delay":f,"-moz-animation-delay":f,"animation-delay":f,opacity:0});(d?d:e).waypoint(function(){e.addClass("animated").css("opacity","1");e.addClass("animated").addClass(l)},{triggerOnce:!0,offset:"90%"})})}b(a(".animation"));b(a(".staggered-animation"),a(".staggered-animation-wrap"))});a(".background_bg").each(function(){var b=a(this).attr("data-img-src");"undefined"!==typeof b&&
!1!==b&&a(this).css("background","url("+b+") center center/cover")});a(document).on("ready",function(){a(".progress .progress-bar").css("width",function(){return a(this).attr("aria-valuenow")+"%"});a(".count_pr").css("left",function(){return a(this).attr("data-percent")+"%"})});a(".counter").counterUp({time:1500});a(window).on("load",function(){a(".parallax_bg").parallaxBackground()})})(jQuery);