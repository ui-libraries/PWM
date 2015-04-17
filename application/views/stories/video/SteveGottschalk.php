    <div class="return_nav">
        <?php
        $this->load->helper('form');
        echo form_open("home/view/$return");
        echo form_submit('back', 'Return to Map');
        echo form_close();
        ?>
    </div>

    <h2>An Interview With Steve Gottschalk</h2>
    <h3>October 2014</h3>
    <p class="byline"></p>

    <!-- full width text -->
    
<div class="centered">
<iframe src="https://player.vimeo.com/video/125210885?title=0&byline=0&portrait=0" width="1024" height="576" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> <p><a href="https://vimeo.com/125210885">Steve Gottschalk Interview</a> from <a href="https://vimeo.com/mneucollins">Mark NeuCollins</a> on <a href="https://vimeo.com">Vimeo</a>.</p>

<div class="alignleft">
Steve Gottschalk has been a observing the weather around his home in Lowden Iowa for 52 years. For the last 30 years he has been a volunteer weather observer for the National Weather Service. He recently received the Thomas Jefferson award, the highest award from the National Weather Service for his years of service -- he has never missed a day.
</div>    

</div>

    <!-- left column text and image -->
    <div class="leftcol500 nomargin">
	    <p><span class="lead_in"></span></p>
	    <div class="vspacer"></div>
    	<!-- <img class="alignleft" width="100%"  alt="Brian Stephan in front of flooded Midland Supply" src="<?php echo image_url('linn/Midland/Brian.jpg');?>"> 
	    <p class="caption"></p>
    	-->

    </div>    
    <!-- right column text -->
    <div class="rightcol500 nomargin">
	    <div class="vspacer"></div>
		<p></p>
    </div>

<!--
second set of columns
    <div class="clearboth"></div>
    <div class="vspacer"></div>

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