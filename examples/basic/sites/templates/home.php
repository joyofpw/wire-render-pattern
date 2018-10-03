<?php
namespace Processwire;
/**
* The template file is beign loaded after the _init.php and before the _main.php. 
* Its when you make all the data formatting, querys and configuration. 
* As an example we will have a home.php template and a /views/home.php as its view.
*/

$viewBag['message'] = 'Hello World';

// Import a Special Script on the footer just for this page template
$footerBag[] = wireRenderFile('scripts/jquery', $viewBag);

$content = wireRenderFile('views/home', $viewBag);