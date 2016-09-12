<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">

    <title>Peoples Weather Map</title>
    <?php 
        echo link_tag('resources/css/style.css');
        include ('includes/openLayers_head.incl');
        include ('includes/jquery_head.incl');
		include('includes/local_menu.incl'); 
		include('includes/share_button.incl'); 
	?>
</head>
<body onload='init();'>

<!--header and top menu -->
	<?php include ('includes/page_head.incl') ; ?>

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
                <i>&nbsp;&nbsp;click+drag to reposition map, shift+click+drag to zoom, Click "Home" to reset view</i>
            </div>
            <!-- todo: create css style rule for the following instruction -->
        </div>
    </div>
    
<script type="text/javascript">
	var map;
	function init() {
		map = new OpenLayers.Map('map_container',{
			projection:'EPSG:26915',
			maxExtent: new OpenLayers.Bounds(202159,4470000,737457.523439407,4822691.7712555),
			fractionalZoom: true
		});
		var wms = new OpenLayers.Layer.WMS(
			'OpenLayers WMS',
			'http://athene.gis.iastate.edu/arcgis/services/ortho/andreas/ImageServer/WMSServer',
			{layers: 'andreas', format: "image/png" },
			{isBaseLayer: true },
			{}
		);
		
		map.addLayer(wms);
		
		if (!map.getCenter()){
			map.zoomToMaxExtent();
		}
	}
</script>

<?php include('includes/standard_footer.incl'); ?>
