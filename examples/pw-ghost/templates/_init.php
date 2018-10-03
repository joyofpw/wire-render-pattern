<?php
namespace Processwire;

include_once __DIR__ . '/helpers/helpers.php';

/**
* Init file.
* This file hold the variables
* that all the other templates will have access to.
* and be rendered in the _main.php file.
*/

// Paths and Urls

$home = $pages->get('/');
$templatesUrl = $config->urls->templates;
$assets = $templatesUrl . 'assets/';

$meta = $pages->get('template=meta');

$title = $page->title;

$meta_description = (($page->about && $page->about != '') ? $page->about : $meta->about);

$blog = $pages->get('template=blog');

$blog_title = $home->title;

$meta_title = $blog_title;

$blog_url = $home->httpUrl;

$blog_logo = $meta->logo;

$copyright_year = ($meta->year > 0 ? $meta->year : 2016);
$today = date('Y');

if($today > $copyright_year) {
	$copyright_year = "$copyright_year - $today";
}


$rss = $pages->get('template=rss');

$authors = $pages->get('template=authors');

$language = $user->language;

$view = 'default';

$body = '';

// Posts Limits
$defaultLimit = 10;

$postsInHome = $defaultLimit;
$postsInAuthor = $defaultLimit;
$postsInTags = $defaultLimit;
$postsInRss = $defaultLimit;

// View Bags

$headerBag = [];

$bodyBag = ['blog' => $blog];

$footerBag = [];

$menu = $pages->get('template=menu');
$current_menu_item = $menu->children->get("pointer=$page");

$navigationBag = ['items' => $menu->children,
				  'current_item' => $current_menu_item,
				  'blog_url' => $blog_url,
				  'rss_subscription' => true];

$navigation = '';

// This variables will likely no change
// so we put them at the start.
$viewBag = ['home' => $home,
			'templatesUrl' => $templatesUrl,
			'assets' => $assets,
			'blog' => $blog,
			'blog_title' => $blog_title,
			'blog_url' => $blog_url,
			'copyright_year' => $copyright_year,
			'rss' => $rss,
			'favicon' => $meta->favicon->url
			];

$cover = $page->get('cover');

if(empty($cover)){
	$cover = new NullPage;
}

$facebookOgBag = [
	'meta_title' => $meta_title,
	'title' => $title,
	'description' => $meta_description,
	'url' => $page->httpUrl,
	'image' => $cover->httpUrl
];

$twitterCardBag = [
	'meta_title' => $meta_title,
	'title' => $title,
	'description' => $meta_description,
	'url' => $page->httpUrl,
	'image' => $cover->httpUrl
];

$ldJsonBag = [
	'meta_title' => $meta_title,
	'title' => $title,
	'description' => $meta_description,
	'url' => $page->httpUrl,
	'image' => $cover->httpUrl
];
