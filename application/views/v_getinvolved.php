<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Peoples Weather Map</title>
    
    <?php 
    	echo link_tag('resources/css/style.css');
        include ('includes/jquery_head.incl');
     ?>
    <script>
	 	$(function() {
	 		$( "#tabs" ).tabs();
  		});
  	</script>
</head>

<body>
<!--header and top menu -->
	<?php include ('includes/page_head.incl') ;?>

    <div id="contentwrapper">
    	<div class="innertube">
	    	<div id="singlecolumn">
		    	<h2>Get Involved</h2>
		    	<div id="tabs" class="spaceleft">
					<ul>
					    <li><a href="#tabs-1">Stories</a></li>
					    <li><a href="#tabs-2">Artifacts</a></li>
					</ul>
					<div id="tabs-1">
				    	<h3>Contribute a story of extreme weather</h3>
				    	<p class="spaceleft">We welcome story contributions to the Peoples' Weather Map. We have included some general submission guidelines below. After reviewing these guidelines, please contact us at the email address below and we would be happy to answer any questions you might have, and discuss with you how to submit the story materials.</p>
				    	<p class="spaceleft">
				    		<ul><li><a href="mailto:submissions@peoplesweathermap.org">submissions@peoplesweathermap.org</a></li></ul>
				    	</p>
					    
				    	<h4>Submission Guidelines</h4>
				    	<p class="spaceleft">
					    	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				    	</p>
					</div>
					<div id="tabs-2">
						<h3>Share a family diary or artifact</h3>
					    <p class="spaceleft">Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat. Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere, felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor et purus.</p>
					</div>					
				</div>
	    	</div>
    	</div>
    </div>
 <?php include('includes/standard_footer.incl'); ?>
 