<!DOCTYPE html>
<html lang="id" dir="ltr">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>Dalam</title>
	<script src="https://kit.fontawesome.com/a5384ee6a2.js" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;400;700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@0,300;0,400;0,900;1,300;1,400;1,900&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Cormorant+Upright:wght@500;700&display=swap" rel="stylesheet">
	<link href="slick/slick.css" rel="stylesheet">
	<link href="style.css" rel="stylesheet">
</head>
<body class="nojs unit">
	<div id="main">
		<div id="head">
			<div id="headbg">
				<div id="topbar">
					<div class="max flx">
						<?php include_once('inc/socbar.php');?>
						<div id="topmenubox">
							<?php include_once('inc/topmenu.php');?>
							<div id="searchbig">
								<i class="fas fa-search ico on"></i>
								<form id="searchfrm">
									<fieldset>
										<input type="text" id="searchtxt" name="search" placeholder="Cari">
										<input type="submit" id="searchbut">
									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div id="mainhead">
					<div class="max">
						<i class="fas fa-bars ico on"></i>
						<a href="index.php" class="logo big" id="biglogo"><img src="img/fhui.jpg" alt="Fakultas Hukum Universitas Indonesia"></a>
						<a href="index.php" class="logo mob" id="moblogo"><img src="img/fhui-small.jpg" alt="Fakultas Hukum Universitas Indonesia"></a>
						<a href="index.php" class="logo" id="mobtema"><img src="img/tema.jpg" alt="Dirgahayu Republik Indonesia"></a>
						<i class="fas fa-search ico on"></i>
						<ul class="menu mainmenu" id="headmenu"></ul>
					</div>
				</div>
				<?php include_once('inc/mainmenu.php');?>
			</div>
			<div class="shd top"></div>
		</div>
		<main>
			<article id="single">
				<header>
					<div class="ful">
						<div class="max">
							<h1>Pendidikan</h1>
							<div id="breadcrumbs">
								<div class="box">
									<a href="index.php">Beranda</a><span> > </span><a href="tentang-fhui.php">Tentang FHUI</a><span> > </span><a href="unit.php">Unit-unit Kerja</a><span> > </span>
								</div>
							</div>
						</div>
					</div>
				</header>
				<div id="content">
					<div class="max">
						<div class="lft" id="content-main">
							<div id="first"></div>
						</div>
						<?php include_once('aside-unit.php');?>
						<div class="clr"></div>
					</div>
				</div>
			</article>
		</main>
		<div id="foot">
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
							<li><a href="index.php">Siaran Pers</a></li>
							<li><a href="index.php">Kunjungan</a></li>
							<li><a href="index.php">Informasi Publik</a></li>
							<li><a href="index.php">Layanan Darurat</a></li>
							<li><a href="index.php">Sistem dan Teknologi Informasi</a></li>
						</ul>
						<ul>
							<li><a href="index.php">Akreditasi</a></li>
							<li><a href="index.php">Organisasi dan Keanggotaan</a></li>
							<li><a href="index.php">ISO 9001 2004</a></li>
						</ul>
						<ul>
							<li><a href="index.php">Dekanat</a></li>
							<li><a href="index.php">Struktur dan Direktori</a></li>
							<li><a href="index.php">Profil Pengajar</a></li>
							<li><a href="index.php">Bidang-bidang Studi</a></li>
							<li><a href="index.php">Lembaga Riset, Pengabdian Masyarakat dan Ventura</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div id="copyright">
				<div class="max">
					<i class="far fa-copyright"></i>2020, Fakultas Hukum Universitas Indonesia
				</div>
			</div>
		</div>
	</div>
	<div class="mob" id="mob"></div>
	<div class="big" id="big"></div>
	<div id="load"><i class="fas fa-spinner fa-pulse"></i></div>
	<script src="jquery.min.js"></script>
	<script src="jquery-ui.min.js"></script>
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
				slickHeight();
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
