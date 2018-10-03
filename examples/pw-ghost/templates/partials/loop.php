<?php 
namespace Processwire;

include_once __DIR__ . '/../helpers/excerpt.php';

$authors = wire('pages')->get('template=authors');
$language = wire('user')->language;

?>

<!-- Previous/next page links - only displayed on page 2+ -->
<div class="extra-pagination inner">
    <?php echo $pagination ?>
</div>

<!-- This is the post loop - each post will be output using this markup -->
<?php foreach($posts as $post): ?>
    
<?php 

$author = $post->author;

if (empty($author)) {
    $author = new NullPage;
}

$author_image = $author->get('picture');

if (empty($author_image)) {
    $author_image = new NullPage;
}

?>

<?php $class = ($post->class->name != '' ? $post->class->name : 'post') ?>

<article class="<?php echo $class ?>">
    <header class="post-header">
        <h2 class="post-title"><a href="<?php echo $post->localHttpUrl($language) ?>"><?php echo $post->title ?></a></h2>
    </header>
    <section class="post-excerpt">
        <p><?php echo ($post->excerpt == '' ? \Helpers\excerpt($post->content, 50)  : $post->excerpt) ?> <a class="read-more" href="<?php echo $post->localHttpUrl($language) ?>">&raquo;</a></p>
    </section>
    <footer class="post-meta">
        
        <?php if($author_image->url != ''): ?><img class="author-thumb" src="<?php echo $author_image->url ?>" alt="<?php echo $author->fullname ?>" nopin="nopin" /><?php endif ?>
        
        <a href="<?php echo $authors->localHttpUrl($language) . $author->nickname ?>"><?php echo $author->fullname ?></a>
        
        <?php echo wireRenderFile('partials/tags', ['items' => $post->tags]) ?>

        <time class="post-date" datetime="<?php echo $post->publishedAt ?>"><?php echo $post->publishedAt ?></time>

    </footer>
</article>
<?php endforeach ?>

<!-- Previous/next page links - displayed on every page -->
<?php echo $pagination ?>