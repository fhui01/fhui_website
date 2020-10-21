<article <?php post_class();?> id="post-<?php the_ID();?>">
	<div class="entry-content">
		<?php
		if(is_search()||!is_singular()&&'summary'===get_theme_mod('blog_content','full')){the_excerpt();}
		else{the_content( __('Continue reading','fhui'));}
		?>
	</div>
	<div class="section-inner">
		<?php
		wp_link_pages(
			array(
				'before'=>'<nav class="post-nav-links bg-light-background" aria-label="' . esc_attr__( 'Page', 'twentytwenty' ) . '"><span class="label">' . __( 'Pages:', 'twentytwenty' ) . '</span>',
				'after'=>'</nav>',
				'link_before'=>'<span class="page-number">',
				'link_after'=>'</span>',
			)
		);
		?>
	</div>
</article>
