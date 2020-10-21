<?php get_header();?>
<main id="site-content" role="main">
	<?php
	if(is_search()){
		global $wp_query;
		$archive_title=sprintf(
			'%1$s %2$s',
			'<span class="color-accent">'.__('Search:','fhui').'</span>',
			'&ldquo;'.get_search_query().'&rdquo;'
		);
		if($wp_query->found_posts){$archive_subtitle=sprintf(_n('We found %s result for your search.','We found %s results for your search.',$wp_query->found_posts,'fhui'),number_format_i18n($wp_query->found_posts));}
		else{$archive_subtitle=__('We could not find any results for your search. You can give it another try through the search form below.','fhui');}
	}
	elseif(is_archive()&&!have_posts()){$archive_title=__('Nothing Found','fhui');}
	elseif(!is_home()){
		$archive_title=get_the_archive_title();
		$archive_subtitle=get_the_archive_description();
	}
	if($archive_title||$archive_subtitle){
	?>
	<header class="archive-header has-text-align-center header-footer-group">
		<?php if($archive_title){?><h1 class="archive-title"><?php echo wp_kses_post($archive_title);?></h1><?php}?>
		<?php if($archive_subtitle){?><div class="archive-subtitle section-inner thin max-percentage intro-text"><?php echo wp_kses_post(wpautop($archive_subtitle));?></div><?php}?>
	</header>
	<?php
	}
	if(have_posts()){
		$i=0;
		while(have_posts()){
			$i++;
			the_post();
			get_template_part('template-parts/content',get_post_type());
		}
	}
	elseif(is_search()){
	?>
	<div class="no-search-results-form section-inner thin">
		<?php get_search_form(array('label'=>__('search again','fhui')));?>
	</div>
	<?php
	}
	get_template_part('template-parts/pagination');?>
</main>
<?php
get_footer();
