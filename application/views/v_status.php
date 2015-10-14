<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Peoples Weather Map</title>

        <?php
        echo link_tag('resources/css/style.css');
        include('includes/bootstrap_cdn.incl');
        ?>
    </head>
    <body>
        <div class="container">
	        <h1>Status</h1>
	        <?php 
		        if (!empty($status_msg)){
		        	echo "<div class='alert alert-success'>".$status_msg."</div>";
	        	}
	        	if (!empty($error_msg)){
		        	echo "<div class='alert alert-danger'>".$error_msg."</div>";
	        	}
				echo "<hr />";
				echo "<br /><br />";
				$formextras = array ('class' => 'btn btn-default', 'style' => 'width:200px');
			?>
			<div class="row">
				<div class="col-sm-3">
					<?php
			        	echo form_open('admin/import_menu', array('class'=>'inline'));
						echo form_submit('return','Return to Admin Menu',$formextras); 
						echo form_close(); 
					?>					
				</div>				
				<div class="col-sm-3">
					<?php
						echo form_open('admin/import_menu', array('class'=>'inline'));
						echo form_submit('map','Go To Map',$formextras); 
						echo form_close(); 
			        ?>					
				</div>				
			</div>
	        
        </div>
    </body>
</html>