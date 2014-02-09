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
	?>
</head>
<body onload='init();'>

<!--header and top menu -->
	<?php include ('includes/page_head.incl') ; ?>

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
    
<script type="text/javascript">
    var map;
    function init() {
        map = new OpenLayers.Map('map_container',{
//            projection:﻿'EPSG:4326',
            projection:﻿'EPSG:26915',
            maxExtent: new OpenLayers.Bounds(202159,4470000,737457.523439407,4822691.7712555),
            fractionalZoom: true
        });

        var wms = new OpenLayers.Layer.WMS(
            'OpenLayers WMS',
            'http://ags.gis.iastate.edu/arcgisserver/services/Ortho/andreas/ImageServer/WMSServer',
            {layers: 'basic'},
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
