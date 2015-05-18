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
					    	<p>We welcome story contributions to the Peoples' Weather Map. We have included some general submission guidelines below. After reviewing these guidelines, please contact us at the following email address and we would be happy to answer any questions you might have, and discuss with you how to submit the story materials.</p>
					    		<ul><li><a href="mailto:submissions@peoplesweathermap.org">submissions@peoplesweathermap.org</a></li></ul>
				    	</div>				    	
						<h3>How to Make a Severe Weather Story Map for Your County in Iowa</h3>
						<ol>
							<li>After you choose a county to research and write about, explore general information about the county (population, geography, local sources of pride, etc.). This will help place you more in the mindset of the people you will be writing about once you choose specific severe weather stories.</li>
							<li>Google is always a great place to start. Look up severe weather events that have occurred in the past. Some suggested search terms include flood, blizzard, tornado, drought, etc. Write down the events of any news articles that pop up and their location(s).</li>
							<li>Compile a list of cities/towns and their populations. This will help in later steps.</li>
							<li>After you have a general understanding of the county, start to compile a list of weather events that have occurred in the past. To do so, we recommend visiting the Historical Society and searching through their online database. This can be done at home as well, just use this link: <a href = "http://infohawk.uiowa.edu/F?func=file&file_name=find-b&local_base=iow06" target = "_blank">http://infohawk.uiowa.edu/F?func=file&file_name=find-b&local_base=iow06</a>
								<ol type = "a">
									<li>First try to search directly for severe weather events using key terms like “flooding Harrison County.” Make notes of the events that are mentioned in the Historical Society’s holdings (note the difference between the Iowa City and the Des Moines locations).</li>
									<li>Continue to search through the catalog, but also begin to look for centennial and bicentennial publications, pictorial books, oral histories, etc. that are related to the towns in your county. You can search the town’s name along with the publication type. These are usually invaluable to finding stories (and to use for primary source material), so you want to make a list of the publications and their call numbers and visit the Historical Society to flip through them and search for events that you might want to write about. Note these events on your master list.</li>
									<li>You can also try the Historical Society’s newspaper search. This can only be done on the computers at the Historical Society — just ask for help about how to access the database. Sometimes this can provide a helpful way to find severe weather events that have occurred more recently (within the last 30 years or so). These articles can be saved as .pdf files and uploaded to a flash drive at the Historical Society.</li>
									<li><b>It is criticak to keep track of every source! We need to be able to give proper credit to sources in our bibliography.</b></li>
								</ol>
							</li>
							<li>Once you have compiled an exhaustive list of the severe weather events spanning the entire history of the county, group stories by event (floods, droughts, blizzards, etc.) and narrow your list down to the handful of stories you want to write about. Choose events that have plenty of sources, but also make sure they akign with the goals of the PWM.</li>
							<li>After selecting your stories, begin to conduct research and explore more nuanced information about the specific event. As examples:
							<ul>
								<li>Take photos or scan photographs found in books and compile information related to your stories. </li>
								<li>Look through newspapers on microfilm at the Historical Society in the town(s) you are writing about — you will have to know the date when your event occurred so you can scroll through the newspaper collection and access stories from around that period. Take screenshots of these stories on microfilm or print them out to use in the writing process.
								<li>Quotations are often important to shape these stories — particularly testimony/witness accounts. Save quotations if you find any that might be useful.</li>
								</ul>
							</li>
							<li>Now you can finally begin to write your stories. Focus on a specific theme that you feel represents the severe weather event you are covering, and weave this theme throughout your story. <b>Make a list at the end of the story noting all of the sources you used to write the piece.</b></li>
							<li>After your story is complete, go back through it and add photographs of the event. Write captions (if necessary) that briefly summarize the event in each photo.</li>
						</ol>
						<h4>Suggestions if you run into a dead end: </h4>
						<ul>
							<li>It helps to maintain a narrow focus for your stories. Write about a specific place at a specific point in time. Often the places highlighted can be local businesses rather than entire towns or cities that were impacted by a severe weather event. An entire story could even be told about one person who was strongly impacted by a storm.</li>
							<li>If you need more information on a story, you can also visit the Iowa Women’s Archive in the University of Iowa Main Library and look through postcards and photographs in the Special Collections area of the Historical Society.</li>
						</ul>
					</div>	
					<div id="tabs-2">
						<h3>Share a family diary or artifact</h3>
					    <p class="spaceleft">Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat. Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere, felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor et purus.</p>
					</div>					
				</div>
	    	</div>
    	</div>
    </div>
 <?php include('includes/standard_footer.incl'); ?>
 