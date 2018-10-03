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

<main class="content" role="main">
    <article class="<?php echo $class ?>">

        <header class="post-header">
            <h1 class="post-title"><?php echo $title ?></h1>
            <section class="post-meta">
                <time class="post-date" datetime="<?php echo $date ?>"><?php echo $date ?></time> <?php echo wireRenderFile('partials/tags', ['items' => $tags]) ?>

            </section>
        </header>

        <section class="post-content">
        	<?php echo $content ?>
        </section>

        <footer class="post-footer">

        	<?php if(!($author_image instanceof NullPage)): ?>
            <figure class="author-image">
                <a class="img" href="<?php echo $author_url ?>" style="background-image: url(<?php echo $author_image->url ?>)"><span class="hidden"><?php echo sprintf(__("%s's Picture"), $author->fullname) ?></span></a>
            </figure>
        	<?php endif ?>

            <section class="author">
                <h4><a href="<?php echo $author_url ?>"><?php echo $author->fullname ?></a></h4>

                <?php if($author->about && $author->about != ''): ?>
                    <p><?php echo $author->about ?></p>
                <?php else: ?>
                    <p><?php echo __('Read') ?> <a href="<?php echo $author_url ?>"><?php echo __('more posts') ?></a> <?php echo __('by this author.') ?></p>
                <?php endif ?>
                <div class="author-meta">
                    <?php if($author->location && $author->location != ''): ?><span class="author-location icon-location"><?php echo $author->location ?></span><?php endif ?>
                    <?php if($author->website && $author->website != ''): ?><span class="author-link icon-link"><a href="<?php echo $author->website ?>"><?php echo $author->website ?></a></span><?php endif ?>
                </div>
            </section>


            <section class="share">
                <h4><?php echo __('Share this post') ?></h4>
                <a class="icon-twitter" href="https://twitter.com/intent/tweet?text=<?php echo $encoded_title ?>&amp;url=<?php echo $url ?>"
                    onclick="window.open(this.href, 'twitter-share', 'width=550,height=235');return false;">
                    <span class="hidden">Twitter</span>
                </a>
                <a class="icon-facebook" href="https://www.facebook.com/sharer/sharer.php?u=<?php echo $url ?>"
                    onclick="window.open(this.href, 'facebook-share','width=580,height=296');return false;">
                    <span class="hidden">Facebook</span>
                </a>
                <a class="icon-google-plus" href="https://plus.google.com/share?url=<?php echo $url ?>"
                   onclick="window.open(this.href, 'google-plus-share', 'width=490,height=530');return false;">
                    <span class="hidden">Google+</span>
                </a>
            </section>

            <!-- Email subscribe form at the bottom of the page -->
            <?php if($rss_subscription): ?>
            <section class="gh-subscribe">
                <h3 class="gh-subscribe-title"><?php echo __('Subscribe to') . ' ' . $blog_title ?></h3>
                <span class="gh-subscribe-rss"><?php echo __('Subscribe') ?> <a href="http://cloud.feedly.com/#subscription/feed/<?php echo $blog_url ?>rss/"><?php echo __('via RSS') ?></a> <?php echo __('with Feedly!') ?></span>
            </section>
            <?php endif ?>

        </footer>

    </article>
</main>

<!-- Links to Previous/Next posts -->
<?php if($has_siblings): ?>
<aside class="read-next">

	<?php if($next_title != ''): ?>
    <a class="read-next-story <?php echo $next_cover ?>" href="<?php echo $next_url ?>">
        <section class="post">
            <h2><?php echo $next_title ?></h2>
            <p><?php echo $next_excerpt ?>&hellip;</p>
        </section>
    </a>
	<?php endif ?>

   <?php if($prev_title != ''): ?>
    <a class="read-next-story prev <?php echo $prev_cover ?>" href="<?php echo $prev_url ?>">
        <section class="post">
            <h2><?php echo $prev_title ?></h2>
            <p><?php echo $prev_excerpt ?>&hellip;</p>
        </section>
    </a>
	<?php endif ?>

</aside>
<?php endif ?>