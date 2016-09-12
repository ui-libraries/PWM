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
	    $( document ).ready(function() {
		 	$(function() {
		 		$( "#tabs" ).tabs({active: <?php echo $tabindex; ?>});
	  		});  		
		});
  	</script>
</head>
<body>
<!--header and top menu -->
	<?php include ('includes/page_head.incl') ;?>

    <div id="contentwrapper">
    	<div class="innertube">
	    	<div id="singlecolumn">
                <h2>Websites Recommended by Climate Scientists / General Websites:</h2>
                <div class="spaceleft row">
                     <ul>
                        <li><a href="http://h2oradio.org/">H2O Radio</a></li>
                        <li><a href="http://www.ipcc.ch/">Intergovernmental Panel on Climate Change</a></li>
                        <li><a href="https://www3.epa.gov/climatechange/">EPA: Climate Change</a></li>
                        <a href="">h2oradio.org/</a>https://www.edf.org/">Environmental Defense Fund</a></li>
                        <li><a href="http://www.ccacoalition.org/en">Climate & Clean Air Coalition</a></li>
                        <li><a href="http://www.papalencyclicals.net/">Papal Encyclicals</a></li>
                        <li><a href="http://dailyerosion.org/">Daily Erosion Project</a></li>
                        <li><a href="http://www.yaleclimateconnections.org/">Yale Climate Connections</a></li>
                        <li><a href="http://katharinehayhoe.com/">Katharine Hayhoe, Climate Scientist</a></li>
                        <li><a href="http://www.noaa.gov/">National Oceanic and Atmospheric Administration</a></li>
                        <li><a href="http://climate.audubon.org/">Audobon: The Climate Report</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

<?php include('includes/standard_footer.incl'); ?>