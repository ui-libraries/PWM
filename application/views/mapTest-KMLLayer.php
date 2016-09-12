<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">

    <title>Peoples Weather Map</title>
    <?php 
        echo link_tag('resources/css/style.css');
        include ('includes/openLayers_head.incl');
        include ('includes/jquery_head.incl');
        include ('includes/googlemap_header.incl');
		include ('includes/page_head.incl') ;
		
	?>
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

<!--map script -->
<script type="text/javascript">
var map;
function init() {
	map = new OpenLayers.Map (
		'map_container',
		{
/* 		options */
		}
	);
    		    
    var osm = new OpenLayers.Layer.OSM());
    
    var kml = new OpenLayers.Layer.Vector("KML", {
		projection: map.displayProjection,
        strategies: [new OpenLayers.Strategy.Fixed()],
        protocol: new OpenLayers.Protocol.HTTP({
        	url: "<?php echo resource_url("gis_data/kml/WilliamsAndHunting.kml") ?>",
			format: new OpenLayers.Format.KML({
            	extractStyles: true,
                extractAttributes: true
            })
        })
    });
	
	map.addLayers([osm, kml]);
	
	map.setCenter(new OpenLayers.LonLat(-10204687.241279, 5157550.2643103), 15);
	
}
</script>
<!-- end map script -->

<?php include('includes/standard_footer.incl'); ?>