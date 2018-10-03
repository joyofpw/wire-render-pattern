<?php
namespace Processwire;

$params['cover'] = $cover->url;
$params['title'] = $page->title;
$params['description'] = $page->about;
$params['blog_url'] = $blog_url;
$params['logo'] = $blog_logo;

$params['show_navigation'] = true;
$params['type'] = '';
$params['show_scroll_down'] = true;
$params['show_vertical_info'] = true;

$bodyBag['header_params'] = $params;

$posts = $blog->children("template=blog-item, limit=$postsInHome, sort=-publishedAt");

$blogBag['posts'] = $posts;
$blogBag['pagination'] = $posts->renderPager(\Helpers\paginationOptions());

$bodyBag['blog_params'] = $blogBag;

$body = wireRenderFile('views/home_view', $bodyBag);

$viewBag['body_class'] = 'home-template';
