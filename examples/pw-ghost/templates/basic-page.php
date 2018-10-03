<?php
namespace Processwire;

$params['cover'] = $cover->url;
$params['title'] = $page->title;
$params['description'] = $page->about;
$params['blog_url'] = $blog_url;
$params['logo'] = $blog_logo;

$params['show_navigation'] = true;
$params['type'] = 'post-head';
$params['show_scroll_down'] = false;
$params['show_vertical_info'] = false;

$bodyBag['header_params'] = $params;

$bodyBag['title'] = $title;
$bodyBag['content'] = $page->content;

$body = wireRenderFile('views/page_view', $bodyBag);

$viewBag['body_class'] = 'post-template page-template page page-'. $page->name;

$meta_description = $page->about;