<?php
/*
*	The searchform.php template.
*
*	Used any time that get_search_form() is called.
*
*	@link https://developer.wordpress.org/themes/basics/template-hierarchy/
*
*	@package WordPress
*	@subpackage Twenty_Twenty
*	@since Twenty Twenty 1.0
*/
?>
<form role="search" method="get" class="search-form" action="<?php echo esc_url(home_url('/'));?>">
	<label for="search-field">
		<span class="screen-reader-text"><?php _e('Search for:','fhui');?></span>
		<input type="search" id="search-field" class="search-field" placeholder="<?php echo esc_attr_x('Search &hellip;','placeholder','fhui');?>" value="<?php echo get_search_query();?>" name="s" />
	</label>
	<input type="submit" class="search-submit" value="<?php echo esc_attr_x('Search','submit button','fhui');?>" />
</form>
<?php
