<?php
namespace Processwire;

$params['cover'] = $cover->url;
$params['blog_url'] = $blog_url;
$params['logo'] = $blog_logo;
$params['show_navigation'] = true;
$params['type'] = 'post-head';
$params['show_scroll_down'] = false;

$bodyBag['header_params'] = $params;

$bodyBag['blog_title'] = $blog_title;
$bodyBag['blog_url'] = $blog_url;

$bodyBag['title'] = $page->title;
$bodyBag['date'] = $page->publishedAt;
$bodyBag['tags'] = $page->tags;
$bodyBag['content'] = $page->content;
$bodyBag['class'] = ($page->class->name != '' ? $page->class->name : 'post');
$bodyBag['author'] = $page->author;
$bodyBag['author_url'] = $authors->localHttpUrl($language) . $page->author->nickname;
$bodyBag['url'] = $page->httpUrl;
$bodyBag['encoded_title'] = urlencode($page->title);
$bodyBag['rss_subscription'] = true;

$has_siblings = ($page->siblings->count() > 0);

if ($has_siblings) {

	$nextCover = $page->next->cover;

	if (empty($nextCover)) {
		$nextCover = new NullPage;
	}

	$bodyBag['next_title'] = $page->next->title;
	$bodyBag['next_excerpt'] = \Helpers\excerpt($page->next->content, 19);
	$bodyBag['next_cover'] = \Helpers\cover($nextCover->url);
	$bodyBag['next_url'] = $page->next->httpUrl;

	$prevCover = $page->prev->cover;

	if (empty($prevCover)) {
		$prevCover = new NullPage;
	}

	$bodyBag['prev_title'] = $page->prev->title;
	$bodyBag['prev_excerpt'] = \Helpers\excerpt($page->prev->content, 19);
	$bodyBag['prev_cover'] = \Helpers\cover($prevCover->url);
	$bodyBag['prev_url'] = $page->prev->httpUrl;

	$bodyBag['has_siblings'] = $has_siblings;
}


$body = wireRenderFile('views/post_view', $bodyBag);

$headerBag[] = wireRenderFile('partials/header_bag/translate_buttons');

$viewBag['body_class'] = 'post-template';

$meta_description = \Helpers\excerpt($page->content, 20);
