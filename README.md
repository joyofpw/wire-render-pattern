# The Wire Render Pattern

This pattern or approach is what I´m using when creating new projects using Processwire. It heavily uses the `wireRenderFile()` method so thats the reason of the name, and so it will work only on PW versions that implement that method. This pattern does not need additional modules and enables easier code organization and reutilization. Feel free to adapt this way of doing projects to your own way, Processwire is awesome and flexible enough to support various ways of organization and patterns.

### The wireRenderFile() method
The `wireRenderFile()` method is a wrapper to the `wire('files')->render()` method. You can choose the method that fits better in your use case. Note this function returns the output for you to output wherever you want (delayed output). For direct output, use the `wireInclude()` function instead. 

**Example**

```php
	$files = wire('files');
	$files->render($filename, $vars, $options);
``` 

See https://github.com/processwire/processwire/blob/master/wire/core/Functions.php#L487
and https://processwire.com/api/ref/files/render/
for a full documentation of the function.

### The region() method
Since Processwire 3.0.39 the `region()` is available. You can know more about it here
http://processwire.com/blog/posts/processwire-3.0.39-core-updates/

The new region function provides a nice option for delayed output on the front-end, letting you define regions for output, populate content to it, and retrieve it when ready for output. It's a good alternative to using variables for the same purpose, as editor environments often don't recognize the relationship of variables between files like `_init.php` (prepend file), template files, and `_main.php` (append file). It prevents your editor from flagging variables as undefined, and reduces the chance of variable collisions or variables getting accidentally overwritten.

The region function can be accessed as `wireRegion()`, or if you have `$config->useFunctionsAPI` enabled, it can also be accessed as just `region()`.

**Example**
```php
// output regions in appropriate locations
<h1><?php echo region('headline'); ?></h1>
<div id='content'>
  <?php echo region('content'); ?>
</div>
```

### The directory structure

In Processwire you can organize your code the way it make most sence to you. All the files should be in the `/site/templates/` directory. In this pattern the directory structure will be:

  * assets
  * helpers
  * globals
  * partials
  * scripts
  * views
  * vendor

### The Assets Directory

This directory is for storing the front-end files like css, js, img, fonts, etc. And contains the following sub directories:

  * css
  * img
  * js
  * font

### The Helpers Directory

The helpers directory is for code that can be used across all files in the project. Mainly for small code snippets or functions that do not output front-end code.

An example file that should be put in helpers it is this code that I use mainly for debugging. Debug Helper.

### The Globals

The Globals directory is used for “global” font-end code. Files like headers and footers should be put here. These files are used globally since they are included and should be rendered in all templates.

### The Partials

The Partials directory contains reusable font-end code snippets. Things like menus, galleries or anything that one or more templates could use. Look them like “components” that could be attached between multiple templates.

### The Scripts

The Scripts directory contains code that should be included in header or footer files on demand. Scripts like css, js or another code that does not need to be global but some template file requires them.

For example in the index page you have an image gallery and this gallery is only present in the index page. You should only import the js and css files related to the gallery in the index page and not in other pages. For achieving this, the Wire Render pattern relies on “data bags” a concept that will be explained in a moment.

### The Views

The views are the font-end code for the templates. Contains the html needed for creating the page. In this approach the template file only contains “glue code” that will be passed to the view. The template file should be responsible for formatting, querying and complex data manipulation and pass the view only the data formatted. In this way the view will only contain minimum php code like if, foreach, echo and `wireRenderFile` method calls.

Example:

You have a `home.php` template and a `views/home.php` file. All the logic (querys, parsing parameters, etc) goes to the `home.php` file while the html will be inside `views/home.php` file.

### The Vendor

The Vendor directory its used for files that are external to your system. Mainly for libraries, sdks or code made by other people outside you or your organization. Maybe you could put here an Excel Export script or the SDK for Mandrill API.
Using Delayed Output

For this pattern to work needs the delayed output strategy. Basically we will use two files inside `/site/templates/` and autoload them for every template. The files needed are _init.php and _main.php. Using this strategy will make easier to configure the final output for the template.

First you must add the files to the `/site/config.php` file.

```php
/**
* Prepend and Append template files
*/

$config->prependTemplateFile = '_init.php';
$config->appendTemplateFile = '_main.php';
```

### The _init.php file

This file is the first to be loaded when requesting a page with any template. We should put information that will be available to all templates.

```php
<?php
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
$viewBag = array(
 'home' => $home,
 'templatesUrl' => $templatesUrl,
 'assets' => $assets
 );

// Special Bags for Scripts
$headerBag = array();
$footerBag = array();
```

### The template file

The template file is beign loaded after the `_init.php` and before the `_main.php`. Its when you make all the data formatting, querys and configuration. As an example we will have a home.php template and a `/views/home.php` as its view.

```php
<?php
/**
* home.php
*/

$viewBag['message'] = 'Hello World';

// Import a Special Script on the footer just for this page template
$footerBag[] = wireRenderFile('scripts/jquery', $viewBag);

$content = wireRenderFile('views/home', $viewBag);
```

The home view contains all the html. And all the variables that processwire pass to the home template are as well available inside the view. So we can have something like:

```php
<?php
/**
* views/home.php
*/
?>

<h1><?php echo $page->title ?></h1>

<p>
<?php echo $message ?>
</p>

```

We should try to make all the complex logic inside the template and the view only will deal with simple php methods.

### The header.php file

The header file is the first used before the content when rendering the final output.

```php
<?php
/**
* globals/header.php
*/
?>
<!DOCTYPE html>
<html>
<head>
<title><?php echo $page->title ?> </title>

<?php echo wireRenderFile('partials/render_scripts', array('items' => $headerBag)) ?>

</head>
<body>
```

### The footer.php file

The footer file is used after the content.

```php
<?php
/**
* global/footer.php
*/
?>

<?php echo wireRenderFile('partials/render_scripts', array('items' => $footerBag)) ?>

</body>
</html>
```

### The render_scripts.php file

This is a partial file used both in `header.php` and `footer.php` to render the contents of the scripts loaded in `home.php`.

```php
<?php
/**
* partials/render_scripts.php
*/

foreach($items as $item) {
    echo $item;
}
```

### The jquery file

This file is a simple jquery import used in `home.php` for loading jquery only on the pages that have the home template.

```php
<?php
/**
* scripts/jquery.php
*/
?>
<script src="<?php echo $assets ?>js/jquery.js"></script>
```

### The _main.php file

The `_main.php` file is the last file beign loaded before the final output to the client. It echoes the header, content and footer.

```php
<?php
/**
* Main file
* This file renders the content
* and the variables setup in _init.php
* and the template.
*/

$viewBag['headerBag'] = $headerBag;

$output = wireRenderFile('globals/header', $viewBag);

$output .= $content;

$viewBag['footerBag'] = $footerBag;

$output .= wireRenderFile('globals/footer', $viewBag);

echo $output;
```

### The final output

when we visit the home page of our site the main output will look like this:

```js
<!DOCTYPE html>
<html>
<head>
<title>Home</title>

</head>

<body>

<h1>Home</h1>
<p>Hello world</p>

<script src="/site/templates/assets/js/jquery.js"></script>
</body>
</html>
```

### The Data Bags

The “data bags” are just arrays that contains different keys and information wich are passed to the different files on `wireRenderFile()` method. Here we used 3 data bags. The main one beign called viewBag, the one used for header scripts beign called `headerBag` and the last one used for footer scripts beign called `footerBag`. They were set in the `_init.php` file and available for all templates.

### Using the $page object as data bag
You can also use the `$page` object for storing data and pass that to the views. It's better to use namespaces.

Example

*hello.php*

```php
<?php
namespace Processwire;

$page->message = 'Hello World';

$body = wireRenderFile('views/hello');
```

*views/hello.php*

```php
<?php
namespace Processwire;
?>

<html>
<body><?php echo $page->message ?></body>
</html>
```

### Conclusion

The Wire Render approach enables better code organization and reutilization. Relies on standard Processwire methods and its flexible enough for adapting it to your needs.

For sample files used in this post please check `example` directory.
