<?php
namespace Processwire;
/*
* A default layout. Header and Footer globals were mixed in a single view.
*/
?>
<!DOCTYPE html>
<html>
<head>
<title><?php echo $page->title ?></title>

<?php echo wireRenderFile('partials/render_scripts', ['items' => $headerBag]) ?>

</head>
<body>

<?php echo $content ?>

<?php echo wireRenderFile('partials/render_scripts', ['items' => $footerBag]) ?>

</body>
</html>