<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Peoples Weather Map</title>

    <?php
    echo link_tag('resources/css/style.css');
    include ('includes/jquery_head.incl');
    include('includes/local_menu.incl');
    ?>
</head>
<body onload='init();'>

<!--header and top menu -->
<?php include ('includes/page_head.incl') ;?>

<!--page content -->
<div id="contentwrapper" style="background:#666666;">


    <div id="singlecolumn" class="centered">
        <div class="innertube">
            <br />
            <h2 class="centered reversetype">Predicting the Weather Like Grandpa Use To</h2>
            <h3 class="centered reversetype">Steve Gottschalk</h3>
            <div class="centered">
                <iframe width="800" height="628" src="//e.issuu.com/embed.html#17147993/34593703" frameborder="0" allowfullscreen></iframe>
            </div>
            <br />
            <br />

        </div>
    </div>
</div>


<?php include('includes/standard_footer.incl'); ?>