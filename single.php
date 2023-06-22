<?php get_header(); ?>

<div class="banner__single">
    <div class="container">
        <div class="banner__top">
            <h1><?php the_title(); ?></h1>
            <ul>
                <li><?php echo get_the_date('M j, Y') ?></li>
                <li><?php echo get_the_author_meta('name') ?></li>
            </ul>
        </div>
        <div class="banner__bottom">
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sit eveniet voluptates labore in magni aliquam. Velit similique non provident nisi tempore quia nobis modi harum corporis excepturi optio nesciunt quo laudantium, autem voluptate tempora? Pariatur consectetur accusamus in est at?</p>
            <img src="http://via.placeholder.com/600x400" alt="">
        </div>
    </div>
</div>

<article class="article__single">
    <div class="container">
        <div class="article__wrapper">
            <div class="article__info">
                <div>
                    <h3>Category</h3>
                    <p>Technology</p>
                </div>
                <div>
                    <h3>Tags</h3>
                    <ul>
                        <li>News</li>
                        <li>Technology</li>
                        <li>Science</li>
                    </ul>
                </div>
                <div>
                    <h3>Reading</h3>
                    <p>10mins</p>
                </div>
            </div>
            <div class="article__body">
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ipsum et animi omnis, error quod totam, cum ex quae praesentium neque nobis beatae sapiente voluptatibus a vel consectetur ducimus autem repellat fugiat suscipit rem dolorum. Unde dolorem, maiores vitae facilis praesentium voluptatem. Amet impedit nisi ullam at odit, eligendi necessitatibus eum?</p>

                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus delectus temporibus optio quam doloremque. Perspiciatis dolores deserunt molestias ab itaque?</p>

                <img src="http://via.placeholder.com/600x400" alt="">

                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, veniam voluptatibus quae deleniti molestiae perspiciatis consectetur repellat inventore. Ipsa, quia beatae? Iusto, obcaecati? Mollitia assumenda quidem placeat esse magnam officia ullam quas eligendi, aspernatur autem nobis adipisci omnis at magni delectus exercitationem beatae. Molestias corrupti tempora sit similique labore in quidem, doloribus voluptates vero modi. Facilis aperiam magni fuga officiis.</p>

                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deleniti iure maxime odio praesentium animi repudiandae quam rerum dolorum ducimus tempore.</p>
            </div>
        </div>
    </div>
</article>

<?php get_footer(); ?>