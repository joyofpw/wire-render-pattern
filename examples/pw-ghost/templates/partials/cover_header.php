<?php 
namespace Processwire;

include_once __DIR__ . '/../helpers/background_cover.php';

$cover = \Helpers\cover($cover);

if(empty($title)) {
    $title = '';
}

if (empty($description)) {
    $description = '';
}

if(empty($type)) {
    $type = '';
}

if (!isset($show_vertical_info)) {
    $show_vertical_info = true;
}

if (!isset($show_navigation)) {
    $show_navigation = true;
}

if (empty($logo)) {
    $logo = new NullPage;
}

if($logo->get('url') && $logo->url != '') {
    $logo = '<a class="blog-logo" href="' . $blog_url . '"><img src="' . $logo->url . '" alt="' . $title . '" /></a>';
}

?>

<header class="main-header <?php echo $type; echo $cover ?>">
    <nav class="main-nav overlay clearfix">
        <?php echo $logo ?>
        <?php if($show_navigation): ?>
            <a class="menu-button icon-menu" href="#"><span class="word"><?php echo __('Menu') ?></span></a>
        <?php endif ?>
    </nav>
    <?php if($show_vertical_info): ?>
    <div class="vertical">
        <div class="main-header-content inner">
            <h1 class="page-title"><?php echo $title ?></h1>
            <h2 class="page-description"><?php echo $description ?></h2>
        </div>
    </div>
    <?php endif ?>
    <?php if($show_scroll_down): ?>
    <a class="scroll-down icon-arrow-left" href="#content" data-offset="-45"><span class="hidden"><?php echo __('Scroll Down') ?></span></a>
    <?php endif ?>
</header>