    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="<?php blogInfo('charset'); ?>" />
        <meta description="<?php blogInfo('description'); ?>" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title><?php is_front_page() ? blogInfo('title') : wp_title("");?></title>
        <?php wp_head(); ?>
    </head>
    <body>
        <header class="header">
        <div class="container">
            <div class="header__wrapper">
            <div class="inner">
                <div class="branding">
                <a href="<?php echo site_url('/') ?>"> BLOG</a>
                </div>
                <nav>
                <?php wp_nav_menu(array(
                    'theme_location' => 'header_menu',
                )); ?>
                </nav>
            </div>
            <button id="themeToggle"><i class="fas fa-sun"></i></button>
            </div>
        </div>
        </header>