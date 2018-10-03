<?php
namespace Helpers;

// Generate an experpt from a text

// http://stackoverflow.com/questions/8990007/display-post-excerpts-limited-by-word-count
function excerpt($text = '', $number_of_words = 26, $include_dots = true) {
   // Where excerpts are concerned, HTML tends to behave
   // like the proverbial ogre in the china shop, so best to strip that
   $text = strip_tags($text);

   // \w[\w'-]* allows for any word character (a-zA-Z0-9_) and also contractions
   // and hyphenated words like 'range-finder' or "it's"
   // the /s flags means that . matches \n, so this can match multiple lines
   $text = preg_replace("/^\W*((\w[\w'-]*\b\W*){1,$number_of_words}).*/ms", '\\1', $text);

   // strip out newline characters from our excerpt
   $result =  str_replace("\n", "", $text);

   if ($include_dots) {
   		$result = $result . ' ... ';
   }

   return $result;
}