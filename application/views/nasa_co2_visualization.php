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
        <h2 class="centered reversetype">NASA Data Visualization:</h2>
        <h3 class="centered reversetype">A Year of Atmospheric Carbon</h3>
		<div class="centered">
			<iframe width="780" height="439" src="https://www.youtube.com/embed/x1SgmFa0r04?rel=0" frameborder="0" allowfullscreen></iframe>	
			
		</div>
			<br />
			<br />
			
        </div>
    </div>
</div>


<?php include('includes/standard_footer.incl'); ?>