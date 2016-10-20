<?php
namespace Processwire;
/**
* Main file
* This file renders the content
* and the variables setup in _init.php
* and the template.
*/

if (is_null($view) || $view == 'default') {

	$viewBag['headerBag'] = $headerBag;
	$viewBag['footerBag'] = $footerBag;
	$viewBag['content'] = $content;

	$output = wireRenderFile('views/default', $viewBag);

	echo $output;
}