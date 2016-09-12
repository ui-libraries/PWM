<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


if ( ! function_exists('resource_url')){
	function resource_url($resource){
	   return base_url().'resources/'.$resource;
	}
}

if ( ! function_exists('image_url')){
	function image_url($image){
		return base_url().'resources/image/'.$image;
	}
}

if ( ! function_exists('url_from_path')){
    function relative_url($relative_path){
	    //example of relative path cedar/1936blizzard/1936Blizzard-1.jpg 
		$url_from_path = base_url($relative_path);	
        return $url_from_path;
    }
}


?>