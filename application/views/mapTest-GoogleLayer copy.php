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
	
	var google_layer = new OpenLayers.Layer.Google(
        "Google Satellite Layer",
        {type: google.maps.MapTypeId.SATELLITE, numZoomLevels: 22}
    );

	map.addLayer(google_layer);
	map.zoomToExtent(new OpenLayers.Bounds(-11423972.497799,4302487.4475169,-10445578.535885,5036282.9189525));
}
</script>
<!-- end map script -->

<?php include('includes/standard_footer.incl'); ?>