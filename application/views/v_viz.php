<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">

    <title>Peoples Weather Map</title>
    <?php 
        echo link_tag('resources/css/style.css');
	?>
</head>
<body onload='init();'>

<!--header and top menu -->
	<?php include ('includes/page_head.incl') ; ?>

<!--page content -->
    <div id="contentwrapper">
        <div id="contentcolumn">
            <div class="innertube">
                <div id='map_container'></div>
            </div>
        </div>
    </div>
    

<?php include('includes/standard_footer.incl'); ?>
