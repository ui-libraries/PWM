<?php
	$page_title = 'Peoples Weather Map -- Popups';
	include ("includes/admin_head.incl");
?>
<body>
<?php
	include ("includes/page_head.incl");
?>
	
<div class="container">
	<div class="row spaceabove">
		<div class="col-sm-2 text-center">
			<?php
			echo form_open ('popups/cancel', array('class'=>'form-horizontal'));
			$options =  array ('class'=>'btn btn-primary');
			echo form_submit('cancel', 'Cancel', $options);
			//status 'edit' or 'new' passed in from the controller
			//if it is 'new' delete the popup
			//popups view has the links to all the pieces. Cannot pass it as a single object
			echo form_hidden('popup_status',$status);
			echo form_hidden('popups_view_id',$popups_view->id);
			echo form_hidden('popups_marker_id',$popups_view->f_marker_id);
			echo form_hidden('popups_icon_id',$popups_view->f_icon_id);
			echo form_hidden('popup_id',$popups_view->f_popup_id);
			echo form_hidden('popups_content_id',$popups_view->f_content_id);
			echo form_close();
			?>
		</div>

		<?php
		echo form_open ('popups/save', array('class'=>'form-horizontal'));
		echo form_hidden('popup_view_id',$popups_view->id);
		?>

		<div class="col-sm-3 col-sm-offset-2 text-center">
			<?php
			$options =  array ('class'=>'btn btn-primary');
			echo form_submit('save_go_popups', 'Save and Return to Popups', $options);
			?>
		</div>
		<div class="col-sm-3 text-center">
			<?php
			echo form_submit('save_go_admin', 'Save and Return to Admin Menu', $options);
			?>
		</div>
	</div>

	<div class="row spaceabove">
	    <div class="col-sm-2 col-sm-offset-1">
	    	<h2>Marker</h2>
		</div>
		<<div class="col-sm-8">
			A marker is a point, line, or area on the map. A point marker has a single coordinate pair (for example: 41.974256,-91.662294) and can have an icon image associated with it. Lines or areas are indicated using an array of coordinate pairs (for example: [41.87309067492986,-91.14876766530863],[41.88369136394671,-91.13291716852328])
		</div>
	</div>

	<div class="row spaceabove">
		<div class="form-group">
		    <div class="col-sm-4">
		    	<label for="markername" class="control-label pull-right">Marker Name (unique)</label>
		    </div>
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
	</div>

	<div class="row">
		<div class="form-group">
			<div class="col-sm-4">
		    	<label for="coords" class="control-label pull-right">Marker Coordinates</label>
		    </div>
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
	</div>

	<div class="row">
		<div class="form-group">
			<div class="col-sm-4">
			    <label for="layergroup" class="pull-right control-label">Marker Layer</label>
			</div>
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
	</div>

	<div class="row">
		<div class="form-group">
			<div class="col-sm-4">
		    	<label for="markertype" class="pull-right control-label">Marker Type</label>
		    </div>
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
	</div>
	<div class="row">
		<div class="form-group">
			<div class="col-sm-4">
    			<label for="storyview" class="pull-right control-label">Story View</label>
    		</div>
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
	</div>

	<div class="clearboth"> </div>


	<div class="row spaceabove">
	    <div class="col-sm-2 col-sm-offset-1">
	    	<h2>Icon</h2>
		</div>
		<<div class="col-sm-8">
			<br />An Icon is a small image associated with a point marker type, and is placed on the map at the marker coordinates.
		</div>
	</div>

	<div class="row spaceabove">
		<div class="form-group">
			<div class="col-sm-4">
		    	<label for="iconname" class="pull-right control-label">Icon Name (unique)</label>
		    </div>
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
	</div>

	<div class="row">
		<div class="form-group">
			<div class="col-sm-4">
			    <label for="icondesc" class="pull-right control-label">Icon description</label>
			</div>
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
	</div>


	<div class="row">
		<div class="form-group">
			<div class="col-sm-4">
			    <label for="iconurl" class="pull-right control-label">Icon URL</label>
			</div>
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
	</div>


	<div class="row">
		<div class="form-group">
			<div class="col-sm-4">
    			<label for="iconsize" class="pull-right control-label">Icon Size</label>
    		</div>
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
	</div>


	<div class="row spaceabove">
	    <div class="col-sm-2 col-sm-offset-1">
	    	<h2>Popup</h2>
		</div>
		<<div class="col-sm-8">
			<p><br />When the marker is clicked, the popup content associated with that marker is shown.</p>
		</div>
	</div>


	<div class="row spaceabove">
		<div class="form-group">
			<div class="col-sm-4">
			    <label for="popup_name" class="pull-right control-label">Popup Name (unique)</label>
			</div>
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
	</div>

	<div class="row">
		<div class="form-group">
			<div class="col-sm-4">
			    <label for="popup_width" class="pull-right control-label">Popup Width</label>
			</div>
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
	</div>

	
	<div class="row">
		<div class="form-group">
			<div class="col-sm-4">
				<label for="popup_title_text" class="pull-right control-label">Popup Title Text</label>
			</div>
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
	</div>
	                    
	<div class="row">
		<div class="form-group">
			<div class="col-sm-4">
				<label for="popup_subtitle_text" class="pull-right control-label">Popup Subtitle Text</label>
			</div>
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
	</div>

	<div class="row">
		<div class="form-group">
			<div class="col-sm-4">
				<label for="popup_imageurl" class="pull-right control-label">Popup Image URL</label>
			</div>
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
	</div>

	<div class="row">
		<div class="form-group">
			<div class="col-sm-4">
				<label for="popup_body" class="pull-right control-label">Popup Body Text</label>
			</div>
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
	</div>


	<div class="row">
		<div class="form-group">
			<div class="col-sm-4">
				<label for="popup_buttontext" class="pull-right control-label">Popup Button Text</label>
			</div>
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
	</div>

	<div class="row">
		<div class="form-group">
			<div class="col-sm-4">
				<label for="popup_storyurl" class="pull-right control-label">Story URL</label>
			</div>
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
	</div>
	<div class="row spaceabove"></div>
</div>
<?php include('includes/page_foot.incl');