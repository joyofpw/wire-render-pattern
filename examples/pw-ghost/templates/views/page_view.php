<?php
namespace Processwire;
?>
<?php echo wireRenderFile('partials/cover_header', $header_params) ?>
<main class="content" role="main">
    <article class="post page">

        <header class="post-header">
            <h1 class="post-title"><?php echo $title ?></h1>
        </header>

        <section class="post-content">
            <?php echo $content ?>
        </section>

    </article>
</main>