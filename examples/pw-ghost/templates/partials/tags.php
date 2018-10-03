<?php 
namespace Processwire;
$language = wire('user')->language;

if ($items->count() > 0) {
	echo __('On') . ' ';
}

foreach($items as $item): 
?>
<a href="<?php echo $item->localHttpUrl($language) ?>"><?php echo $item->title ?></a>
<?php endforeach ?>