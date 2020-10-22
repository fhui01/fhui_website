	<footer id="mainfooter" role="contentinfo">
		<div class="mob" id="mob"></div>
		<div class="big" id="big"></div>
	</footer>
	<script src="<?php echo get_template_directory_uri();?>/js/jquery.min.js"></script>
	<script src="<?php echo get_template_directory_uri();?>/js/jquery-ui.min.js"></script>
	<script>
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

			$('.mainmenu li.menu-item-has-children').each(function(){
				var mid=$(this).attr('id');
				var lnk=$(this).children('a');
				var sub=$(this).children('.sub-menu');
				var txt=lnk.text();
				lnk.remove();
				sub.remove();
				if(mid==='menu-item-45'){var img='2.jpg';}
				else if(mid==='menu-item-54'){var img='3.jpg';}
				else if(mid==='menu-item-64'){var img='4.jpg';}
				else if(mid==='menu-item-73'){var img='5.jpg';}
				$(this).append('<div class="parent"><span>'+txt+'</span><i class="fas fa-angle-down ico on"></i></div><div class="ful"><div class="max"><div class="menu-img"><p>'+txt+'</p><img src="<?php echo get_template_directory_uri();?>/img/menu/'+img+'"></div><ul class="sub-menu">'+sub.html()+'</ul></div></div>');
			});

			function layout(){
				if(breakpoint()=='big')
				{
					$('#headbg').prepend($('#topbar'));
				}
				else
				{
					$('#headbg').prepend($('#mainlogo'));
					$('#headbg').append($('#searchbig'));
				}
			}

			$(window).resize(function(){
				layout();
			}).resize();

			$(window).scroll(function(){
				if($(this).scrollTop()>150){if(breakpoint()==='big'){$('body').addClass('scrolled');}}
				else{if(breakpoint()==='big'){$('body').removeClass('scrolled');}}
			}).scroll();
		
		});
	</script>
</body>
</html>
<?php
