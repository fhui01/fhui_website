<?php get_header();?>
<main id="site-content" role="main">
	<?php
	if(have_posts()){
		while(have_posts()){
			the_post();
			if(is_front_page()){get_template_part('template-parts/content','frontpage');}
			else{get_template_part('template-parts/content',get_post_type());}
		}
	}
	?>
</main>
<?php
get_footer();
