<!DOCTYPE html>
<html>
<head>

<title>Upload Menus</title>
    <?php 
    	echo link_tag('resources/css/style.css');
    	include ('includes/bootstrap_cdn.incl');
	?>

</head>
<body>
    <div id="pwm_container">
        <div id="topsection">
            <div class="innertube">
                <div id="logo">
                    <img alt="PWM" src="<?php echo resource_url('image/PWM-180.png'); ?>" width="180" height="56">
                    <div class="tagline"> The Peoples Weather Map</div>
                </div>
            </div>
        </div>
    
		<div class = "container">
			<?php 
				echo empty($errmsg)? '' : $errmsg;
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
    </div>
</body>
</html>
