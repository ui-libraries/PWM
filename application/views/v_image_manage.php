<?php
	$page_title = 'Peoples Weather Map -- Manage Images';
	include ("includes/admin_head.incl");
?>
<body>
<?php
	include ("includes/page_head.incl");
?>	
	<div class="row">
	    <div class="col-sm-11 col-sm-offset-1">
		    <h2>Manage Images</h2>
		</div>
    </div>
	<div class="row">
        <div class="col-sm-11 col-sm-offset-1">
	        <?php echo!empty($msg) ? "<h4>$msg</h4>" : ""; ?>
        </div>
		
		<?php 
			echo form_open('image_manager', array('class' => 'form-inline'));
		?>
		<div class="row">
			<div class="col-sm-3 col-sm-offset-2">
				<div class="form-group">
					<label for="searchVal">Find Image:</label>
					<?php
						$options = array(
					        'name'          => 'searchVal',
					        'id'            => 'searchVal',
					        'maxlength'     => '100',
					        'size'          => '50',
					        'style'         => 'width:50%'
						);
						//if (!empty($searchVal)) { $options }
						$options['value'] = !empty($searchVal)? $searchVal : '';
						echo form_input($options);
					?>
				</div>
			</div>
			<div class="col-sm-2">
				<?php
					$options = array(
				        'name'          => 'search',
				        'id'            => 'search',
				        'value'         => 'Search',
				        'class'			=> 'btn btn-default'
					);		
					echo form_submit($options);
				?>
			</div>
			<div class="col-sm-2">
				<?php
					$options = array(
				        'name'          => 'addnew',
				        'id'            => 'addnew',
				        'value'         => 'Add New',
				        'class'			=> 'btn btn-default'
					);		
					echo form_submit($options);
				?>
			</div>
			<div class="col-sm-2">
				<?php
					$options = array(
				        'name'          => 'admin',
				        'id'            => 'admin',
				        'value'         => 'Admin Menu',
				        'class'			=> 'btn btn-default'
					);		
					echo form_submit($options);
				?>
			</div>
		</div>
		<?php
			echo form_close();
		?>
		
	
	<table class="table col-sm-offset-1" style="width:80%;">
		<caption><?php echo !empty($links)? $links: ''; ?></caption>
		<thead>
            <th>Thumbnail</th>
            <th>Image Name</th>
            <th>Image Size</th>
            <th></th>
		</thead>
		<tbody>
			<?php 
				if (!empty($images)) : 
					foreach ($images as $image): 
			?>
				<tr>
					<td>
						<?php
							//wrap the image with a link to the larger picture
							$image_href = image_url($image['image_path']);
							echo  "<a href=".$image_href.">".$image['thumb']."</a>"; 
						?>
					</td>
					<td>
						<?php 
							echo $image['image_name']."<br />".$image['image_path']; 
						?>
					</td>
					<td>
						<?php  
							echo $image['image_size']; 
						?>
					</td>
					<td>
						<?php
	                        echo form_open('image_manager/delete_image');
	                        echo form_hidden('imageID', $image['id']);
	                        if (!empty($searchVal)) {
	                            echo form_hidden('searchVal', $searchVal);
	                        }
							$options = array(
						        'name'          => 'delete',
						        'id'            => 'search',
						        'value'         => 'Delete',
						        'class'			=> 'btn btn-default'
							);		
							echo form_submit($options);
							echo form_close();
						?>
					</td>
				</tr>
			<?php 
					endforeach;
				endif;
			?>			
		</tbody>
	</table>
<?php include ('includes/page_foot.incl'); ?>
