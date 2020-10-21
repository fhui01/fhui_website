<!DOCTYPE html>
<html class="no-js" <?php language_attributes();?>>
<head>
	<meta charset="<?php bloginfo('charset');?>">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;400;700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@0,300;0,400;0,900;1,300;1,400;1,900&display=swap" rel="stylesheet">
	<link href="<?php echo get_stylesheet_uri();?>" rel="stylesheet">
	<script src="https://kit.fontawesome.com/a5384ee6a2.js" crossorigin="anonymous"></script>
</head>
<body <?php body_class();?>>
	<header id="mainhead" role="banner">
		<div id="headbg">

			<div id="topbar">
				<div class="max flx">
					<div id="socbar">
						<ul>
							<li class="soc"><a href=""><i class="fab fa-facebook-f"></i></a></li>
							<li class="soc"><a href=""><i class="fab fa-twitter"></i></a></li>
							<li class="soc"><a href=""><i class="fab fa-instagram"></i></a></li>
							<li class="soc"><a href=""><i class="fab fa-youtube"></i></a></li>
							<li id="lang"><a href=""><span>English</span></a></li>
						</ul>
					</div>
					<nav id="topmenubox" role="navigation">
						<ul class="menu" id="topmenu">
<?php
if(has_nav_menu('top')){
	wp_nav_menu(
		array(
			'container'=>'',
			'items_wrap'=>'%3$s',
			'theme_location'=>'top',
		)
	);
}
?>
						</ul>
						<div id="searchbig">
							<i class="fas fa-search ico on"></i>
							<form role="search" method="get" class="search-form" id="searchfrm" action="<?php echo esc_url(home_url('/'));?>">
								<fieldset>
									<input type="search" id="searchtxt" class="search-field" placeholder="<?php echo esc_attr_x('Search &hellip;','placeholder','fhui');?>" value="<?php echo get_search_query();?>" name="s" />
									<input type="submit" class="search-submit" value="<?php echo esc_attr_x('Search','submit button','fhui');?>" id="searchbut" />
								</fieldset>
							</form>
						</div>
					</nav>
				</div>
			</div>

			<div id="mainlogo">
				<div class="max">
					<i class="fas fa-bars ico on"></i>
					<a href="index.php" class="logo big" id="biglogo"><img src="<?php echo get_template_directory_uri();?>/img/fhui.jpg" alt="Fakultas Hukum Universitas Indonesia"></a>
					<a href="index.php" class="logo mob" id="moblogo"><img src="<?php echo get_template_directory_uri();?>/img/fhui-small.jpg" alt="Fakultas Hukum Universitas Indonesia"></a>
					<a href="dalam.php" class="logo big tema" id="bigtema"><img src="<?php echo get_template_directory_uri();?>/img/tema.jpg" alt="Dirgahayu Republik Indonesia"></a>
					<a href="dalam.php" class="logo mob tema" id="mobtema"><img src="<?php echo get_template_directory_uri();?>/img/tema.jpg" alt="Dirgahayu Republik Indonesia"></a>
					<i class="fas fa-search ico on"></i>
				</div>
			</div>
			
			<nav id="mainmenubox" role="navigation">
				<ul class="max menu mainmenu">
<?php
if(has_nav_menu('primary')){
	wp_nav_menu(
		array(
			'container'=>'',
			'items_wrap'=>'%3$s',
			'theme_location'=>'primary',
		)
	);
}
?>
				</ul>
			</nav>

		</div>
	</header>


