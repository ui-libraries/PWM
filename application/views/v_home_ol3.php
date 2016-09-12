<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">

    <title>Peoples Weather Map</title>
    <?php 
        echo link_tag('resources/css/style.css');
        include ('includes/openLayers3_head.incl');
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
                <div id='map_container'>
	                <button style='position:relative; left: 10px; top:30%' onclick='listLayerTypes()'>List Layer Types</button>                
	                <button style='position:relative; left: 10px; top:30%' onclick='removeTopLayer()'>Remove Top Layer</button>
					<button style='position:relative; left: 10px; top:30%' onclick='swapTopLayer()'>Swap Top Layers</button>                				<div id='map'></div>
				</div>
                <i>&nbsp;&nbsp;click+drag to reposition map, shift+click+drag to zoom, Click "Home" to reset view</i>
            </div>
            <!-- todo: create css style rule for the following instruction -->
        </div>
    </div>
	<script type='text/javascript'>
		<?php include('maps/andreas.js'); ?>
	</script>


    
<!--
    <script type="text/javascript">
      var map = new ol.Map({
        target: 'map_container',
        layers: [
          new ol.layer.Tile({
            source: new ol.source.MapQuest({layer: 'sat'})
          })
        ],
        view: new ol.View({
          center: ol.proj.transform([37.41, 8.82], 'EPSG:4326', 'EPSG:3857'),
          zoom: 4
        })
      });
    </script>
-->

	
	
	

<?php include('includes/standard_footer.incl'); ?>
