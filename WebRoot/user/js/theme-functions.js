$(document).ready(function() {
	//Tab Jquery
	$(".tab_content").hide(); 
	$("ul.tabs li:first").addClass("active").show(); 
	$(".tab_content:first").show(); 
	$("ul.tabs li").click(function() {
		$("ul.tabs li").removeClass("active");
		$(this).addClass("active"); 
		$(".tab_content").hide(); 
		var activeTab = $(this).find("a").attr("href"); 
		$(activeTab).fadeIn(); 
		return false;
	});
	
	//To top Jquery
	$().UItoTop({ easingType: 'easeOutQuart' });	
	
	//Social fade Jquery  
	$('.rssfade, .fbfade, .twfade, .drbfade').append('<span class="hover"></span>').each(function () {
	var $span = $('> span.hover', this).css('opacity', 0);
	$(this).hover(function () {
	  $span.stop().fadeTo(400, 1);
	}, function () {
	  $span.stop().fadeTo(500, 0);
	});	 
  
	//Flexslider Jquery
	$('.flexslider').flexslider();	
	
	//Fancybox Jquery
	$(".fancybox").fancybox({
		padding: 10,

		openEffect : 'elastic',
		openSpeed  : 250,

		closeEffect : 'elastic',
		closeSpeed  : 250,

		closeClick : true,

		helpers : {
			overlay : {
				opacity : 0.65
			}
		}
	});	
	
	//Fade portfolio
	$(".fade").fadeTo(1, 1);
		$(".fade").hover(
		  function () {$(this).fadeTo("fast", 0.45);},
		  function () { $(this).fadeTo("slow", 1);}
		);					
	
	});
});