<?php
	$page_title = 'Peoples Weather Map -- Stories';
	include ("includes/edit_head.incl");
?>

<body>
<?php
	include ("includes/page_head.incl");
?>
	
<div class="container">
	<div class="row spaceabove">
		<div class="col-sm-2 text-center">
			<?php
			echo form_open ('stories/save', array('class'=>'form-horizontal'));
			echo form_hidden('story_id',$story->id);
			echo form_hidden('edit_status',$edit_status); //"edit" or "new"
			$options =  array ('class'=>'btn btn-primary');
			echo form_submit('cancel', 'Cancel', $options);
			?>
		</div>
		
		<div class="col-sm-3 col-sm-offset-2 text-center">
			<?php
			$options =  array ('class'=>'btn btn-primary');
			echo form_submit('save_go_list', 'Save and Return to Story List', $options);
			?>
		</div>
		<div class="col-sm-3 text-center">
			<?php
			echo form_submit('save_go_admin', 'Save and Return to Admin Menu', $options);
			?>
		</div>
	</div>

	<div class="row spaceabove">

		<div class="form-group">
		    <div class="col-sm-2">
		    	<label for="story_name" class="control-label pull-right">Story Name</label>
		    </div>
			<div class="col-sm-6">
		        <?php
		        	$options = array(
			        	'type'=>'text', 
		        		'name' => 'story_name',
		        		'id'=>'title',
		        		'class'=>'form-control',
						'placeholder'=>'countyname/storyname (no spaces)',
		        		'value' => $story->story_name
		        	);
					echo form_input($options); 
				?>
			</div>
		</div>
	</div>

	<div class="row">

		<div class="form-group">
			<div class="col-sm-2">
				<label for="story_title" class="control-label pull-right">Story Title</label>
			</div>
			<div class="col-sm-6">
				<?php
				$options = array(
					'type'=>'text',
					'name' => 'story_title',
					'id'=>'title',
					'class'=>'form-control',
					'value' => $story->title
				);
				echo form_input($options);
				?>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="form-group">
		    <div class="col-sm-2">
		    	<label for="story_location" class="control-label pull-right">Story Location</label>
		    </div>
			<div class="col-sm-6">
		        <?php
		        	$options = array(
			        	'type'=>'text', 
		        		'name' => 'story_location', 
		        		'id'=>'story_location', 
		        		'class'=>'form-control',  
		        		'value' => $story->location
		        	);
					echo form_input($options); 
				?>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="form-group">
		    <div class="col-sm-2">
		    	<label for="story_location" class="control-label pull-right">Byline</label>
		    </div>
			<div class="col-sm-6">
		        <?php
		        	$options = array(
			        	'type'=>'text', 
		        		'name' => 'story_byline', 
		        		'id'=>'story_byline', 
		        		'class'=>'form-control',  
		        		'value' => $story->byline
		        	);
					echo form_input($options); 
				?>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="form-group">
		    <div class="col-sm-2">
		    	<label for="county" class="control-label pull-right">County</label>
		    </div>
			<div class="col-sm-10">
		         <select name="county">
			        <?php
			        	foreach ($counties as $county) {
	 					 	echo "<option value='".$county->id."'";
	 					 	if ($county->id == $story->f_county_id){
	 					 		echo " selected ";
	 					 	}
	 					 	echo ">$county->county</option>\n";
	 					}
	 				?>
				</select>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="form-group">
			<div class="col-sm-2">
				<label for="status" class="control-label pull-right">Status</label>
			</div>
			<div class="col-sm-10">
				<select name="status">
					<?php
						echo "<option value='DRAFT' " ;
						if ($story->status=='DRAFT') { echo " selected"; }
						echo ">Draft</option>\n" ;

						echo "<option value='PUBLISHED' " ;
						if ($story->status=='PUBLISHED') { echo " selected"; }
						echo ">Published</option>\n" ;
					?>
				</select>
			</div>
		</div>
	</div>



	<div class="row spaceabove">
		<div class="form-group">
		    <div class="col-sm-12">
		    	<label for="story_content" class="control-label">Story Content</label>
		    </div>
		    <div class="col-sm-12">
		    	<textarea name="story_content" rows="66" cols="110" class="monospace">
					<?php echo $story->story_content; ?>
				</textarea>
			</div>
		</div>
	</div>

	
<?php 
	echo form_close(); 
	include ("includes/page_foot.incl");
?>
</div>
	

	