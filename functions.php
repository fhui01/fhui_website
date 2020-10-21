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
		'primary'=>__('Menu Utama','fhui'),
		'top'=>__('Menu Atas','fhui'),
		'footer'=>__('Menu Kaki','fhui'),
		'social'=>__('Menu Sosmed','fhui')
	);
	register_nav_menus($locations);
}
add_action('init','fhui_menus');

function disable_emoji(){
	remove_action('wp_head','print_emoji_detection_script',7);
	remove_action('admin_print_scripts','print_emoji_detection_script');
	remove_action('wp_print_styles','print_emoji_styles');
	remove_action('admin_print_styles','print_emoji_styles');	
	remove_filter('the_content_feed','wp_staticize_emoji');
	remove_filter('comment_text_rss','wp_staticize_emoji');	
	remove_filter('wp_mail','wp_staticize_emoji_for_email');
	add_filter('tiny_mce_plugins','disable_emojis_tinymce');
}
add_action('init','disable_emoji');

function disable_emoji_tinymce($plugins){
	if(is_array($plugins)){return array_diff($plugins,array('wpemoji'));}
	else{return array();}
}


add_filter('use_block_editor_for_post_type','__return_false',10);
add_action('wp_enqueue_scripts','remove_block_css',100);
function remove_block_css(){
	wp_dequeue_style('wp-block-library');
	wp_dequeue_style('wp-block-library-theme');
}

add_action('after_setup_theme','clean_head');
function clean_head(){
	remove_action('wp_head','rest_output_link_wp_head',10);
	remove_action('template_redirect','rest_output_link_header',11,0);
	remove_action('wp_head','wp_shortlink_wp_head');
}

function disable_json_api(){
	add_filter('json_enabled','__return_false');
	add_filter('json_jsonp_enabled','__return_false');
	add_filter('rest_enabled','__return_false');
	add_filter('rest_jsonp_enabled','__return_false');
}
add_action('after_setup_theme','disable_json_api');



remove_action('rest_api_init','wp_oembed_register_route');
add_filter('embed_oembed_discover','__return_false');
remove_filter('oembed_dataparse','wp_filter_oembed_result',10);
remove_action('wp_head','wp_oembed_add_discovery_links');
remove_action('wp_head','wp_oembed_add_host_js');

add_action( 'admin_init', 'my_add_meta_box' );








function fhui_post_types(){
	register_post_type(
		'slider',
		array(
			'labels'=>array(
				'name'=>__('Slider','fhui'),
				'singular_name'=>__('Slider','fhui'),
			),
			'public'=>true,
			'exclude_from_search'=>true,
			'has_archive'=>false,
			'rewrite'=>false,
		)
	);
	register_post_type(
		'berita',
		array(
			'labels'=>array(
				'name'=>__('Berita','fhui'),
				'singular_name'=>__('Berita','fhui'),
			),
			'public'=>true,
			'has_archive'=>true,
		)
	);
}
add_action('init','fhui_post_types');

