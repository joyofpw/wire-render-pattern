<?php
namespace Helpers;

function cover($url = '') {

	if($url && $url != '') {

	    $out = '" style="background-image: url(' . $url . ')';

	} else {

	    $out = ' no-cover';
	}

	return $out;
}

?>