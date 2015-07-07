<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Peoples Weather Map</title>
    
    <?php 
    	echo link_tag('resources/css/style.css');
		//include ('includes/openLayers_head.incl');
		include ('includes/leaflet_head.incl');
        include ('includes/jquery_head.incl');
		include('includes/local_menu.incl'); 
     ?>
     
    <!-- remove the pointer on the leaflet popup -->
    <style>
		 .leaflet-popup-tip-container{visibility:hidden;}
	</style>
	
</head>

<body onload='init();'>

<!--header and top menu -->
	<?php include ('includes/page_head.incl') ;?>

<!--page content -->	
	<div id="contentwrapper">
	    <div id="leftcolumn">
	        <div class="innertube">
	            <?php echo $local_menu ?>
	        </div>
	    </div>
	    <div id="contentcolumn">
	        <div class="innertube">
	             <div id='map_container'></div>
	        </div>
	    </div>
	</div>

<!-- map script -->
<script type="text/javascript">
    var map;
    
    function init() {
		//add a leaflet map 
	    map = L.map('map_container').setView([42.3444, -95.4706], 12);

		// add an OpenStreetMap tile layer
		L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
	    	attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
			}).addTo(map);
			
		<?php
			for ($i=1;$i<$n;$i++){
				echo $iconname[$i];
				echo $markername[$i];
				echo $popupname[$i];
 				echo $bindpopup[$i]; 
			}
		?>
		 map.on('click', function(e) { alert("Lat, Lon : " + e.latlng.lat + ", " + e.latlng.lng) }) 
    }


</script>
<!-- end map script -->

<?php include('includes/standard_footer.incl'); ?>