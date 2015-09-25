<html>
<head>
<title>Upload Menus</title>
</head>
<body>

<?php echo $error;?>

<?php echo form_open_multipart('upload/do_upload');?>
<h2>Load Menus</h2>
<h3>Browse to find menus.xlsx file then click "upload"</h3>

<input type="file" name="userfile" size="20" />

<br /><br />

<input type="submit" value="upload" />

</form>

</body>
</html>