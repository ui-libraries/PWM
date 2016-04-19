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
			<div class ="leftcol500 nomargin">
				<div class="vspacer"></div>
<!--				<img src="../../resources/image/cedar/1936blizzard/1936Blizzard-1.jpg" />-->
				<img src="../../resources/image/polk/Drought2012/CornInDrought.jpg" />
				<img src="../../resources/image/cedar/1936blizzard/1936Blizzard-3.jpg" />
				<img src="../../resources/image/cedar/2013Flood/June2013Flood-3-WestMainSt.jpg">

			</div>
			<div class="rightcol500 nomargin">
		    	<h2>Get Involved</h2>
		    	<p>If you would like to contribute a severe weather story for one of Iowa’s counties, PWM would like to hear from you.  You can provide photographs of severe weather events, a weather diary, or a story of severe weather.  Whether the severe weather event was long ago or just last week, we would like to see your story.  Contact us and we will tell you how to submit your story or images.  <a href="mailto:pwm@uiowa.edu">pwm@uiowa.edu</a>
				</p>
				<img src="../../resources/image/linn/Midland/Brian.jpg">
				<img src="../../resources/image/cedar/1965Tornado/PalmSundayTornado-1965Kruckenberg-S.jpg">

				<!--				<img src="../../resources/image/harrison/Logan1999/Logan1999_1.jpg" />-->
			</div>
		</div>
	</div>



<?php include('includes/standard_footer.incl'); ?>
 