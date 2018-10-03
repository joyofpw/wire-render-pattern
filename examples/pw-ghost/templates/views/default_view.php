<?php
namespace Processwire;

if (empty($canonical)) {
    $canonical = wire('page')->httpUrl;
}

?>
<!DOCTYPE html>
<html>
<head>
    <!-- Document Settings -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!-- Page Meta -->
    <title><?php echo $meta_title ?></title>
    <meta name="description" content="<?php echo $meta_description ?>" />

    <!-- Mobile Meta -->
    <meta name="HandheldFriendly" content="True" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Brand icon -->
    <link rel="shortcut icon" href="<?php echo $favicon ?>">

    <!-- Styles'n'Scripts -->
    <link rel="stylesheet" type="text/css" href="<?php echo $assets ?>css/screen.css" />
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Merriweather:300,700,700italic,300italic|Open+Sans:700,400" />

    <?php echo wireRenderFile('partials/scripts', ['items' => $header_bag]) ?>

    <link rel="canonical" href="<?php echo $canonical ?>" />
    <meta name="referrer" content="origin" />

    <meta name="generator" content="Processwire" />
    <link rel="alternate" type="application/rss+xml" title="<?php echo $blog_title ?>" href="<?php echo $rss->httpUrl ?>" />

</head>
<body class="<?php echo $body_class ?> nav-closed">

    <!-- The blog navigation links -->
    <?php echo $navigation ?>

    <div class="site-wrapper">

        <!-- All the main content gets inserted here, index.hbs, post.hbs, etc -->
        <?php echo $body ?>

        <!-- The tiny footer at the very bottom -->
        <footer class="site-footer clearfix">

            <section class="copyright"><a href="<?php echo $blog_url ?>"><?php echo $blog_title ?></a> &copy; <?php echo $copyright_year ?></section>

            <section class="poweredby"><?php echo __('Proudly published with') ?> <a href="https://processwire.com">Processwire</a> <?php echo __('Using') ?> <a href="https://github.com/TryGhost/Casper"><?php echo __('Casper Theme') ?></a></section>
            
        </footer>

    </div>

    <!-- jQuery needs to come before footer scripts so that jQuery can be used in code injection -->
    <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.js"></script>
    
    <?php echo wireRenderFile('partials/scripts', ['items' => $footer_bag]) ?>

    <!-- Fitvids makes video embeds responsive and awesome -->
    <script type="text/javascript" src="<?php echo $assets ?>js/jquery.fitvids.js"></script>

    <!-- The main JavaScript file for Casper -->
    <script type="text/javascript" src="<?php echo $assets ?>js/index.js"></script>

</body>
</html>
