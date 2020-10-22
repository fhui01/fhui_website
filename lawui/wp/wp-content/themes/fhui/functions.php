<?php
/*
*	FHUI functions and definitions
*
*	@link https://developer.wordpress.org/themes/basics/theme-functions/
*
*	@package WordPress
*	@subpackage FHUI
*	@since FHUI 1.0
*/

function fhui_theme_support(){
	add_theme_support('title-tag');
	add_theme_support(
		'html5',array(
			'search-form',
			'script',
			'style',
		)
	);
	load_theme_textdomain('fhui');
}


function fhui_menus(){
	$locations=array(
		'primary'=>__('Desktop Horizontal Menu','fhui'),
		'expanded'=>__('Desktop Expanded Menu','fhui'),
		'mobile'=>__('Mobile Menu','fhui'),
		'footer'=>__('Footer Menu','fhui'),
		'social'=>__('Social Menu','fhui'),
	);
	register_nav_menus($locations);
}
add_action('init','fhui_menus');

