<?php get_header(); ?>

<div class="page__hero" style="background-image:
linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.9)), url(<?php echo get_post_meta(get_the_ID(), 'page-banner', true) ?>)">
    <h1> <?php the_title(); ?> </h1>
</div>

<section class="team">
    <div class="container">
        <h3>Meet the Team</h3>

        <div class="team__grid">
        <?php $members = new WP_Query(array(
            'post_type' => 'members',
            'posts_per_page' => 4,     
            ));
        ?>
        <?php if($members->have_posts()) : while($members->have_posts()) : $members->the_post()?>
            <div class="team__card">
            <?php if(has_post_thumbnail()){
                            the_post_thumbnail();
                        } ?>
                <h4><?php the_title()?></h4>
                <p><?php echo get_post_meta(get_the_ID(), 'Position', true) ?></p>
                <ul>
                    <li><a href="<?php echo get_post_meta(get_the_ID(), 'facebook', true) ?>"><i class="fab fa-facebook"></i></a></li>
                    <li><a href="<?php echo get_post_meta(get_the_ID(), 'twitter', true) ?>"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="<?php echo get_post_meta(get_the_ID(), 'linkedin', true) ?>"><i class="fab fa-linkedin"></i></a></li>
                    <li><a href="emailto:<?php echo get_post_meta(get_the_ID(), 'email', true) ?>"><i class="fas fa-envelope"></i></a></li>
                </ul>
            </div>
            <?php 
                    endwhile;
                    else : 
                        echo "<h2 class='no-post'>syet walang post</h2>";
                    endif;
                    
                    ?>
            
        </div>
    </div>
</section>

<?php get_footer(); ?>