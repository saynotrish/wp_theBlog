<?php get_header(); ?>

    <section class="banner">
        <div class="container">
            <div class="banner__wrapper">
            <h1>The Blog</h1>
            <div class="banner__grid">
                <div class="banner__main">
                    <?php $cardLg = new WP_Query(array(
                        'post_type' => 'post',
                        'tax_query' => array(
                            array(
                                'taxonomy' => 'category',
                                'field' => 'name',
                                'terms' => 'card_lg_banner',
                                'include_children' => false,
                            ),
                        ),
                        ));
                    ?>
                <?php if($cardLg->have_posts()) : while($cardLg->have_posts()) : $cardLg->the_post()?>
                    <article class="banner__story">
                        <?php if(has_post_thumbnail()){
                            the_post_thumbnail();
                        } ?>
                        <div class="banner__story__content">
                            <small><?php echo get_the_date('M d, Y');?></small>
                            <h2><?php the_title(); ?> </h2>
                            <p>
                            <?php echo wp_trim_words(get_the_content(), 50); ?>
                            </p>
                            <a href="<?php the_permalink(); ?>">Read More...</a>
                        </div>
                    </article>
                    <?php 
                    endwhile;
                    else : 
                        echo "<h2 class='no-post'>syet walang post</h2>";
                    endif;
                    
                    wp_reset_postdata();
                    ?>

                </div>

                <div class="banner__sidebar">
                <?php $cardSm = new WP_Query(array(
                        'post_type' => 'post',
                        'posts_per_page' => 4,
                        'tax_query' => array(
                            array(
                                'taxonomy' => 'category',
                                'field' => 'name',
                                'terms' => 'card_sm_banner',
                                'include_children' => false,
                            ),
                        ),
                        ));
                    ?>
                <?php if($cardSm->have_posts()) : while($cardSm->have_posts()) : $cardSm->the_post()?>
                    <div class="card__sm">
                    <?php if(has_post_thumbnail()){
                            the_post_thumbnail('banner-sm');
                        } ?>
                        <div class="card__sm__content">
                        <small><?php echo get_the_date('M d, Y');?></small>
                        <h3><?php the_title(); ?></h3>
                        <a href="<?php the_permalink(); ?>">Read More...</a>
                    </div>
                </div>
                <?php 
                    endwhile;
                    else : 
                        echo "<h2 class='no-post'>syet walang post</h2>";
                    endif;
                    
                    wp_reset_postdata();
                    ?>
                </div>
            </div>
            </div>
        </div>
        </section>

    <section class="latest">
        <div class="container">
            <h2>Latest Story</h2>
            <div class="latest__wrapper">

            <?php $latest = new WP_Query(array(
                        'post_type' => 'post',
                        'posts_per_page' => 3,
                        'tax_query' => array(
                            array(
                                'taxonomy' => 'category',
                                'field' => 'name',
                                'terms' => 'Fashion',
                                'include_children' => false,
                            ),
                        ),
                        'date_query' => array(
                            array(
                                'after'     => 'June 22, 2023',
                                'before'    => 'June 26, 2023',
                                'inclusive' => true,
                            ),
                        ),
                        ));
                    ?>

                <?php if($latest->have_posts()) : while($latest->have_posts()) : $latest->the_post()?>

                <div class="card__md">
                <?php if(has_post_thumbnail()){
                            the_post_thumbnail('');
                        } ?>
                    <div class="card__md__content">
                        <ul>
                            <li><small><?php echo get_the_date(); ?></small></li>
                            <li><small><?php echo get_the_category( $id )[0]->name?> </small></li>
                        </ul>
                        <h3><?php the_title(); ?></h3>
                        <p><?php echo wp_trim_words(get_the_content(), 10); ?></p>
                        <a href="<?php the_permalink(); ?>">Read More...</a>
                    </div>
                </div>
                <?php 
                    endwhile;
                    else : 
                        echo "<h2 class='no-post'>syet walang post</h2>";
                    endif;
                    
                    wp_reset_postdata();
                ?>
            </div>
        </div>
    </section>

        <section class="feature">
        <?php $featureLg = new WP_Query(array(
                        'post_type' => 'post',
                        'posts_per_page' => 1,
                        'meta_query' => array(
                            array(
                                'key' => 'featured-size',
                                'value' => 'featured-LG',
                                'compare' => 'LIKE',),
                        ),
                        ));
                    ?>
                    <?php if($featureLg->have_posts()) : while($featureLg->have_posts()) : $featureLg->the_post()?>
        <div class="feature__content">
            <h2>Feature New</h2>
            <h3 class="block__header">
            <?php the_title(); ?>
            </h3>
            <p><?php the_content(); ?></p>
        </div>

        <div class="container">
            <div class="feature__img">
            <?php if(has_post_thumbnail()){
                    the_post_thumbnail();
                    } ?>
            </div>
        </div>
        <?php 
            endwhile;
            else : 
                echo "<h2 class='no-post'>syet walang post</h2>";
            endif;
                    
            wp_reset_postdata();
        ?>

        <div class="container">
            <div class="feature__wrapper">
                <div class="feature__main">
                    <?php $featureMd = new WP_Query(array(
                        'post_type' => 'post',
                        'posts_per_page' => 3,
                        'meta_query' => array(
                            array(
                                'key' => 'featured-size',
                                'value' => 'featured-md',
                                'compare' => 'LIKE',),
                        ),
                        ));
                    ?>
                    <?php if($featureMd->have_posts()) : while($featureMd->have_posts()) : $featureMd->the_post()?>
                    <article class="card__lg">
                        <?php if(has_post_thumbnail()){
                        the_post_thumbnail();
                        } ?>
                        <div class="card__lg__content">
                            <small><?php echo get_the_date(); ?></small>
                            <h3><?php the_title(); ?></h3>
                            <p><?php the_content(); ?></p>
                            <a href="<?php the_permalink(); ?>">Read More...</a>
                        </div>
                    </article>
                        <?php 
                        endwhile;
                        else : 
                            echo "<h2 class='no-post'>syet walang post</h2>";
                        endif;
                    
                        wp_reset_postdata();
                        ?>
                </div>

                <div class="feature__sidebar">
                    <?php $featureSm = new WP_Query(array(
                        'post_type' => 'post',
                        'posts_per_page' => 6,
                        'meta_query' => array(
                            array(
                                'key' => 'featured-size',
                                'value' => 'featured-sm',
                                'compare' => 'LIKE',),
                        ),
                        ));
                    ?>
                    <?php if($featureSm->have_posts()) : while($featureSm->have_posts()) : $featureSm->the_post()?>
                    <div class="card__mini">
                        <small><?php echo get_the_date(); ?></small>
                        <h4><?php the_title(); ?></h4>
                        <a href="<?php the_permalink(); ?>">Read More ...</a>
                    </div>
                    <?php 
                        endwhile;
                        else : 
                            echo "<h2 class='no-post'>syet walang post</h2>";
                        endif;
                    
                        wp_reset_postdata();
                    ?>
                </div>
            </div>
        </div>
    </section>



<?php get_footer(); ?>