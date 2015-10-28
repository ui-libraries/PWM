<?php
	$page_title = 'Peoples Weather Map -- Popups';
	include ("includes/admin_head.incl");
?>
<body>
<?php
	include ("includes/page_head.incl");
?>
	
<?php 
	echo form_open ('popups/save', array('class'=>'form-horizontal')); 
	echo form_hidden('popup_view_id',$popups_view->id);
?>

<div class="clearboth">
    <div class="col-sm-1"></div>
    <h2>Marker</h2>
	<div class="col-sm-2"></div>
	<p class="col-sm-8">A marker is a point, line, or area on the map. A point marker has a single coordinate pair (for example: 41.974256,-91.662294) and can have an icon image associated with it. Lines or areas are indicated using an array of coordinate pairs (for example: [41.87309067492986,-91.14876766530863],[41.88369136394671,-91.13291716852328])</p>
</div>

<div class="form-group">
    <label for="markername" class="col-sm-4 control-label">Marker Name (unique)</label>
	<div class="col-sm-6">
        <?php
        	$options = array(
	        	'type'=>'text', 
        		'name' => 'markername', 
        		'id'=>'markername', 
        		'class'=>'form-control',  
        		'value' => $marker->markername
        	);
			echo form_input($options); 
		?>
	</div>
	</div>

<div class="form-group">
    <label for="coords" class="col-sm-4 control-label">Marker Coordinates</label>
	<div class="col-sm-6">
        <?php
        	$options = array(
	        	'type'=>'text', 
        		'name' => 'coords', 
        		'id'=>'coords', 
        		'class'=>'form-control',  
        		'value' => $marker->coords
        	);
			echo form_input($options); 
		?>
	</div>
	</div>

<div class="form-group">
    <label for="layergroup" class="col-sm-4 control-label">Marker Layer</label>
	<div class="col-sm-6">
        <?php
        	$options = array(
	        	'type'=>'text', 
        		'name' => 'layergroup', 
        		'id'=>'layergroup', 
        		'class'=>'form-control',  
        		'value' => $marker->layergroup
        	);
			echo form_input($options); 
		?>
	</div>
	</div>
<div class="form-group">
    <label for="markertype" class="col-sm-4 control-label">Marker Type</label>
	<div class="col-sm-2">
        <?php
	        $markertypes = array (
		        'point'=>'point',
		        'line'=>'line',
		        'area'=>'area'
	        );

	        $selected = array($marker->markertype);
	        $extras = "'id'='markertype 'class='form-control'";
			echo form_dropdown('markertype', $markertypes, $selected, $extras); 
		?>
	</div>
	</div>

<div class="form-group">
    <label for="storyview" class="col-sm-4 control-label">Story View</label>
	<div class="col-sm-6">
        <?php
        	$options = array(
	        	'type'=>'text', 
        		'name' => 'storyview', 
        		'id'=>'storyview', 
        		'class'=>'form-control',  
        		'placeholder'=>"harrison",
				'value' => $popups_view->viewname
        		
        	);
			echo form_input($options); 
		?>
	</div>
	</div>



<div class="clearboth">
		<div class="col-sm-1"></div>
    <h2>Icon</h2>
	<div class="col-sm-2"></div>
	<p class="col-sm-8">An Icon is a small image associated with a point marker type, and is placed on the map at the marker coordinates.
</div>

<div class="form-group">
    <label for="iconname" class="col-sm-4 control-label">Icon Name (unique)</label>
	<div class="col-sm-6">
        <?php
        	$options = array(
	        	'type'=>'text', 
        		'name' => 'iconname', 
        		'id'=>'iconname', 
        		'class'=>'form-control',  
        		'value' => $icon->iconname
        	);
			echo form_input($options); 
		?>
	</div>
	</div>

<div class="form-group">
    <label for="icondesc" class="col-sm-4 control-label">Icon description</label>
	<div class="col-sm-6">
        <?php
        	$options = array(
	        	'type'=>'text', 
        		'name' => 'icondesc', 
        		'id'=>'icondesc', 
        		'class'=>'form-control',  
        		'value' => $icon->description
        	);
			echo form_input($options); 
		?>
	</div>
	</div>

<div class="form-group">
    <label for="iconurl" class="col-sm-4 control-label">Icon URL</label>
	<div class="col-sm-6">
        <?php
        	$options = array(
	        	'type'=>'text', 
        		'name' => 'iconurl', 
        		'id'=>'iconurl', 
        		'class'=>'form-control',
        		'placeholder'=>"harrison/popups/LoganIcon.png",
        		'value' => $icon->iconurl
        	);
			echo form_input($options); 
		?>
	</div>
	</div>
<div class="form-group clearboth">
    <label for="iconsize" class="col-sm-4 control-label">Icon Size</label>
	<div class="col-sm-2 alignleft">
	    <label for="iconsize_x" class="control-label">Width</label>
        <?php 
        	$options = array(
	        	'type'=>'text', 
        		'name' => 'iconsize_x', 
        		'id'=>'iconsize_x', 
        		'class'=>'form-control', 
        		'value' => $icon->iconsize_x
        	);
			echo form_input($options); 
		?>
	</div>
	<div class="col-sm-2 alignleft">
	    <label for="iconsize_y" class="control-label">Height</label>
        <?php 
        	$options = array(
	        	'type'=>'text', 
        		'name' => 'iconsize_y', 
        		'id'=>'iconsize_y', 
        		'class'=>'form-control', 
        		'value' => $icon->iconsize_y
        	);
			echo form_input($options); 
		?>
	</div>
	</div>


<div class="clearboth">
    <div class="col-sm-1"></div>
    <h2>Popup</h2>
    <div class="col-sm-2"></div>
    <p class="col-sm-8">When the marker is clicked, the popup content associated with that marker is shown.
</div>

<div class="form-group">
    <label for="popup_name" class="col-sm-4 control-label">Popup Name (unique)</label>
	<div class="col-sm-6">
        <?php
        	$options = array(
	        	'type'=>'text', 
        		'name' => 'popup_name', 
        		'id'=>'popup_name', 
        		'class'=>'form-control',  
        		'value' => $popup->popupname
        	);
			echo form_input($options); 
		?>
	</div>
	</div>

<div class="form-group clearboth">
    <label for="popup_width" class="col-sm-4 control-label">Popup Width</label>
	<div class="col-sm-2 alignleft">
	    <label for="popup_max_width" class="control-label">Max Width</label>
        <?php 
        	$options = array(
	        	'type'=>'text', 
        		'name' => 'popup_max_width', 
        		'id'=>'popup_max_width', 
        		'class'=>'form-control', 
        		'value' => $popup->maxwidth
        	);
			echo form_input($options); 
		?>
	</div>
	<div class="col-sm-2 alignleft">
	    <label for="popup_min_width" class="control-label">Min Width</label>
        <?php 
        	$options = array(
	        	'type'=>'text', 
        		'name' => 'popup_min_width', 
        		'id'=>'popup_min_width', 
        		'class'=>'form-control', 
        		'value' => $popup->minwidth
        	);
			echo form_input($options); 
		?>
	</div>
	</div>

	
<div class="form-group clearboth">
	<label for="popup_title_text" class="col-sm-4 control-label">Popup Title Text</label>
	<div class="col-sm-5 alignleft">
        <?php 
        	$options = array(
	        	'type'=>'text', 
        		'name' => 'popup_title_text', 
        		'id'=>'popup_title_text', 
        		'class'=>'form-control', 
        		'value' => $popup_content->title
        	);
			echo form_input($options); 
		?>
	</div>
	</div>
	                    
<div class="form-group clearboth">
	<label for="popup_subtitle_text" class="col-sm-4 control-label">Popup Subtitle Text</label>
	<div class="col-sm-5 alignleft">
        <?php 
        	$options = array(
	        	'type'=>'text', 
        		'name' => 'popup_subtitle_text', 
        		'id'=>'popup_subtitle_text', 
        		'class'=>'form-control', 
        		'value' => $popup_content->subtitle
        	);
			echo form_input($options); 
		?>
	</div>
	</div>

<div class="form-group clearboth">
	<label for="popup_imageurl" class="col-sm-4 control-label">Popup Image URL</label>
	<div class="col-sm-5 alignleft">
        <?php 
        	$options = array(
	        	'type'=>'text', 
        		'name' => 'popup_imageurl', 
        		'id'=>'popup_imageurl', 
        		'class'=>'form-control', 
        		'placeholder'=>"harrison/popups/LoganPopup.png",
        		'value' => $popup_content->imageurl

        	);
			echo form_input($options); 
		?>
	</div>
	</div>

<div class="form-group clearboth">
	<label for="popup_body" class="col-sm-4 control-label">Popup Body Text</label>
	<div class="col-sm-5 alignleft">
        <?php 
        	$options = array(
	        	'type'=>'textarea', 
        		'name' => 'popup_body', 
        		'id'=>'popup_body', 
        		'class'=>'form-control', 
        		'value' => $popup_content->body

        	);
			echo form_textarea($options); 
		?>
	</div>
	</div>


<div class="form-group clearboth">
	<label for="popup_buttontext" class="col-sm-4 control-label">Popup Button Text</label>
	<div class="col-sm-5 alignleft">
        <?php 
        	$options = array(
	        	'type'=>'text', 
        		'name' => 'popup_buttontext', 
        		'id'=>'popup_buttontext', 
        		'class'=>'form-control', 
        		'placeholder'=>"Go To Story",
        		'value' => $popup_content->buttontxt
        	);
			echo form_input($options); 
		?>
	</div>
	</div>

<div class="form-group clearboth">
	<label for="popup_storyurl" class="col-sm-4 control-label">Story URL</label>
	<div class="col-sm-5 alignleft">
        <?php 
        	$options = array(
	        	'type'=>'text', 
        		'name' => 'popup_storyurl', 
        		'id'=>'popup_storyurl', 
        		'class'=>'form-control', 
        		'placeholder'=>"home/story/harrison/Logan1999",
        		'value' => $popup_content->buttonurl
        	);
			echo form_input($options); 
		?>
	</div>
	</div>

		<div class="row"><hr /></div>

	<div class="row">
    <div class="col-sm-4"></div>
  	<div class="col-sm-2 text-center">
  	<?php 	
		$extra = "class='btn btn-primary'";
		echo form_submit('save', 'Save', $extra); 
		echo form_close();
	?>
  	</div><div class="col-sm-2 text-center">

  	<?php 	
		echo form_open ('admin', array('class'=>'form-horizontal'));
		echo form_submit('cancel', 'Cancel', $extra); 
		echo form_close();
	?>
</div>

        </div>
    </div>
</div>

<?php include('includes/page_foot.incl');