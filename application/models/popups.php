<?php

/**
 * Model Class Popups  includes functions to manage the screen popoups and links
 *  import from csv
 *  build html menu div
 *
 * @author mneucoll
 */
class Popups extends CI_model {
	
	
    function __construct() {
        // Call the Model constructor
        parent::__construct();
    }
    
    function get_popups($view){
    	$sql = "SELECT popups_icons.id AS icon_id, popups_icons.iconname AS iconname,
					popups_markers.id AS marker_id, popups_markers.markername,
					popups.id AS popup_id, popups.popupname AS popupname 
				FROM popups_views
					JOIN popups_icons ON popups_views.iconname = popups_icons.iconname
					JOIN popups_markers ON popups_views.markername = popups_markers.markername
					JOIN popups ON popups_views.popupname = popups.popupname
				WHERE popups_views.viewname = '".$view."'";
    	$query = $this->db->query($sql);
    	return $query;
    }
    
    function build_icon($id){
	    $sql= "SELECT iconname, iconurl, iconsize_x, iconsize_y, iconanchor_x, iconanchor_y, popupanchor_x, popupanchor_y 
	    		FROM popups_icons WHERE id = $id";
	    $query = $this->db->query($sql);
	    if ($query->num_rows()>0){
	    	$row = $query->row();
	    	$optionStr = '';
	    	if(!empty($row->iconurl)){ $optionStr.="iconUrl:'".image_url($row->iconurl)."',\n";}
	    	if(strlen($row->iconsize_x)>0 && strlen($row->iconsize_y)>0) {
	    		$optionStr .= "iconSize:[".$row->iconsize_x.",".$row->iconsize_y."],\n";
	    	}
	    	if(strlen($row->iconanchor_x)>0 && strlen($row->iconanchor_y)>0) {
	    		$optionStr .= "iconAnchor:[".$row->iconanchor_x.",".$row->iconanchor_y."],\n";
	    	}
	    	if(strlen($row->popupanchor_x)>0 && strlen($row->popupanchor_y)>0) {
	    		$optionStr .= "popupAnchor:[".$row->popupanchor_x.",".$row->popupanchor_y."],\n";
	    	}
		    if (strlen($optionStr)>0) {$optionStr = substr($optionStr,0,-2);}
	    	
	    	$iconStr = 	"var ".$row->iconname." = L.icon({\n";
	    	$iconStr .= "$optionStr\n";
	    	$iconStr .= "});\n";
	    }
	    return $iconStr;
    }
 
 
    
    function build_marker($id){
    	$sql = "SELECT markername, lat, lng, iconname, clickable, draggable, keyboard, title,  zindexoffset, opacity, riseonhover, riseoffset  
    			FROM popups_markers WHERE id = $id";
	    $query = $this->db->query($sql);
	    if ($query->num_rows()>0){
	    	$row = $query->row();
	    	$optionStr = '';
	    	if(!empty($row->iconname)){ $optionStr.="icon:".$row->iconname.",\n";}
	    	if(!empty($row->clickable)){ $optionStr.="clickable:".strtolower($row->clickable).",\n";}
	    	if(!empty($row->draggable)){ $optionStr.="draggable:".strtolower($row->draggable).",\n";}
	    	if(!empty($row->keyboard)){ $optionStr.="keyboard:".strtolower($row->keyboard).",\n";}
	    	if(!empty($row->title)){ $optionStr.="title:'".$row->title."',\n";}
	    	if(!empty($row->zindexoffset)){ $optionStr.="zIndexOffset:".$row->zindexoffset.",\n";}
	    	if(!empty($row->opacity)){ $optionStr.="opacity:".$row->opacity.",\n";}
	    	if(!empty($row->riseonhover)){ $optionStr.="riseOnHover:".strtolower($row->riseonhover).",\n";}
	    	if(!empty($row->riseoffset)){ $optionStr.="riseOffset:".$row->riseoffset.",\n";}
		    if (strlen($optionStr)>0) {$optionStr = substr($optionStr,0,-2);}
    	     	
	    	$markerStr = "var ".$row->markername." = L.marker( [".$row->lat.",".$row->lng."], {";
	    	$markerStr .= "$optionStr\n";
	    	$markerStr .= "}).addTo(map);\n";	
	    }
		return $markerStr;
	}


	function build_popup($id){
		$sql = "SELECT id, popupname, setlat, setlng, maxwidth,minwidth, maxheight, autopan, keepinview, closebutton, offset_x, offset_y
					FROM popups
					WHERE id = $id";
	    $query = $this->db->query($sql);
	    if ($query->num_rows()>0){
	    	$row = $query->row();
	    	$optionStr = '';    	
	    	if(!empty($row->maxwidth)){ $optionStr.="maxWidth:".$row->maxwidth.",\n";}
	    	if(!empty($row->minwidth)){ $optionStr.="minWidth:".$row->minwidth.",\n";}
	    	if(!empty($row->maxheight)){ $optionStr.= "maxHeight:".$row->maxheight.",\n";}
	    	if(!empty($row->autopan)){ $optionStr.= "autoPan:".strtolower($row->autopan).",\n";}
	    	if(!empty($row->keepinview)){ $optionStr.= "keepInView:".strtolower($row->keepinview).",\n";}
	    	if(!empty($row->closebutton)){ $optionStr.= "closeButton:".strtolower($row->closebutton).",\n";}
	    	if(strlen($row->offset_x)>0 && strlen($row->offset_y)>0) {
	    		$optionStr .= "offset:L.point(".$row->offset_x.",".$row->offset_y."),\n";
	    	}
	    	if (strlen($optionStr)>0) {$optionStr = substr($optionStr,0,-2);}
	    	
	    	$popupcontent = $this->build_content($row->popupname);

	    	$popupStr = "var ".$row->popupname." = L.popup(";
			$popupStr .= (!empty($optionStr)) ? "{\n$optionStr\n}" : '';
	    	$popupStr .= ")";
	    	$popupStr .= ".setContent('".$popupcontent."');\n";
	    	if (!empty($row->setlat) && !empty($row->setlng)){
		    	$popupStr .= ".setLatLng([".$row->setlat.",".$row->setlng."])";
	    	}
	    }
	    return $popupStr;	
	}
	
	function build_content($popupname) {
		$sql = "SELECT id, popupname, title, subtitle, body, imageurl, buttontxt, buttonurl
				FROM public.popups_content
				WHERE popupname = '".$popupname."'";
		$query = $this->db->query($sql);
		$row = $query->row();
		
		$buildstr = "";
		if (!empty($row->title)) {$buildstr.= "<h3>".$row->title."</h3>";}
		if (!empty($row->subtitle)) {$buildstr.= "<h4>".$row->subtitle."</h4>";}

		if (!empty($row->imageurl)) {
			$imgaddress=image_url($row->imageurl);
			$size = getimagesize("$imgaddress");
			$buildstr.= "<div class=\"popupimage\" style=\"height:".$size[1]."px; width:".$size[0]."px;\">";
			$buildstr.="<img src=\"".image_url($row->imageurl)."\" >"; 
			$buildstr .= "</div>";		
		}
		if (!empty($row->body)) {$buildstr.="<div class=\"popuptxt\">".$row->body."</div>";}
		if (!empty($row->buttontxt)&&!empty($row->buttonurl)) {
			$buildstr .= "<form action=\"".site_url($row->buttonurl)."\" method=\"POST\"><button type=\"submit\">".$row->buttontxt."</button></form>";
		}
		return $buildstr;
		
	}
	
	function bind_popup($popupname, $viewname ) {
		$this->db->where('popupname', $popupname);
		$this->db->where('viewname', $viewname);
		$query = $this->db->get('popups_views');
		$row=$query->row();
		
		if (strlen($row->offset_x)>0 && strlen($row->offset_y)>0) {
			$bindstr = "var offset_xy = L.point(".$row->offset_x.",".$row->offset_y.");";
			$bindstr .= $row->markername.".bindPopup(".$popupname.", {offset:offset_xy});";
		} else {
			$bindstr = $row->markername.".bindPopup(".$popupname.");";			
		}
		return $bindstr;
	}
	
	function load_csv() {
		$tables = array("popups", "popups_content", "popups_icons", "popups_markers", "popups_views");
		$result = "";
		foreach ($tables as $table) {
			$sql = "TRUNCATE TABLE $table ";
	        $query = $this->db->query($sql);
	        $result .= "$table table truncated<br />";
	        $sql = "COPY $table FROM '".FCPATH."resources/csv/$table.csv' DELIMITER ',' CSV HEADER";
	        $query = $this->db->query($sql);
			$result .= $this->db->affected_rows()." record(s) loaded into $table table from $table.csv<br /><br />";
        }
        //fred ($result,"result");
        return $result;  
    }

}

?>