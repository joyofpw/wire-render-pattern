<?php
namespace Helpers;

function paginationOptions() {
	return [
		'listMarkup' => "\n<nav class='pagination' role='navigation'>{out}</nav>\n",
		'itemMarkup' => "<span class='{class}'>{out}</span>\n",
		'linkMarkup' => "<a href='{url}'>{out}</a>\n",
		'nextItemLabel' => \Processwire\__('Older Posts'),
		'previousItemLabel' => \Processwire\__('Newer Posts'),
		'nextItemClass' => 'older-posts',
		'previousItemClass' => 'newer-posts',
		'separatorItemClass' => 'pagination-separator', 
		'firstItemClass' => 'pagination-first-item', 
		'firstNumberItemClass' => 'page-number pagination-first-number-item',  
		'lastItemClass' => 'pagination-last-item', 
		'lastNumberItemClass' => 'page-number pagination-last-number-item',
		'currentItemClass' => 'pagination-current-item'
	];
}