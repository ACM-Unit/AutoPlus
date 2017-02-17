$(document).ready(function () {
//--------------------------------------
    $("#MobileMenu").click(function () {
        $("nav").slideToggle("slow")
    });
//--------------------------------------
 $("#Region").click(function () {
	  $("#ChangeRegion").slideToggle("slow")
	  });
//--------------------------------------
 $("#RegionSumy").click(function () {
	 $("#Region").text($(this).text());
	  $("#ChangeRegion").slideToggle("slow")
	  });
//--------------------------------------
 $("#RegionKiev").click(function () {
	 $("#Region").text($(this).text());
	  $("#ChangeRegion").slideToggle("slow")
	  });
//--------------------------------------
    $("#ListSlider").owlCarousel({
        items: 1,
        itemsDesktopSmall: [
            980, 1
        ],
        itemsTablet: [
            767, 1
        ],
        autoPlay: true,
        stopOnHover: false,
        slideSpeed: 200,
        paginationSpeed: 800,
        rewindSpeed: 1000,
        lazyLoad: true,
		navigation: false,
		pagination: true,
        theme: "owl-theme"
    });
//--------------------------------------

//--------------------------------------

//--------------------------------------
  $("#ListNews").owlCarousel({
    items : 1,
    lazyLoad : true,
    navigation : true
	
  }); 
//--------------------------------------
$(".Menu").on("click","a", function (event) {
//отменяем стандартную обработку нажатия по ссылке
event.preventDefault();

//забираем идентификатор бока с атрибута href
var id = $(this).attr('href'),

//узнаем высоту от начала страницы до блока на который ссылается якорь
top = $(id).offset().top;

//анимируем переход на расстояние - top за 1500 мс
$('body,html').animate({scrollTop: top}, 1500);
});
//--------------------------------------
});
//--------------------------------------



//--------------------------------------
//--------------------------------------
//--------------------------------------

//--------------------------------------
//--------------------------------------
//--------------------------------------
//--------------------------------------