    <div class="return_nav">
        <?php
        $this->load->helper('form');
        echo form_open("home/view/$return");
        echo form_submit('back', 'Return to Map');
        echo form_close();
        ?>
    </div>

    <h2>TITLE</h2>
    <h3>SUBTITLE</h3>
    <p class="byline"></p>

    <!-- full width text 
	<div class="singlecol">
	    <p></p>
    </div>
    -->
    
    <!-- left column text and image -->
    <div class="leftcol500 nomargin">
	    <p><span class="lead_in"></span></p>
	    <div class="vspacer"></div>
    	<!-- <img class="alignleft" width="100%"  alt="alternate text" src="<?php echo image_url('linn/Midland/Brian.jpg');?>"> 
	    <p class="caption"></p>
    	-->

    </div>    
    <!-- right column text -->
    <div class="rightcol500 nomargin">
	    <div class="vspacer"></div>
		<p></p>
    </div>

<!--
To start a second set of columns include a clearboth div
    <div class="clearboth"></div>

    <div class="leftcol500 nomargin">
		<div class="vspacer"></div>
		<p></p>
		<div class="vspacer"></div>
	</div>

    <div class="rightcol500 nomargin">
        <p></p>
        <div class="vspacer"></div>
    </div>
-->

<!--quickflip example    
	<div class="quickFlip_1 centered" style=" width:500px; height:272px;" >
        <div class="front">
            <img class="quickFlipCta" src="<?php echo image_url('xxxx.jpg') ?>">

            <div class="caption">
                click on image to flip
            </div>
        </div>

        <div class="back">
            <img class="quickFlipCta" src="<?php echo image_url('xxxx.jpg') ?>">

            <div class="caption">
                click on image to flip
            </div>
        </div>
    </div>	    

<script type="text/javascript">
$(document).ready(function(){
        $(function() {
            $('.quickFlip_1').quickFlip();
        });
    });

</script>
-->