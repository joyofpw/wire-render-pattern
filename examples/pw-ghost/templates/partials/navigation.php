<?php 
namespace Processwire; 
?>

<div class="nav">
    <h3 class="nav-title"><?php echo __('Menu') ?></h3>
    <a href="#" class="nav-close">
        <span class="hidden"><?php echo __('Close') ?></span>
    </a>
    <ul>
        <?php foreach($items as $item): ?>
            <li class="nav-<?php echo $item->name ?><?php if($item == $current_item): ?> nav-current <?php endif ?>" role="presentation"><a href="<?php echo $item->pointer->localHttpUrl(wire('user')->language) ?>"><?php echo $item->title ?></a></li>
        <?php endforeach ?>
    </ul>

    <ul id="language-selection">
        <?php

        if(wire('languages')->count() > 1) { 

            foreach(wire('languages') as $language) {

                $selected = '';
                
                // if this page isn't viewable (active) for the language, skip it
                if(!wire('page')->viewable($language)) continue;

                // if language is current user's language, make it selected
                if(wire('user')->language->id == $language->id) $selected = "nav-current";

                // determine the "local" URL for this language
                $url = wire('page')->localUrl($language);

                // output the option tag
                echo "<li class='language-option $selected lang-$language->name'><a href='$url'>$language->title</a></li>";
            }
        }

        ?>
    </ul>

    <?php if(!$rss_subscription): ?>
        <a class="subscribe-button" href="<?php echo $blog_url ?>subscribe/"><?php echo __('Subscribe') ?></a>
    <?php else: ?>
        <a class="subscribe-button icon-feed" href="<?php echo $blog_url ?>rss/"><?php echo __('Subscribe') ?></a>
    <?php endif ?>
</div>
<span class="nav-cover"></span>