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
					    <li><a href="#tabs-2">Tornadoes</a></li>
						<!-- <li><a href="#tabs-3">Flood</a></li>
					    <li><a href="#tabs-4">Extreme Winds</a></li>
					    <li><a href="#tabs-5">Extreme Temperatures</a></li> -->
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
				    	<h3>Tornadoes</h3>
				    	<div class="spaceleft">
				    		<h4>How they form</h4>
				    		<p>
								<a href="http://kids.britannica.com/thunderstorms_tornadoes/ocliwea124v4.html" target="_blank"><img class="alignright spaceleft" src="<?php echo resource_url('image/PWM/hazards/tornado/ocliwea124a4.gif');?>" width="400"></a>Tornadoes are short-lived, violent storms that generate the highest wind speeds of any weather phenomena.  They can form when a mass of slow-moving warm and humid air near the earth’s surface is overrun by a faster-moving mass of cold and dry air aloft.  The differences in wind speed and direction at different altitudes is known as <a href="http://www.tornadochaser.net/windshear.html"> wind shear</a> and induces horizontal rotation in the air.  Meanwhile, the steep temperature gradients between the air masses create atmospheric instability, causing updrafts of moisture-laden warm air that begin rotating as they rise.  High-intensity rotating updrafts are common in <a href="http://www.srh.noaa.gov/bmx/?n=supercell"> Supercell thunderstorms</a>, in which the spinning vortex may assume the familiar vertical funnel shape of a tornado.
				    		</p>
				    		<h4>Tornado Alley</h4>
				    		<p>
				    			There are about 1,200 tornadoes across the U.S. each year (~35-40 in Iowa), with particularly high occurrence in the central plains region known as <a href="https://en.wikipedia.org/wiki/Tornado_Alley#Tornado_alley_geographical_area">Tornado Alley</a>. Stretching north from central Texas to Minnesota, it is a convergence zone of high-altitude cold dry air moving south from Canada and low-altitude warm humid air moving north from the Gulf of Mexico. The combination produces high wind shear and atmospheric instability that spawn tornadoes.  
							</p>
							<p>
				    			<a href="http://www.weathertrends360.com/Blog/Post/Blizzard-Alley-Meet-Tornado-Alley-777" target="_blank"><img class="alignleft spaceright" src="<?php echo resource_url('image/PWM/hazards/tornado/Tornado-Alley.png');?>" width="463"></a>
				    			Globally, the middle latitudes between 30 and 50 degrees are the most favorable areas for tornado formation, as this is where cold polar and warm subtropical air masses meet.  However, about 90% of all tornadoes occur in the U.S. due to a few distinctive features of the physical geography.  First, the mountain chains run north-south, meaning there are no physical barriers for the convergence of air masses.  Second, mid-altitude hot dry air moving west from the Southern Rockies often also converges and acts as a lid on the rising subtropical air.  This amplifies atmospheric instability.  The peak of the U.S. tornado season occurs in spring and early summer.  As the season progresses, the jet stream moves northward and with it tornadoes also migrate northward within Tornado Alley.
				    		</p>
				    		<h4>Damage severity</h4> 
				    		<p>
				    			High velocity tornado winds can pick up debris and transform it into high-speed projectiles that can damage property and cause serious injury.  Tornado damage severity is measured by the <a href="http://www.spc.noaa.gov/faq/tornado/ef-scale.html">Enhanced Fujita (EF) Tornado Intensity Scale</a>, which assigns a rating between EF-0 and EF-5 based on building damage. The EF rating for a particular tornado is based on the post-storm field evaluation of 28 different indicators (such as homes, retail structures, and trees) across 10 degrees of damage.  Although the EF scale includes wind speed estimates, these values are only inferred based on damage, because it is very difficult to directly measure the tornado wind speed.  The EF scale was devised by a panel of meteorologists and wind engineers, and became operational in 2007.  It revised the original Fujita Scale (1973) to better align observed damage with estimated wind speeds, especially for high intensity tornadoes.
				    		</p>

				    		<table border="1">
				    			<tr>
				    				<th style="width:12%, vertical-align:top">Rating</th>
				    				<th style="width:10%, vertical-align:top">Wind Speed</th>
				    				<th style="width:13%, vertical-align:top">Damage</th>
				    				<th style="width:40%, vertical-align:top">Description</th>
				    				<th style="width:25%, vertical-align:top">Example</th>
				    			</tr>
				    			<tr>
				    				<th>EF-0</td>
				    				<td>65-85 mph</td>
				    				<td>Light</td>
				    				<td>Peels surface off some roofs; some damage to gutters or siding; branches broken off trees; shallow-rooted trees pushed over.</td>
				    				<td style="word-break: break-all"><a href="http://www.srh.noaa.gov/images/mlb/surveys/012210/Viera_CraneCk1.jpg">www.srh.noaa.gov/images/mlb/surveys/012210/Viera_CraneCk1.jpg</a><br />
				    				<a href="http://www.srh.noaa.gov/mlb/?n=012210">www.srh.noaa.gov/mlb/?n=012210</a></td>
				    			</tr>
				    			<tr>
				    				<th>EF-1</td>
				    				<td>86-110 mph</td>
				    				<td>Moderate</td>
				    				<td>Roofs severely stripped; mobile homes overturned or badly damaged; loss of exterior doors; windows and other glass broken.</td>
				    				<td style="word-break: break-all"><a href="http://www.weather.gov/images/ict/wxstory/2012/may19th/damage/placemark1.jpg"></a>www.weather.gov/images/ict/wxstory/2012/may19th/damage/placemark1.jpg</a><br /><a href="http://www.weather.gov/ict/event_05192012">www.weather.gov/ict/event_05192012</a></td>
				    			</tr>
				    			<tr>
				    				<th>EF-2</td>
				    				<td>111-135 mph</td>
				    				<td>Considerable</td>
				    				<td>Roofs torn off well-constructed houses; foundations of frame homes shifted; mobile homes completely destroyed; large trees snapped or uprooted; light-object missiles generated; cars lifted off ground.</td>
				    				<td style="word-break: break-all"><a href="https://commons.wikimedia.org/wiki/File:EF2_tornado_damage_example_%282%29.jpg">commons.wikimedia.org/wiki/File:EF2_tornado_damage_example_%282%29.jpg</a></td>
				    			</tr>
				    			<tr>
				    				<th>EF-3</td>
				    				<td>136-165 mph</td>
				    				<td>Severe</td>
				    				<td >Entire stories of well-constructed houses destroyed; severe damage to large buildings; trains overturned; trees debarked; heavy cars lifted off the ground and thrown; structures with weak foundations blown away.</td>
				    				<td style="word-break: break-all"><a href="http://www.srh.noaa.gov/images/bmx/significant_events/2012/012312/Center%20Point/2.JPG">www.srh.noaa.gov/images/bmx/significant_events/2012/012312/Center%20Point/2.JPG</a><br /><a href="http://www.srh.noaa.gov/bmx/?n=event_01232012centerpoint">www.srh.noaa.gov/bmx/?n=event_01232012centerpoint</a></td>
				    			</tr>
				    			<tr>
				    				<th>EF-4</td>
				    				<td>166-200 mph</td>
				    				<td>Devastating</td>
				    				<td>Well-constructed whole frame houses completely leveled; cars thrown and small missiles generated.</td>
				    				<td style="word-break: break-all"><a href="https://en.wikipedia.org/wiki/November_17,_2013_tornado_outbreak#/media/File:Photograph_showing_the_damage_to_houses_and_trees_in_Washington_following_the_11-17-2013_tornado.jpg">en.wikipedia.org/wiki/November_17,_2013_tornado_outbreak#/media/File:Photograph_showing_the_damage_to_houses_and_trees_in_Washington_following_the_11-17-2013_tornado.jpg</a></td>
				    			</tr>
				    			<tr>
				    				<th>EF-5</td>
				    				<td>&gt;200 mph</td>
				    				<td>Incredible</td>
				    				<td>Strong frame houses leveled off foundations and swept away; automobile-sized missiles fly through the air in excess of 100 yards; high-rise buildings have significant structural deformation</td>
				    				<td style="word-break: break-all"><a href="https://en.wikipedia.org/wiki/2013_Moore_tornado#/media/File:Aerial_view_of_2013_Moore_tornado_damage.jpg">en.wikipedia.org/wiki/2013_Moore_tornado#/media/File:Aerial_view_of_2013_Moore_tornado_damage.jpg</a></td>
				    			</tr>
				    		</table>
				    		<p><a href="http://www.wunderground.com/resources/severe/fujita_scale.asp?MR=1
">www.wunderground.com/resources/severe/fujita_scale.asp?MR=1</a>
</p>
				    		<p>The people with the highest mortality risk from tornadoes include occupants of exterior rooms with windows, those unaware of tornado alerts, elderly with mobility constraints, and occupants of mobile homes.  Nationally, about 40% of all people killed by tornadoes die in mobile homes[Sutter, Daniel, and Kevin M. Simmons. "Tornado fatalities and mobile homes in the United States." Natural hazards 53.1 (2010): 125-137]. Due to advancements in radar detection, warning time, tornado awareness, and building construction, mortality from tornadoes has fallen over the past century despite significant growth in population and property in tornado-prone areas.
				    		</p>
				    		<h4>Tornados and Climate Change</h4>
				    		<p>The effect of climate change on tornado frequency and intensity is unclear, but it is an active area of research.  Current understanding suggests that climate change may have divergent effects on the prerequisites for tornado formation:  atmospheric instability and wind shear.  A warming climate is expected to increase the temperature and humidity of southerly winds from the Gulf of Mexico, which would increase atmospheric instability.  However, climate change is also expected to lead to a weakening of the jet stream, which would reduce wind shear and rotation.  Meteorological records over the past half-century indicate no increase in the frequency of damaging tornadoes.  If this trend continues, any future increases in tornado damage will be more attributable to population growth and land use change than climate change.</p>
				    		<p>
					    		<a href="https://www.ncdc.noaa.gov/climate-information/extreme-events/us-tornado-climatology/trends" target="_blank"><img class="aligncenter spaceleft" src="<?php echo resource_url('image/PWM/hazards/tornado/EF1-EF5.png');?>"></a>
				    		</p>

				    	</div>
					</div>



<!--					<div id="tabs-3">
						<h3>Extreme Winds</h3>
				    	<div class="spaceleft row"></div>
				    </div>
					<div id="tabs-4">
						<h3>Extreme Temperatures</h3>
				    	<div class="spaceleft row"></div>
				    </div> -->
				</div>
	    	</div>
    	</div>
    </div>

 <?php include('includes/standard_footer.incl'); ?>
 