$(document).ready(function(){

	$('body').removeClass('nojs').addClass('js');

	function breakpoint(){
		if($('#mob').css('display')=='block'){return'mob';}
		else{return'big';}
	}

	$('.fa-search.on').click(function(){
		$('#searchfrm').slideToggle('slow');
	});

	$('.fa-bars.on').click(function(){
		$('#head').toggleClass('menuon');
	});

	$('.menu-item-has-children').each(function(){
		var lnk=$(this).children('a');
		var txt=lnk.text();
		lnk.remove();
		$(this).prepend('<div class="parent"><span>'+txt+'</span><i class="fas fa-angle-down ico on"></i></div>');
	});

//	$('#mainmenu').children().clone().appendTo('#headmenu').removeClass('max');

	$(window).scroll(function(){
		if($(this).scrollTop()>150){if(breakpoint()==='big'){$('body').addClass('scrolled');}}
		else{if(breakpoint()==='big'){$('body').removeClass('scrolled');}}
	}).scroll();

});
