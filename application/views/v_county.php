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
		include('includes/share_button.incl'); 
     ?>
     
    <!-- remove the pointer on the leaflet popup -->
    <style>
		 .leaflet-popup-tip-container{visibility:hidden;}
	</style>

	<script>
		$(function() {
		    $( "#share_button" )
		      	.button()
		      	.click(function( event ) {
		        	event.preventDefault();
		        	window.location.href='<?php echo site_url("mainmenu/getinvolved");?>';
		    });
		});
	</script>
	
</head>

<body onload='init();'>

<!--header and top menu -->
	<?php include ('includes/page_head.incl') ;?>

<!--page content -->	
	<div id="contentwrapper">
	    <div id="leftcolumn">
	        <div class="innertube">
	            <?php 
	            	echo $local_menu;
	            	echo form_open("mainmenu/getinvolved");
                	$attributes = array('id' => 'share_button' );
                	echo form_submit('get_involved','Do you have a story to share?', $attributes);
                	echo form_close();
	            ?>
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
	   // map = L.map('map_container').setView([41.80151886731471, -91.14017486572266], 11);
	    map = L.map('map_container').setView(<?php echo ("[$lat,$lng], $zoom")?>);

		// add an OpenStreetMap tile layer
		L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
	    	attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
			}).addTo(map);
			
		<?php
			for ($i=1;$i<$n;$i++){
				echo !empty($iconname[$i])? $iconname[$i] : '';
				echo !empty($markername[$i]) ? 	$markername[$i] : '';
				echo !empty($popupname[$i]) ? 	$popupname[$i] : '';
 				echo !empty($bindpopup[$i]) ? 	$bindpopup[$i] : ''; 
			}
		?>
		map.on('click', function(e) { alert("Lat, Lon : " + e.latlng.lat + ", " + e.latlng.lng) }) 
    }


</script>
<!-- end map script -->

<?php include('includes/standard_footer.incl'); ?>