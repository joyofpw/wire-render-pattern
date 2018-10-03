<?php 
namespace Processwire;

$params['cover'] = $cover->url;
$params['title'] = $page->title;

$params['description'] = ($page->about != '' ? $page->about : sprintf(__('A %d-post collection'),
 						  $blog->children("tags=$page")->count()));

$params['blog_url'] = $blog_url;
$params['logo'] = $blog_logo;

$params['show_navigation'] = true;
$params['type'] = 'tag-head';
$params['show_scroll_down'] = true;
$params['show_vertical_info'] = true;

$bodyBag['header_params'] = $params;

$posts = $blog->children("template=blog-item, limit=$postsInTags, sort=-published, tags=$page");

$blogBag['posts'] = $posts;
$blogBag['pagination'] = $posts->renderPager(\Helpers\paginationOptions());

$bodyBag['blog_params'] = $blogBag;

$body = wireRenderFile('views/tag_view', $bodyBag);

$viewBag['body_class'] = 'tag-template tag-'. $page->name;

$meta_description = $page->about;


