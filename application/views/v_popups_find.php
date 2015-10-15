<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Peoples Weather Map -- Popups</title>
        
        <?php 
            echo link_tag('resources/css/style.css');
			include ('includes/jquery_head.incl');
	        echo "<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css\">";
			echo "<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css\">";
			//add custom bootstrap css ovrerride
			$fileinfo = get_file_info('css/bootstrap_custom.css','date');
			$d=$fileinfo['date'];
			echo link_tag ("css/bootstrap_custom.css?d={$d}");
			echo "<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js\"></script> ";
		?>
    </head>
    <body>
	    
        <div id="container">
            <div id="topsection">
                <div class="innertube">
                    <div id="logo">
                        <img alt="PWM" src="<?php echo resource_url('image/PWM-180.png'); ?>" width="180" height="56">
                        <div class="tagline"> The Peoples Weather Map</div>
                    </div>
                </div>
            </div>
            <div class="vspacer"></div>
			<div class="row info">
					<div class="col-sm-1"></div>
					<div class="col-sm-4">
						<?php
		                echo form_open('popups/search_popup', array('class' => 'form-inline', 'role'=>'form'));
		                echo form_submit('search', 'Search', 'class="btn btn-primary"');
		                echo "&nbsp;&nbsp;";
		                echo form_input('searchVal', (!empty($searchVal) ? $searchVal : ""));
		                echo form_close();
		                ?>
	                </div>
					<div class="col-sm-3">
						<?php
		                echo form_open('popups/add_edit_popup', array('class' => 'form-inline', 'role'=>'form'));
		                echo form_submit('addnew', 'Add New Popup', 'class="btn btn-primary"');
		                echo form_close();
		                ?>
	                </div>
					<div class="col-sm-3">
						<?php
		                echo form_open('admin', array('class' => 'form-inline', 'role'=>'form'));
		                echo form_submit('admin', 'Admin Menu', 'class="btn btn-primary"');
		                echo form_close();
		                ?>
	                </div>
			</div>
			<div class="row"><hr /></div>
			<div>
					<table class="table">
						<thead>
							<tr><th>View</th><th>Marker</th><th>Icon</th></tr>
						</thead>
						<?php foreach ($fetchlist as $row): ?>
							<tr>
								<td><?php echo $row->viewname; ?></td>
								<td><?php echo $row->markername; ?></td>
								<td><?php echo "<img src='".image_url($row->iconurl)."'>"; ?></td>
								<td>
									<?php
									echo form_open('popups/add_edit_popup', array('class' => 'form-inline', 'role'=>'form'));
									echo form_hidden('popup_view_id',  $row->id);
									echo form_submit('edit', 'Edit', 'class="btn btn-primary"');
									echo form_close();
									?>
								</td>
							</tr>								
						<?php endforeach; ?>
					</table>
			</div>
        </div>
    </body>
</html>    