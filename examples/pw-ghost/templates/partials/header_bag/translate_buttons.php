<?php
namespace Processwire;
?>
<style type="text/css">
	/* Enable translations in default ghost casper next and previous buttons */

	.read-next-story .post:before {
	    content: "<?php echo __('Read This Next') ?>";
	}
	.read-next-story.prev .post:before {
	    content: "<?php echo __('You Might Enjoy') ?>";
	}
</style>