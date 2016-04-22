<?php 
	$page_title = "PWM - Manage Stories";
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
		                echo form_open('stories/search_story', array('class' => 'form-inline', 'role'=>'form'));
		                echo form_submit('search', 'Search / Filter', 'class="btn btn-primary"');
		                echo "&nbsp;&nbsp;";
		                echo form_input('searchVal', (!empty($searchVal) ? $searchVal : ""));
		                echo form_close();
		                ?>
	                </div>
					<div class="col-sm-3">
						<?php
		                echo form_open('stories/add_edit_story', array('class' => 'form-inline', 'role'=>'form'));
						echo form_hidden('searchVal', (!empty($searchVal) ? $searchVal : ""));
		                echo form_submit('addnew', 'Add New Story', 'class="btn btn-primary"');
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
						<tr><th class="col-sm-4">Story Title</th><th class="col-sm-3">Story Location</th><th  class="col-sm-3">Byline</th><th class="col-sm-1">County</th><th class="col-sm-1"></th></tr>
					</thead>
					<tbody>
					<?php
						if (!empty($fetchlist)):
							foreach ($fetchlist as $row): ?>
								<tr>
									<td><?php echo $row->title; ?></td>
									<td><?php echo $row->location; ?></td>
									<td><?php echo $row->byline; ?></td>
									<td><?php echo $row->county; ?></td>
									<td>
										<?php
										echo form_open('stories/add_edit_story', array('class' => 'form-inline', 'role'=>'form'));
										echo form_hidden('story_id',  $row->id);
										echo form_hidden('searchVal', (!empty($searchVal) ? $searchVal : ""));
										echo form_submit('edit', 'Edit', 'class="btn btn-primary"');
										echo form_close();

										/*echo form_open('stories/delete_story', array('class' => 'form-inline', 'role'=>'form'));
										echo form_hidden('story_id',  $row->id);
										echo form_close();*/
										?>

									</td>
								</tr>
					<?php
							endforeach;
						endif;
					?>
					</tbody>
				</table>
			</div>
        </div>