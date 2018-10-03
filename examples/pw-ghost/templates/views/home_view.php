<?php 
namespace Processwire;
?>
<!-- The big featured header -->
<?php echo wireRenderFile('partials/cover_header', $header_params) ?>

<!-- The main content area on the homepage -->
<main id="content" class="content" role="main">
    <?php echo wireRenderFile('partials/loop', $blog_params) ?>
</main>