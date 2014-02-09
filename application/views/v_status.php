<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Peoples Weather Map</title>

        <?php
        echo link_tag('resources/css/style.css');
        ?>
    </head>
    <body>
        <div id="container">

        <h1>Status</h1>
        <p><pre><?php echo $status_msg ?></pre></p>
        <hr />
        <a href="<?php echo base_url('/index.php/admin') ?>">Return to Admin Page</a><br />
        <a href="<?php echo base_url('/index.php/home') ?>">Go to PWM Home</a>
    </body>
</html>