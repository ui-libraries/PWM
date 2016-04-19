<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Peoples Weather Map</title>
    
    <?php 
    	echo link_tag('resources/css/style.css');
        include ('includes/jquery_head.incl');
     ?>
    <script>
	 	$(function() {
	 		$( "#tabs" ).tabs();
  		});
  	</script>
</head>

<body>
<!--header and top menu -->
	<?php include ('includes/page_head.incl') ;?>

    <div id="contentwrapper">
    	<div class="innertube">
	    	<div id="singlecolumn">
		    	<h2>Get Involved</h2>
		    	<div id="tabs" class="spaceleft">
					<ul>
					    <li><a href="#tabs-1">Stories</a></li>
					    <li><a href="#tabs-2">Artifacts</a></li>
					</ul>
					<div id="tabs-1">
				    	<h3>Contribute a story of extreme weather</h3>
				    	<div class="spaceleft">
					    	<p>We welcome story contributions to the Peoples' Weather Map (or PWM, as we call ourselves). We have included some general submission guidelines below. After reviewing these guidelines, please contact us at the following email address and we would be happy to answer any questions you might have and discuss with you how to submit the story materials.</p>
					    	<p>Look at our site at peoplesweathermap.org.  Decide what contributions you want to make.  If you want to write a single story based on family or other local photos and stories, you can do that.  Just contact us at the address below and tell us what you have in mind. </p>
					    	<p>If you want to explore and tell the severe weather stories of a county, great!  It would be especially great if you chose a county not yet written about.  Please follow the guidelines below.  Questions?  Email us at this address.</p>		    	
					    		<ul><li><a href="mailto:submissions@peoplesweathermap.org">submissions@peoplesweathermap.org</a></li></ul>
				    	</div>				    	
						<h3>How to Make a Severe Weather Story Map for Your County in Iowa</h3>
						<ol>
							<li>After you choose a county to research and write about, explore general information about the county (population, geography, local sources of pride, human conflicts and other dramas, noteworthy plants and animals.) This will help place you more in the mindset of the people and place you will be writing about once you choose specific severe weather stories.  We are interested in native people and landless workers as well as settlers, so be open to stories of all people.  Keep an eye out for great, relevant photographs; they will come in handy.</li>
							<li class="spaceabove">Contact us about your choice and we can tell you about any research we have already compiled on that county.</li>
							<li class="spaceabove">Google is always a good place to start. Look up severe weather events that have occurred in the past in this county. Some suggested search terms include flood, blizzard, tornado, drought, etc. Write down the events of any news articles that pop up and their location(s).</li>
							<li class="spaceabove">Compile a list of cities/towns and their populations. This will help in later steps.</li>
							<li class="spaceabove">After you have a general understanding of the county, start to compile a list of weather events that have occurred in the past. To do so, we recommend visiting the Iowa State Historical Society and searching through their online database. This can be done online as well, just use this link:  <a href = "http://infohawk.uiowa.edu/F?func=file&file_name=find-b&local_base=iow06" target = "_blank">http://infohawk.uiowa.edu/F?func=file&file_name=find-b&local_base=iow06</a>
							
								<ol type = "a">									
									<li class="spaceabove">First try to search directly for severe weather events using key terms like “flooding Harrison County.” Make notes of the events that are mentioned in the Historical Society’s holdings (note the difference between the Iowa City and the Des Moines locations).</li>
									<li class="spaceabove">Continue to search through the catalog, but also begin to look for sources such as centennial and bicentennial publications, picture books, oral histories, or memoirs that are related to the towns in your county. You can search the town’s name along with the publication type. These are usually invaluable to finding stories (and to use for primary source material), so you want to make a list of the publications and their call numbers and visit the Historical Society to flip through them and search for events that you might want to write about. Note these events on your master list.</li>
									
									<li class="spaceabove">You can also try the Historical Society’s newspaper search. This can only be done on the computers at the Historical Society — just ask for help about how to access the database. Sometimes this can provide a helpful way to find severe weather events that have occurred more recently (within the last 30 years or so). These articles can be saved as .pdf files and uploaded to a flash drive at the Historical Society.</li>
									<li class="spaceabove"><b>It is critical to keep track of every source!  We need to be able to give proper credit to sources in our bibliography.</b></li>
								</ol>
							</li>
							<li class="spaceabove">County historical societies, local museums, public libraries, and college libraries, when they are available, can also be enormously helpful as the curators and librarians know a great deal about the materials that they own.  For example, at the University of Iowa, the Women’s Archives can be a great source.</li>
							<li class="spaceabove">Once you have compiled an exhaustive list of the severe weather events spanning the history of the county, group stories by event (floods, droughts, blizzards, etc.) and narrow your list down to the handful of stories you want to write about. Choose events that have plenty of sources, but also make sure they lend themselves to at least one central comparison between an historical severe weather event and a recent severe weather event (in the last 25 years or so). See the Linn County map on peoplesweathermap.org to observe such a comparison.  Putting side by side more distant historical stories and more recent stories is a core structure of PWM.  So this matters to us a lot.</li>
							
							<li class="spaceabove">After selecting your stories, begin to conduct research and explore more nuanced information about the specific event.   As examples:
							<ul>
								<li class="spaceabove">Take photos or scan photographs found in books and compile information related to your stories. </li>
								<li class="spaceabove">Look through newspapers on microfilm at the Historical Society in the town(s) you are writing about — you will have to know the date when your event occurred so you can scroll through the newspaper collection and access stories from around that period. Take screenshots of these stories on microfilm or print them out to use in the writing process.
								<li class="spaceabove">Quotations are often important to shape these stories — particularly testimony/witness accounts. Save quotations if you find any that might be useful.</li>
								</ul>
							</li>
							<li class="spaceabove">Now you can begin to write your stories. Focus on a specific theme that you feel represents the severe weather event you are covering and weave this theme throughout your story. Write a story about people and weather rather than a report just about weather. Write about a specific place at a specific point in time. Often the places highlighted can be local businesses or libraries or religious institutions that were impacted by a severe weather event rather than entire towns or cities. A story could even be told about just one person who was strongly impacted by a storm. Each story should be somewhere between 400 and 1000 words, generally, but we can be flexible. Contact us if you have questions about length. <b>Again, make a list at the end of the story noting all of the sources you used to write the piece.</b></li>
							<li class="spaceabove">After your story is complete, go back through it and add photographs of the event noting where you would want them to appear within your story. Write captions (if necessary) that briefly summarize the event in each photo. <b>Include your sources at the end of the story.</b></li>
						</ol>
					
						<h4>Submitting your stories to PWM</h4>
						<p>Submit each story and scans or links to its images to the email address above.  Be sure to indicate where in the story you want the images inserted.  Make each story a separate word document.  Don’t submit stories as pdf as we will work with you on any editing that seems necessary.</p>
						<p>Thank You!</p>
					</div>	
					<div id="tabs-2">
						<h3>Share a family diary or artifact</h3>
					    	<p class="spaceleft">Sometimes personally meaningful artifacts can provide a visual narrative that is as effective as a written narrative, or more so. If you have an artifact that you feel fits into this category we would love to consider including an image and description of the artifact in the Peoples Weather Map. </p>
					    	<p class="spaceleft">Please contact us at the address below describing the artifact, and if possible, attach pictures. </p>
					    		<ul class="spaceleft"><li><a href="mailto:submissions@peoplesweathermap.org">submissions@peoplesweathermap.org</a></li></ul>

					    <p class="spaceleft">Before sending anything, please be sure that you have the permission to do so. We cannot place any material that is limited by copyright on our site. For family artifacts, please make sure that you have informal agreement among all interested family members that this artifact can be shared publicly.</p>
					</div>					
				</div>
	    	</div>
    	</div>
    </div>
 <?php include('includes/standard_footer.incl'); ?>
 