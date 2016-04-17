<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Peoples Weather Map</title>
    
    <?php 
    	echo link_tag('resources/css/style.css');
        include ('includes/jquery_head.incl');
 		include('includes/local_menu.incl');          
     ?>
</head>
<body onload='init();'>

<!--header and top menu -->
	<?php include ('includes/page_head.incl') ;?>

<!--page content -->	
<div id="contentwrapper" style="background:#666666;">

    
    <div id="singlecolumn" class="centered">
        <div class="innertube">
        <br />
        <h2 class="centered reversetype">
            <?php if (!empty($story->title)) {echo $story->title;} ?>
        </h2>
        <h3 class="centered reversetype">
            <!-- "story->location" name comes from standard story layout but in this case contains subtitle-->
            <?php if (!empty($story->location)) {echo $story->location;} ?>
        </h3>
        <div class="videoframe720">
            <?php if (!empty($story->story_content)) {echo $story->story_content;} ?>
        </div>
        <br />
        <br />
			
        </div>
    </div>
</div>


<?php include('includes/standard_footer.incl'); ?>