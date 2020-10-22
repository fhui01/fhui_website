<!DOCTYPE html>
<html class="no-js" <?php language_attributes();?>>
<head>
	<meta charset="<?php bloginfo('charset');?>">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<?php wp_head();?>
</head>
<body <?php body_class();?>>
	<header id="site-header" class="header-footer-group" role="banner">
		<nav class="primary-menu-wrapper" role="navigation">
			<ul class="primary-menu reset-list-style">
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
	</header>
