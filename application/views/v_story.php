<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Peoples Weather Map</title>
    
    <?php 
    	echo link_tag('resources/css/style.css');
        include ('includes/jquery_head.incl');
        include ('includes/quickflip_head.incl');
     ?>
</head>

<body>
<!--header and top menu -->
	<?php include ('includes/page_head.incl') ;?>

    <div id="contentwrapper">
    	<div class="innertube">
    		
			<?php include ($story_include); ?>
    	</div>
    </div>
 <?php include('includes/standard_footer.incl'); ?>