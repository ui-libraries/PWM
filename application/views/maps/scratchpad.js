var map;

var styleCache = {};
var geoLayer = new ol.layer.Vector({
    source : new ol.source.GeoJSON({
		projection : 'EPSG:900913',
		url : '<?php echo base_url('resources/gis_data/geoJSON/myGeoJSON.geojson'); ?>'
	}),
	style : function(feature, resolution) {
		var text = resolution < 5000 ? feature.get('name') : '';
		if (!styleCache[text]) {
			styleCache[text] = [new ol.style.Style({
				fill : new ol.style.Fill({
					color : 'rgba(0, 255, 255, 0.5)'
				}),
				stroke : new ol.style.Stroke({
					color : '#FF7276',
					width : 1
				}),
				text : new ol.style.Text({
					font : '12px Calibri,sans-serif',
					text : text,
					fill : new ol.style.Fill({
						color : '#000'
					}),
					stroke : new ol.style.Stroke({
						color : '#fff',
						width : 3
					})
				}),
				zIndex : 999
			})];
		}
		return styleCache[text];
	}
});


function init() {
   	map = new ol.Map({
    	target: 'map',
    	renderer:'canvas',
		view: new ol.View({
    		projection: 'EPSG:900913',
    		center:[-8015003.33712,4160979.44405],
    		zoom:5
    	})
    });
    
    var newLayer = new ol.layer.Tile({
    	source: new ol.source.OSM()
	});
	map.addLayer(newLayer);
	
	var vectorLayer = new ol.layer.Tile({
		source: new ol.source.TileWMS({
			preload: Infinity,
			url: 'http://felek.cns.umass.edu:8080/geoserver/wms',
			serverType:'geoserver',
			params:{
				'LAYERS':"Streams:Developed", 'TILED':true
			}
		})
	});	
	vectorLayer.setOpacity(.5);	
	map.addLayer(vectorLayer);

	var vectorLayer_2 = new ol.layer.Tile({
		source: new ol.source.TileWMS({
			preload: Infinity,
			url: 'http://felek.cns.umass.edu:8080/geoserver/wms',
			serverType:'geoserver',
			params:{
				'LAYERS':"Streams:Deposition_of_Nitrogen", 
				'TILED':true
			}
		})
	});
	vectorLayer_2.setOpacity(.5);	
	map.addLayer(vectorLayer_2);
	
	map.addLayer(geoLayer);
}

function listLayerTypes(){
	var layers, a, str;
	layers = map.getLayers();
    for (a = 0; a<layers.length; a++) {         
	    str = " Layer geo_type is: " + layers[a].CLASS_NAME;
	    alert(str);
	}
	//map.getLayersByClass("OpenLayers.Layer.Vector")
}


function removeTopLayer(){
    var layers = map.getLayers();
    layers.pop();
}

function swapTopLayer(){
    var layers = map.getLayers();
    var topLayer = layers.removeAt(2);
    layers.insertAt(1, topLayer);
}





