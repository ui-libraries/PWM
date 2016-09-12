<?php 
	$page_title = "PWM - Manage Popups";
	include('includes/admin_head.incl'); 
?>
    <body>
<?php
	include ('includes/page_head.incl');
?>	

            <div class="vspacer"></div>
			<div class="row info spaceabove">
					<div class="col-sm-1"></div>
					<div class="col-sm-4">
						<?php
		                echo form_open('popups/search_popup', array('class' => 'form-inline', 'role'=>'form'));
		                echo form_submit('search', 'Search / Filter', 'class="btn btn-primary"');
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
				<table class="table col-sm-offset-1" style="width:83%;">
					<thead>
						<tr><th>View</th><th>Marker</th><th>Icon</th></tr>
					</thead>
					<tbody>
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

								echo form_open('popups/delete_popup', array('class' => 'form-inline', 'role'=>'form'));
								echo form_hidden('popup_view_id',  $row->id);
								echo form_close();


								?>
							</td>
						</tr>								
					<?php endforeach; ?>
					</tbody>
				</table>
			</div>
        </div>
    </body>
</html>    