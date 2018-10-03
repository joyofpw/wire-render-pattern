<?php
namespace Processwire;

$author = wire('sanitizer')->text(wire('input')->urlSegment(1));

$author = wire('pages')->get("template=user, nickname=$author");

if (empty($author) || ($author instanceof NullPage)) {
	throw new Wire404Exception();	
}

$totalPosts = wire('pages')->count("template=blog-item, author=$author");

$message = __('No posts');

if ($totalPosts > 0) {
    $message = sprintf(__('%d post'), $totalPosts);
}

if ($totalPosts > 1) {
    $message = sprintf(__('%d posts'), $totalPosts);
}

$cover = $author->get('cover');

if (empty($cover)) {
	$cover = new NullPage;
}

$params['cover'] = $cover->url;
$params['blog_url'] = $blog_url;
$params['logo'] = $blog_logo;
$params['show_navigation'] = true;
$params['type'] = 'author-head';
$params['show_scroll_down'] = false;


$posts = $blog->children("template=blog-item, limit=$postsInAuthor, sort=-publishedAt, author=$author");

$blogBag['posts'] = $posts;
$blogBag['pagination'] = $posts->renderPager(\Helpers\paginationOptions());

$bodyBag['header_params'] = $params;
$bodyBag['totalPostsMessage'] = $message;
$bodyBag['author'] = $author;
$bodyBag['blog_params'] = $blogBag;

$title = $author->fullname;

$viewBag['body_class'] = 'author-template author-' . $author->name; 
$viewBag['canonical'] = $page->httpUrl . $author->name;

$body = wireRenderFile('views/author_view', $bodyBag);

$meta_description = $author->about;
