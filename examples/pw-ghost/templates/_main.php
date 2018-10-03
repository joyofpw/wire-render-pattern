<?php
namespace Processwire;
/**
* Main file
* This file renders the content
* and the variables setup in _init.php
* and the template.
*/

// Variables that could change
// in the page templates should
// be put at the bottom

if (!$view || $view == 'default') {
	
	$navigation = wireRenderFile('partials/navigation', $navigationBag);
	
	$facebookOgBag['description'] = $meta_description;
	$twitterCardBag['description'] = $meta_description;
	$ldJsonBag['description'] = $meta_description;
	
	$headerBag[] = wireRenderFile('partials/header_bag/facebook_og', $facebookOgBag);
	$headerBag[] = wireRenderFile('partials/header_bag/twitter_card', $twitterCardBag);
	$headerBag[] = wireRenderFile('partials/header_bag/ld_json', $ldJsonBag);

	if ($page->template != 'home') {
		$meta_title = $blog_title . ' | ' . $title;
	}

	$viewBag['meta_title'] = $meta_title;
	$viewBag['meta_description'] = $meta_description;
	$viewBag['body'] = $body;
	$viewBag['navigation'] = $navigation;

	$viewBag['header_bag'] = $headerBag;
	$viewBag['footer_bag'] = $footerBag;

	$output = wireRenderFile('views/default_view', $viewBag);

	echo $output;	
}
