<?php
namespace Processwire;

if (empty($author)) {
    $author = new NullPage;
}

$author_image = $author->get('picture');

if (empty($author_image)) {
    $author_image = new NullPage;
}
?>

<?php echo wireRenderFile('partials/cover_header', $header_params) ?>

<section class="author-profile inner">
        <?php if(!($author_image instanceof NullPage)): ?>
        <figure class="author-image">
            <div class="img" style="background-image: url(<?php echo $author_image->url ?>)"><span class="hidden"><?php echo sprintf(__("%s's Picture"), $author->fullname) ?></span></div>
        </figure>
        <?php endif ?>
        <h1 class="author-title"><?php echo $author->fullname ?></h1>
        <?php if($author->about): ?>
            <h2 class="author-bio"><?php echo $author->about ?></h2>
        <?php endif ?>
        <div class="author-meta">
            <?php if($author->location): ?><span class="author-location icon-location"><?php echo $author->location ?></span><?php endif ?>
            <?php if($author->website): ?><span class="author-link icon-link"><a href="<?php echo $author->website ?>"><?php echo $author->website ?></a></span><?php endif ?>
            <span class="author-stats"><i class="icon-stats"></i> <?php echo $totalPostsMessage ?></span>
        </div>
</section>

<main id="content" class="content" role="main">
    <?php echo wireRenderFile('partials/loop', $blog_params) ?>
</main>