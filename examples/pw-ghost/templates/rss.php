<?php
namespace Processwire;

$view = 'rss';

// find the pages you want to appear in the feed.
// this can be any group of pages returned by $pages->find() or $page->children(), etc.
$items = $blog->children("template=blog-item, limit=$postsInRss, sort=-published");

// retrieve the RSS module
$markup = $modules->get("MarkupRSS");

// configure the feed. see the actual module file for more optional config options.
$markup->title = $meta->title;
$markup->description = $meta->about;
$markup->url = $home->httpUrl;

$markup->itemDescriptionField = 'content';
$markup->itemDateField = 'publishedAt';
$markup->itemAuthorField = 'author.fullname';
$markup->copyright = $meta->title;

// send the output of the RSS feed, and you are done
$markup->render($items);