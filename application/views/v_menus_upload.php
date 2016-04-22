<?php
	$page_title = 'PWM - Upload Images';
	include ("includes/admin_head.incl");
?>
<body>
<?php
	include ("includes/page_head.incl");
?>	
<div class = "container">
	<?php 
		echo empty($errmsg)? '' : "<div class='text-danger'><br />Problem!<br /><br />".$errmsg."</div>";
		echo empty($msg)? '' : "<div class='text-success'><br />Success!<br /><br />".$msg."</div>";
		
		echo form_open_multipart('admin/import_menu');
	?>
	<h2>Load Menus</h2>
	<h3>Browse to find menus.xlsx file then click "upload"</h3>
	<br /><br />


	<input type="file" class = "btn btn-default" name="userfile" size="20" />
	<br />
	<?php
		$formextras = array ('class' => 'btn btn-default', 'style' => 'width:275px');
		echo form_submit('upload','Upload',$formextras);
		echo form_close();
		echo "<br /><br />";
		echo form_open('admin/import_menu');
		echo form_submit('return','Cancel/Return to Admin Menu',$formextras);
		echo form_close();

		echo form_open_multipart('admin/import_menu');
		echo form_submit('map','Cancel/Go To Map',$formextras);
		echo form_close();
	?>
</div>

<?php include("includes/page_foot.incl");?>