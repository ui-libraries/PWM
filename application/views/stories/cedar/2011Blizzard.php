    <div class="return_nav">
        <?php
        $this->load->helper('form');
        echo form_open("home/view/$return");
        echo form_submit('back', 'Return to Map');
        echo form_close();
        ?>
    </div>

    <h2>Ground Hog Day Blizzard of 2011</h2>
    <h3>Cedar County, Iowa</h3>
    <p class="byline">Steve Gottschalk (Typed by Eunice Boedeker)</p>
    <!-- full width text -->    
    <!-- left column text and image -->
    <div class="leftcol500 nomargin">
	    <p><span class="lead_in">This was the worst winter storm to hit Cedar County</span> since the January 1979 blizzard. The county received 13.0 to 17.5 inches of snow. The Tipton area saw 15.0 inches of snow and Lowden, in the northeastern part of the county, received 17.5 inches in a 24-hour period — a new record for the area.</p>
	    <p>The Ground Hog Day storm began late on January 31st, producing an inch of snow through the early morning hours of February 1st. The snow began falling again around noon, picking up in intensity along with the north-blowing wind. By 5 pm, 4.0 inches of snow had already fallen and the winds gusted to 40 mph. </p>
	    <p>During the next four hours, the snow fell at a rate of 2 inches per hour. By 9 pm, a total of 12 inches had fallen. There was lightning and thunder with the snow. Winds gusted up to 52 mph. The visibility dropped to zero with whiteout conditions at the time. Another 4 inches of snow fell by midnight. </p>
	    <p>Across the county, travel was virtually impassible and the sheriff’s office was flooded with emergency calls. Drifts from 4 to 5 feet deep were quite common and some were as high as 8 feet. The blizzard stopped the westbound Union Pacific train east of Stanwood for nearly 40 hours. There were ten people who had to seek shelter in Stanwood. </p>
    	<img class="alignleft"  alt="Blizzard of 2011" src="<?php echo image_url('cedar/2011Blizzard/2011Blizzard_2.jpg');?>">
    	<!-- <img class="alignleft" width="100%"  alt="Brian Stephan in front of flooded Midland Supply" src="<?php echo image_url('linn/Midland/Brian.jpg');?>"> -->

    </div>    
    <div class="rightcol500 nomargin">
	    <div class="vspacer"></div>
    	<img class="alignleft"  alt="Blizzard of 2011" src="<?php echo image_url('cedar/2011Blizzard/2011Blizzard_1.jpg');?>">
    	<p class="caption">County road after the blizzard passed</p>
	    <div class="vspacer"></div>
	    <div class="vspacer"></div>
	    <p>At least six motorists were stranded in their cars overnight. Highway 130 between Tipton and New Liberty was closed because of the drifting snow. The westbound lanes of Interstate 80 east of the Wilton interchange were shut down due to a multiple vehicle accident. </p>
	    <p>There were dozens of people and dispatchers involved in helping others. EMTs and snowplow operators assisted in the successful transport of a woman in labor to the Jones County Regional Medical Center.</p>
	    <p>The governor quickly declared Cedar County a disaster area. This allowed emergency funding to be released for clearing the county roads. </p>
	    <p>By the morning of February 2nd, the storm had deposited another 1.5 inches of snow, giving the Lowden area a total of 17.5 inches that had fallen in a 24-hour period — a new record for Lowden. Wind chills were well below zero and the gusting winds caused snow to drift throughout the day.</p>
	    <div class="vspacer"></div>
	    <p>[All Photos Source: Lowden Historical Society]</p>

    </div>
 
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