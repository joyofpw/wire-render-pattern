<?php
namespace Processwire;
/**
* Init file.
* This file hold the variables
* that all the other templates will have access to.
* and be rendered in the _main.php file.
*/

// Default Paths and Urls
$home = $pages->get('/');
$templatesUrl = $config->urls->templates;
$assets = $templatesUrl . 'assets/';

// Data Bags
$viewBag = [
 'home' => $home,
 'templatesUrl' => $templatesUrl,
 'assets' => $assets
 ];

// Special Bags for Scripts
$headerBag = [];
$footerBag = [];

// Set the layout
$view = 'default';