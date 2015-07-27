    <div class="return_nav">
        <?php
        $this->load->helper('form');
        echo form_open("home/view/$return");
        echo form_submit('back', 'Return to Map');
        echo form_close();
        ?>
    </div>

    <h2>Early Floods in Lyon County</h2>
    <h3>Lyon County, Iowa</h3>
    <p class="byline">Barbara Eckstein</p>

    <!-- full width text -->
	<div class="singlecol">
	   <span class="lead_in"> There was an extensive flood in all of Iowa in 1851.</span> 74.5 inches of precipitation fell in the new state that year.  Although the worst effects were in the southeastern part of Iowa, “everywhere the same conditions prevailed, even on the narrow watershed of the Missouri slope.” But there were few to no settlers in the newly mapped Lyon County to experience and record any loss.
	</div>
    
    <!-- left column text and image -->
    <div class="leftcol500 nomargin">
<p>A decade later, in 1862-63, three young men from Massachusetts, in Lyon County for the hunting, did suffer from the effects of a flood that spring. W.C. Hyde tells the story. “They had built a cabin on an island in the river, at the forks of the Little Rock, West Branch and Rock River.”  In the fall of 1862 they enjoyed the abundance of game until they encountered “a band of Santee Sioux from Minnesota who had been following the elk.”  The Sioux “fired upon them with bows and arrows, from which [Roy] McGregor received a shot in the side.”  His companions, George Clark and Thomas Lockhart, escaped unharmed, but McGregor died from his wound.  Clark and Lockhart decided to stay on to contest their right to hunt on these grounds. </p>
  
		<p>The Sioux did not return, but, in the spring, “another calamity befell [the two remaining young men].”  When, in early March, the snow began to melt and then it began to rain, their island cabin was threatened.  With heavy rain one night, the water rose to their door.  “Yet they concluded to wait until morning before making preparations to move. </p>

		<p>“During the night the ice broke up, and with the floating timber gorged the river above the head of the island, almost completely damming it.  Behind this gorge the water continued to rise until it had covered the river bottom to great depth.  Lockhart and Clark had arisen and begun to prepare their breakfast when this gorge broke, and the flood came down upon the island and cabin with terrific force.  Hearing the rushing of the water and breaking of the timber, they ran out of the cabin just as the water came down upon them.  Lockhart seized hold of a tree and succeeded in climbing out of the way of the flood.  Clark jumped into the river and swam for the east bank.  He succeeded in crossing the stream, and grasping some overhanging boughs, turned his head and exclaimed:  ‘Tom, I’m all right,’ when the flood came upon him and, overwhelmed in the torrent, he sank to rise no more.  Lockhart remained in the tree for several hours, when, by means of some floating logs, he reached the high bank and made his escape.”  Hyde doesn’t say if the flooding in the spring of 1863 was unusual on the Little Rock River.  </p>
    </div>    
    <!-- right column text -->
    <div class="rightcol500 nomargin">
	    <div class="vspacer"></div>
	    <div class="vspacer"></div>
	    <div class="vspacer"></div>
    	<img class="alignleft" width="100%"  alt="1814 Lewis and Clark Map" src="<?php echo image_url('lyon/EarlyFloods/Lewis_and_Clark_Map.jpg');?>"> 
	    <p class="caption">1814 Lewis and Clark Map showing present day Northwest Iowa, Southwest Minnesota, and Southeast South Dakota (<a href = "https://en.wikipedia.org/wiki/James_River_(Dakotas)#/media/File:Lewis_and_Clark_Middle_Missouri_BigSioux_James.jpg">from mediawiki</a>) </p>
		</p>
    </div>

	<div class="singlecol">
		<p>From the Iowa State Historical Society:  W.C. Hyde, Historical Sketch of Lyon County, 1872; Tacitus Hussey,“The Flood of 1851” The Annals of Iowa 5.6 (1902); Debbie Clough Gerischer, “The Flood of 1851” in The Palimpsest 15.6 (1934) </p>
		
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