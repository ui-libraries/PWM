<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Peoples Weather Map</title>
    
    <?php 
    	echo link_tag('resources/css/style.css');
        include ('includes/jquery_head.incl');
        include ('includes/quickflip_head.incl');
     ?>
</head>

<body>

<!--header and top menu -->
	<?php include ('includes/page_head.incl') ;?>

    <div id="contentwrapper">
    	<div class="innertube">
            <div class="return_nav">
                <?php
                $this->load->helper('form');
                echo form_open("home/view/$return");
                echo form_submit('back', 'Return to Map');
                echo form_close();
                ?>
            </div>
            <div>
            <?php
                if (!empty($story->title)) {echo "<h2>".$story->title."</h2>\n";}
                if (!empty($story->location)) {echo "<h3>".$story->location."</h3>\n";}
                if (!empty($story->byline)) {echo "<p class='byline'>".$story->byline."</p>\n";}

                if (!empty($story->story_content)) {echo $story->story_content;}
                    
//                    $storysegments = explode ("||",$story->story_content);
//                    foreach ($storysegments as $storysegment) {
//                        if (substr(trim($storysegment),0, 5) =='image'){
//                            $imagetag = image_url(substr($storysegment,11, -2));
//                            echo $imagetag;
//                        } else {
//                            echo $storysegment;
//                        }
//                    }
//                }
            ?>
            </div>
        </div>
    </div>


 <?php include('includes/standard_footer.incl'); ?>