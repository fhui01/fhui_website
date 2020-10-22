	<footer>
		<div class="max">
			<div id="alamat">
				<div class="box">
					<div class="fhui" id="foot-logo">
						<img src="img/makara-foot.jpg">
						<div class="logotext">
							<div class="ui">Universitas Indonesia</div>
							<div class="fh">Fakultas Hukum</div>
						</div>
					</div>
					<div class="alamat">
						<p><strong>Kampus Depok</strong></p>
						<p>Jl. Prof. MR. Djokosoetono,<br /> Kampus Universitas Indonesia <br />Depok 16424</p>
					</div>
					<div class="alamat">
						<i class="fas fa-phone-alt"></i>
						<ul>
							<li>62.21.727.0003</li>
							<li>62.21.727.0052</li>
						</ul>
					</div>
					<div class="alamat">
						<i class="fas fa-fax"></i>
						<ul>
							<li>62.21.727.0003</li>
							<li>62.21.727.0052</li>
						</ul>
					</div>
					<div class="alamat">
						<i class="fas fa-envelope"></i>
						<ul>
							<li>law<i class="fas fa-at"></i>ui.ac.id</li>
						</ul>
					</div>
				</div>
			</div>
			<div id="links">
				<div class="box">
					<ul>
						<li><a href="dalam.php">Buletin</a></li>
						<li><a href="dalam.php">Siaran Pers</a></li>
						<li><a href="dalam.php">Kunjungan</a></li>
						<li><a href="dalam.php">Informasi Publik</a></li>
						<li><a href="dalam.php">Layanan Darurat</a></li>
						<li><a href="dalam.php">Sistem dan Teknologi Informasi</a></li>
					</ul>
					<ul>
						<li><a href="dalam.php">Akreditasi</a></li>
						<li><a href="dalam.php">Organisasi dan Keanggotaan</a></li>
						<li><a href="dalam.php">ISO 9001 2004</a></li>
					</ul>
					<ul>
						<li><a href="dalam.php">Dekanat</a></li>
						<li><a href="dalam.php">Struktur dan Direktori</a></li>
						<li><a href="dalam.php">Profil Pengajar</a></li>
						<li><a href="dalam.php">Bidang-bidang Studi</a></li>
						<li><a href="dalam.php">Lembaga Riset, Pengabdian Masyarakat dan Ventura</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="copyright">
			<div class="max">
				<i class="far fa-copyright"></i>2020, Fakultas Hukum Universitas Indonesia
			</div>
		</div>
	</footer>
	<div class="mob" id="mob"></div>
	<div class="big" id="big"></div>
	<div id="load"><i class="fas fa-spinner fa-pulse"></i></div>
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script>
		$('#main').hide();
		$('#load').css('display','flex');
		$(document).ready(function(){
			$('#load').fadeOut(1000);
			$('#main').fadeIn(1000);
			$('body').removeClass('nojs').addClass('js');
			function bodyReset(){$('body').removeClass('scrolled');}
			function headReset(){$('#head').removeClass('menuon');}
			function searchReset(){$('#searchfrm').attr('style','');}
			function menuReset(){$('.menu .chi,.menu .chi .max').attr('style','');}
			function breakpoint(){
				if($('#mob').css('display')=='block'){return'mob';}
				else{return'big';}
			}
			$('.fa-search.on').click(function(){
				$('#searchfrm').slideToggle('slow');
			});
			$('.fa-bars.on').click(function(){
				searchReset();
				menuReset();
				$('#head').toggleClass('menuon');
			});
			$('.menu i.fa-angle-down').click(function(){
				if($(this).hasClass('act'))
				{
					var par=$(this).parents('li.par');
					var chi=par.find('.chi');
					$('.menu .chi').not(chi).slideUp('slow');
					chi.slideToggle('slow');
				}
			});
			$('#mainmenu').children().clone().appendTo('#headmenu').removeClass('max');
			$('#media>.max').children().clone().appendTo('#buletin-rgt');
			$('#foot').after($('#box-pengumuman'));
			$('#box-pengumuman .ico').click(function(){
				$(this).parent('#box-pengumuman').toggleClass('min');
			});
			function slickHeight(){
				$('.slickHeight').each(function(){
					height=0;
					$(this).find('.item').each(function(){
						$(this).css('height','');
						if($(this).height()>height){height=$(this).height();}
					});
					$(this).height(height).find('.item').height(height);
				});
			}

			$.getScript('slick/slick.min.js',function(){
				$('.slick').each(function(){
					$(this).slick({
						'autoplay':true,
						'prevArrow':'<i class="fas fa-chevron-left"></i>',
						'nextArrow':'<i class="fas fa-chevron-right"></i>',
						'appendArrows':$(this),
						'dots':true,
						'appendDots':$(this),
						'draggable':false,
						'fade':true,
						'zIndex':5
					});
				});
				$('#slick-slider').slick('slickSetOption',{
					'autoplaySpeed':5000,
				});
			});
			$(window).resize(function(){
//				slickHeight();
				menuReset();
				if(breakpoint()==='mob'){$('.menu i.fa-angle-down').addClass('act');}
				else{$('.menu i.fa-angle-down').removeClass('act');}
			}).resize();

			$(window).scroll(function(){
				if($(this).scrollTop()>150)
				{
					if(breakpoint()==='big')
					{
						$('body').addClass('scrolled');
					}
				}
				else
				{
					if(breakpoint()==='big'){
						$('body').removeClass('scrolled');
					}
				}
			}).scroll();

		});
	</script>
</body>
</html>
