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
		    	<h2>Hazards Data</h2>
		    	<div id="tabs" class="spaceleft">
					<ul>
					    <li><a href="#tabs-1">Drought</a></li>
					    <li><a href="#tabs-2">Flood</a></li>
					    <li><a href="#tabs-3">Extreme Winds</a></li>
					    <li><a href="#tabs-4">Extreme Temperatures</a></li>
					</ul>

					<div id="tabs-1">
				    	<h3>Drought</h3>
				    	<div class="spaceleft">
							<h4>Dimensions of drought</h4>
							<p>
							<a href="http://www.slideshare.net/gwpceewaterpartnership/wmo-drought-activities-and-regional-perspectives-by-jose-camacho-scientific-officer-agricultural-meteorology-division-wmo" target="_blank"><img class="alignright spaceleft" src="<?php echo resource_url('image/PWM/hazards/drought/wmo-drought-activities-and-regional-perspectives.jpg');?>" width="500"></a>
							Drought is a shortage of water over a large geographic area that persists for an extended period of time.  As the duration of the drought, the impacts become more severe.  The first stage of drought is called meteorological drought, characterized by weeks of below-average precipitation.  As the rainfall deficit continues, it can reduce the growth and health of crops.  Conditions at this stage have progressed into an agricultural drought.  If the drought extends from weeks into months, water levels in rivers, lakes, and groundwater wells begin to fall.  This stage is known as a hydrological drought.  If the drought further extends to a period of months to years, there are potentially major impacts to the local and regional economy, and reduced water availability for communities and households.  This is referred to as a socioeconomic drought.  Overall, drought conditions are amplified by high temperatures, strong winds, low humidity, and unsustainable water usage.
						 	</p>
						 	<h4>Drought Impacts</h4>
							<p>There is no specific geography associated with drought, as drought conditions can occur in any place.  Drought fundamentally differs from aridity:  aridity is a permanent climatic characteristic of a region, whereas drought is a temporary condition.  Compared to other natural hazards, drought is unique due to its combination of slow rate of onset and large impact area.  The direct impacts of drought include reduced agricultural land and productivity, reduced water levels, crop damage, and food insecurity.  Indirectly, severe drought can produce major environmental, economic and social impacts, including increased wildfire hazard, damage to ecological habitats, dust storms, lost income, increased water and energy demands, and political and social unrest.  In its most extreme form, drought can enhance the availability of loose surface soils, a situation that helped produce the Dust Bowl of the 1930s.  More recently severe drought has been a leading precursor to civil war in Darfur and Syria, with associated impacts of famine and large-scale population displacement.</p>
							<a href="http://mashable.com/2015/03/02/global-warming-syria-civil-war/#r2SAshNzGkqH" target="_blank"><img class="aligncenter" src="<?php echo resource_url('image/PWM/hazards/drought/Syria.png');?>" width="800"></a>
							<h4>Measuring drought</h4>
							<p>

							<a href="http://www.ncdc.noaa.gov/temp-and-precip/us-weekly/20110702" target="_blank"><img class="alignleft spaceright" src="<?php echo resource_url('image/PWM/hazards/drought/panom20110702-pg.gif');?>" width="650"></a>
							The most widely used measure of long-term drought intensity is the Palmer Drought Severity Index.  The Palmer Index combines measures of precipitation, soil moisture, and temperature to measure dryness on a scale from -4.0 (dry) to 4.0 (wet).  The resulting index values can then be mapped to illustrate the geographic variation in drought conditions.  While the Palmer Index is an indicator of overall drought intensity, specific dimensions of drought are measured by other drought indicators.  These include Precipitation Anomaly and the Standardized Precipitation Index (meteorological drought), and the Crop Moisture Index (agricultural drought).</p>
							<h4 class="spaceabove">Drought and climate change</h4>
							<p>
							<a href="https://www3.epa.gov/climatechange/kids/impacts/signs/droughts.html" target="_blank"><img class="alignright spaceleft spaceabove" src="<?php echo resource_url('image/PWM/hazards/drought/2-1-3-drought.gif');?>" width="400"></a>Climate change is widely expected to increase the variability of meteorological conditions, leading to a future with greater incidence of both extreme floods and extreme drought.  Climate change is expected to alter global patterns of air circulation and precipitation, and increase rates of evapotranspiration.  These are important regional and local factors that influence the geography and severity of drought.  Warmer temperatures amplify demands on water resources and evapotranspiration from soil and vegetation.  The incidence of drought is likely to increase in existing subtropical dry regions such as Southern Africa, the U.S. Southwest, South Asia, and the Mediterranean.  Meanwhile, an expected expansion of semi-arid and arid regions will increase the land area subject to recurrent drought.  At regional and local scales, there is still considerable uncertainty in climate model predictions of future drought severity.</p>
			    	</div>
				    </div>				    	

					<div id="tabs-2">
				    	<h3>Flood</h3>
				    	<div class="spaceleft row"></div>
					</div>
					<div id="tabs-3">
						<h3>Extreme Winds</h3>
				    	<div class="spaceleft row"></div>
				    </div>
					<div id="tabs-4">
						<h3>Extreme Temperatures</h3>
				    	<div class="spaceleft row"></div>
				    </div>
				</div>
	    	</div>
    	</div>
    </div>

 <?php include('includes/standard_footer.incl'); ?>
 