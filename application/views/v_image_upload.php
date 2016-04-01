<?php
	$page_title = 'PWM - Upload Images';
	include ("includes/admin_head.incl");
?>
<body>
<?php
	include ("includes/page_head.incl");
?>	
<div class="container">
  <h2>Upload Images for use in Stories or Popups</h2>
  <div class="panel panel-default">
	<div class="panel-body">
	    <?php
		    @ini_set('upload_max_size', '100M');
		    @ini_set('post_max_size', '105M');
		
			if (!empty($errmsg)){
				echo "<h4 class='text-danger'>$errmsg</h4>";
			} else {
				if (!empty($msg)){ echo "<h4>$msg</h4>";}
				if (!empty($upload_data)){
					echo "file_name: ".$upload_data['file_name']."<br />";
					echo "file_size: ".$upload_data['file_size']."<br />";
					echo "image_type: ".$upload_data['image_type']."<br />";
					echo "image_size: ".$upload_data['image_size_str']."<br />";
					$thumb_name = $upload_data['raw_name']."_thumb".$upload_data['file_ext'];
					echo img("$thumb_url/$thumb_name");
				}
			}
			echo form_open_multipart('image_manager/uploadimage');
			//echo form_hidden ('MAX_FILE_SIZE', '1000000');
		?>
		<h3>Choose an image file, then Upload: </h3>
		<div class="text-info row">
			<div class="col-sm-8">Naming Conventions:
				<ul>
<!--					<li>County Names should be all lower case, e.g. ("cedar")</li>-->
					<li>Image and Story names should be free of spaces and special characters </li>
					<li>Image names should include an extension (e.g. ".jpg", ".png", ".gif")</li>
				</ul>
			</div>
		</div>

		<div>
			
		    <div class="form-group row">
			    <label class="control-label col-sm-2" for="county">County Name:</label>
			    <div class="col-sm-3">
					<?php
						$county = (!empty($county))? $county : 0;
						echo form_dropdown('county', $counties, $county);
					?>
<!--
						$data = array(
							'name'	=> 'county',
							'id'	=> 'county',
							'class'	=>	'form-control',
							'placeholder' =>'enter county name'
						);
						echo form_input($data);
-->
			    </div>
		    </div>

			<div class="form-group row">
			    <label class="control-label col-sm-2" for="imagetype">Image Type:</label>
			    <div class="col-sm-5">          
					<label class="radio-inline"><input type="radio" name="imagetype" value="popup">Marker or Popup Image</label>
					<label class="radio-inline"><input type="radio" name="imagetype" value="story">Story Image</label>
			    </div>
		    </div>
		    
			<div class="form-group row">
			    <label class="control-label col-sm-2" for="storyname">Story Name (if applicable):</label>
			    <div class="col-sm-3">          
					<?php 
						$data = array(
							'name'	=> 'storyname',
							'id'	=> 'storyname',
							'class'	=>	'form-control',
							'placeholder' =>'e.g. 1985Tornado'
						);
						echo form_input($data);
					?>
			    </div>
			</div>
		    
		    <div class="form-group row">
			    <div class="col-sm-5">
				    <input type="file" class = "btn btn-default" name="userfile" size="20" />
			    </div>
		    </div>
		    
		    <div class="form-group row">
			    <div class="col-sm-3">		
					<?php
						$formextras = array ('class' => 'btn btn-default', 'style' => 'width:275px');
						echo form_submit('upload','Upload',$formextras); 
					?>
			    </div>
		    </div>
		    
		    <div class="form-group row">
			    <div class="col-sm-3">  				            
					<?php echo form_submit('return','Return to Image Manager',$formextras); ?>
			    </div>
		    </div>
		    
		</div>
		<?php echo form_close() ?>
	</div>
  </div>
</div>
</body>
</html>
