	var map;	
	function init() {
		var andreas_url = 'http://ags.gis.iastate.edu/arcgisserver/services/Ortho/andreas/ImageServer/WMSServer';
		var andreas_extent = [202073.808723, 4470598.397186, 736849.210393, 4822673.786539]
		var andreas_projection = new ol.proj.Projection({
			code: 'EPSG:26915',
			  // The extent is used to determine zoom level 0. Recommended values for a
			  // projection's validity extent can be found at http://epsg.io/.
			extent: andreas_extent,
			units: 'm'
		});
		ol.proj.addProjection(andreas_projection);
		var andreas_view = new ol.View ({
			projection: andreas_projection,
			center: [469163,4653689],
			zoom:1		
		});
		map = new ol.Map({
			target:'map_container',
			renderer:'canvas',
			view: andreas_view
		})		
	    var andreas_layer = new ol.layer.Tile({
	    	source: new ol.source.ImageWMS({
		    	url: andreas_url,
				params:{
					'LAYERS':'basic', 
					'TILED':true
				}
			})
		});
		map.addLayer(andreas_layer);
	
	}







