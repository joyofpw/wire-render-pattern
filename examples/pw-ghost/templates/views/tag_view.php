<?php
namespace Processwire;
?>
<?php echo wireRenderFile('partials/cover_header', $header_params) ?>

<!-- The main content area on the homepage -->
<main class="content" role="main">
	<?php echo wireRenderFile('partials/loop', $blog_params) ?>
</main>