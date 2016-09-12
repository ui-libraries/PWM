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
	    $( document ).ready(function() {
		 	$(function() {
		 		$( "#tabs" ).tabs({active: <?php echo $tabindex; ?>});
	  		});  		
		});
  	</script>
</head>

<body>
<!--header and top menu -->
	<?php include ('includes/page_head.incl') ;?>

    <div id="contentwrapper">
    	<div class="innertube">
	    	<div id="singlecolumn">
		    	<h2>About PWM</h2>
		    	<div id="tabs" class="spaceleft">
					<ul>
					    <li><a href="#tabs-1">About PWM</a></li>
					    <li><a href="#tabs-2">Our Team</a></li>
					    <li><a href="#tabs-3">Our Funders</a></li>
					    <li><a href="#tabs-4">Our Partners</a></li>
					</ul>

					<div id="tabs-1">
				    	<h3>About The Peoples' Weather Map:</h3>
				    	<div class="spaceleft">
							<p>
							People have a personal relationship with the weather.  Sun, rain, cold, heat: the weather conditions outside affect how each of us feels.  When those weather conditions are severe, then the personal relationship also often becomes a community relationship—people together preparing for and cleaning up after some major weather event.  It is no surprise that, through history, many Iowans, like people everywhere, have kept daily weather diaries.  Those ordinary details connect us to large systems that blow through the individual places where we live. So much depends on the weather.  It is not just the topic of conversation when we don’t know what else to say.
							</p>
							<p>
							The Peoples’ Weather Map (PWM) is a web-based map of severe weather stories in Iowa (U.S.).  On the map, users can explore historical and recent severe weather events, through words and images, in individual counties.  PWM’s emphasis is, in fact, stories rather than data, although the map provides users links to weather hazard and climate data for those who want to explore them.  Through videotaped interviews PWM also introduces some of Iowa’s climate scientists and some citizens whose lives have been disrupted by severe weather events.
							</p>
							<p>
							PWM is created through a university-public partnership.  Its University of Iowa interdisciplinary team has included faculty, graduate students, and undergraduate students from the arts, humanities, and sciences; and public partners who are weather enthusiasts, citizen scientists, local museum archivists, and recorders of weather stories.  Some undergraduate interns have joined the project from their home institutions, including Iowa State University.  See Meet the Team on this website.
							</p>
							<p>
							The purpose of PWM is to enable Iowans to view local severe weather stories and to share their severe weather stories with one another and with the world through their own words and images.  This process of sharing, we believe, broadens our understanding of how the weather challenges we face have been met by others in Iowa and across the world.  
							</p>
							<p>
							To become a PWM public partner or to learn more about the project, email <a href="mailto:ENGL-PeoplesWeatherMap@uiowa.edu">ENGL-PeoplesWeatherMap@uiowa.edu</a>
							</p>
				    	</div>
				    </div>				    	

					<div id="tabs-2">
				    	<h3>Our Team</h3>

				    	<div class="spaceleft row">
				    		<div class="row_image">
				    			<img alt="Barbara Eckestein" src="<?php echo resource_url('image/PWM/people/BarbaraEckstein.jpg'); ?>">
				    		</div>
				    		<div class="row_text_50">
				    			<span class="lead_in">Barbara Eckstein</span>, a professor of English at the University of Iowa, was one of the founders of the Peoples' Weather Map project.  She is especially keen on publicly engaged work like PWM and looks forward to seeing more severe weather stories from visitors to the PWM site.
				    		</div>
				    	</div>

				    	<div class="row spaceleft spaceabove">
				    		<div class="row_image">
				    			<img alt="Mark NeuCollins" src="<?php echo resource_url('image/PWM/people/MarkNeuCollins.jpg'); ?>">
				    		</div>
				    		<div class="row_text_50">
				    			<span class="lead_in">Mark NeuCollins</span> is a cofounder of the Peoples Weather Map. His interest and background in new media art, web development, and environmental activism sparked his desire to be involved in this project that seeks to reframe the way we think about climate change by exploring the narratives of our shared lived experience.
				    		</div>
				    	</div>

				    	<div class="row spaceleft spaceabove">
				    		<div class="row_image">
				    			<img alt="Eric Tate" src="<?php echo resource_url('image/PWM/people/EricTate.jpg'); ?>">
				    		</div>
				    		<div class="row_text_50">
				    			<span class="lead_in">Eric Tate</span> is a professor in the department of Geographical and Sustainability Sciences at the University of Iowa and the director of Graduate Studies. His research focus is at the confluence of environmental hazards and society, primarily through the development of geospatial models of flood hazards, vulnerability, and water sustainability. He asks "what is environmental justice?"
				    		</div>
				    	</div>

				    	<div class="row spaceleft spaceabove">
				    		<div class="row_image">
				    			<img alt="Christina Zinkgraf " src="<?php echo resource_url('image/PWM/people/ChristinaZinkgraf.jpg'); ?>">
				    		</div>
				    		<div class="row_text_50">
				    			<span class="lead_in">Christina Zinkgraf </span> is the Graduate Assistant for the Peoples’ Weather Map. Born and raised in Eugene, Oregon, Christina received a bachelor’s of science in Environmental Science from the University of Washington-Tacoma. She has loved her time in Iowa, where she is pursuing her Masters in Teaching-Science Education at the University of Iowa. After graduation in 2017, Christina would like to teach 7th and 8th grade science.
				    		</div>
				    	</div>

				    	<div class="row spaceleft spaceabove">
				    		<div class="row_image">
				    			<img alt="Steve Gottschalk" src="<?php echo resource_url('image/PWM/people/SteveGottschalk.jpg'); ?>">
				    		</div>
				    		<div class="row_text_50">
				    			<span class="lead_in">Steve Gottschalk</span> has been a volunteer for the Weather Service for more than 30 years, providing them, local media and his community with observations about hazardous and severe weather conditions. In 2014 received the highest award The National Weather Service gives to volunteer weather observers, the Thomas Jefferson Award. 

				    		</div>
				    	</div>

				    	<div class="row spaceleft spaceabove">
				    		<div class="row_image">
				    			<img alt="Emma Holmes" src="<?php echo resource_url('image/PWM/people/EmmaHolmes.jpg'); ?>">
				    		</div>
				    		<div class="row_text_50">
				    			As a native Iowa Citian, <span class="lead_in">Emma Holmes</span> was delighted to receive the Paul Engle Glory of the Senses Scholarship for her essay “Swing Tree” in 2013.  She is currently studying Linguistics and Latin as a freshman at the University of Iowa, and continues to enjoy writing in her free time.
				    		</div>
				    	</div>

				    	<div class="row spaceleft spaceabove">
				    		<div class="row_image">
				    			<img alt="Nate Otjen" src="<?php echo resource_url('image/PWM/people/NateOtjen.jpg'); ?>">
				    		</div>
				    		<div class="row_text_50">
				    			<span class="lead_in">Nate Otjen.</span>I grew up on a small farm in Pennsylvania and after completing high school, I joined the national AmeriCorps*VISTA program. During this time, I worked with nonprofit organizations to provide support for continued flood recovery efforts throughout Cedar Rapids. I currently attend the University of Iowa and I have contributed stories to both the Harrison and Ida County weather maps for PWM.

				    		</div>
				    	</div>

				    	<div class="row spaceleft spaceabove">
				    		<div class="row_image">
				    			<img alt="Garrett Peterson" src="<?php echo resource_url('image/PWM/people/GarrettPeterson.jpg'); ?>">
				    		</div>
				    		<div class="row_text_50">
				    			<span class="lead_in">Garrett Peterson</span> will be graduating from Iowa State University in the spring of 2016 with a double major in Business Economics and Anthropology. He plans on attending law school in the fall 2016, with a focus on International Law. In the future, he would like to work with development and sustainability in underdeveloped countries.

				    		</div>
				    	</div>

				    	<div class="row spaceleft spaceabove">
				    		<div class="row_image">
				    			<img alt="Emma Husar" src="<?php echo resource_url('image/PWM/people/EmmaHusar.jpg'); ?>">
				    		</div>
				    		<div class="row_text_50">
				    			<span class="lead_in">Emma Husar</span> is currently an undergraduate English major at the University of Iowa. Although she was born and raised in Illinois she is on her way to become a resident of the great state of Iowa—she looks forward to immerse herself in its history in working on some histories concerning Iowa’s weather.

				    		</div>
				    	</div>

				    	<div class="row spaceleft spaceabove">
				    		<div class="row_image">
				    			<img alt="Abigail Weaver" src="<?php echo resource_url('image/PWM/people/AbigailWeaver.jpg'); ?>">
				    		</div>
				    		<div class="row_text_50">
				    			<span class="lead_in">Abigail Weaver</span> is a senior at the University of Iowa, majoring in History with a certificate in Museum Studies. Her greatest wish is to work in an archive where she can connect researchers with the artifacts and stories that interest them!
				    		</div>
				    	</div>

				    	<div class="row spaceleft spaceabove">
				    		<div class="row_image">
				    			<img alt="Amanda Lund" src="<?php echo resource_url('image/PWM/people/AmandaLund.jpg'); ?>">
				    		</div>
				    		<div class="row_text_50">
				    			<span class="lead_in">Amanda Lund</span> is a graduate from the University of Iowa who majored in English and was on the Creative Writing Track.  A self-proclaimed "river rat," Amanda grew up on the banks of the Mississippi in Fort Madison, Iowa where she learned the power of well-told story and the speed that words can travel in a small town.

				    		</div>
				    	</div>

				    	<div class="row spaceleft spaceabove">
				    		<div class="row_image">
				    			<img alt="Anna Walker" src="<?php echo resource_url('image/PWM/people/AnnaWalker.jpg'); ?>">
				    		</div>
				    		<div class="row_text_50">
				    			<span class="lead_in">Anna Walker</span> grew up in Des Moines, Iowa and has lived her whole life in-state. She is a senior Microbiology and English major at University of Iowa. She likes dogs and books.

				    		</div>
				    	</div>

				    	<div class="row spaceleft spaceabove">
				    		<div class="row_image">
				    			<img alt="Jeff Lehman" src="<?php echo resource_url('image/PWM/people/JeffLehman.jpg'); ?>">
				    		</div>
				    		<div class="row_text_50">
				    			<span class="lead_in">Jeff Lehman</span> is from Burlington, Iowa and has been studying writing at the University of Iowa since 2011.  A graduate of the University as of December 2015, he looks forward to sticking around Iowa City for as long as it wants him to.

				    		</div>
				    	</div>

				    	<div class="row spaceleft spaceabove">
				    		<div class="row_image">
				    			<img alt="Jessica Rusick" src="<?php echo resource_url('image/PWM/people/JessicaRusick.jpg'); ?>">
				    		</div>
				    		<div class="row_text_50">
				    			<span class="lead_in">Jessica Rusick</span>Jessica Rusick is a sophomore double-majoring in English and Journalism at the University of Iowa. She is from Elgin, Illinois, and is proud to have family from Scott and Clinton counties. In her free time she likes reading books and petting cats.
				    		</div>
				    	</div>

				    	<div class="row spaceleft spaceabove">
				    		<div class="row_image">
				    			<img alt="Kat Perdock" src="<?php echo resource_url('image/PWM/people/KatPerdock.jpg'); ?>">
				    		</div>
				    		<div class="row_text_50">
				    			<span class="lead_in">Kat Perdock</span> recently graduated from the University of Iowa with majors in Creative Writing and Studio Art, along with a certificate in Museum Studies. Working on the People’s Weather Map feeds her love for ethnography and historical documentation through individual accounts. When she’s not writing or painting, she enjoys hanging out with her pet rats.
				    		</div>
				    	</div>

				    	<div class="row spaceleft spaceabove"></div>				    	
				   	</div>
	
					<div id="tabs-3">
						<h3>Our Funders</h3>

				    	<div class="spaceleft row">
				    			<img alt="CGRER" src="<?php echo resource_url('image/PWM/funders/CGRER.png'); ?>">
				    	</div>
				    	<div class="spaceleft row">
			    			<p>
				    			<span class="lead_in">The Center for Global and Regional Environmental Research (CGRER)</span>is a state-funded institute devoted to studying and bettering our environment.
			    			</p>
			    			<p>
								The Center promotes interdisciplinary research on the many aspects of global environmental change. Areas of focus include regional effects on natural ecosystems, environments, and resources, and effects on human health, culture, and social systems. <a href="http://cgrer.uiowa.edu/">cgrer.uiowa.edu</a>
							</p>
				    	</div>

				    	<div class="row spaceleft spaceabove">
				    			<img alt="Humanities Iowa" src="<?php echo resource_url('image/PWM/funders/HI_150.png'); ?>">
				    	</div>
				    	<div class="row spaceleft">
			    			<p>
				    			<span class="lead_in">Humanities Iowa</span> -- to promote understanding and appreciation of the people, communities, culture, and stories of importance to Iowa and the nation. <a href="http://thestudio.uiowa.edu/humanitiesiowa/wp/">thestudio.uiowa.edu/humanitiesiowa/wp/</a>
			    			</p>
			    		</div>

				    	<div class="row spaceleft spaceabove">
				    			<img alt="Digital Scholarship & Publishing Studio" src="<?php echo resource_url('image/PWM/funders/DSPS.png'); ?>">
				    	</div>
				    	<div class="row spaceleft">
			    			<p>
				    			<span class="lead_in">The Digital Scholarship & Publishing Studio</span> collaborates with faculty and students on the design and implementation of research projects, and subscribes to a show more, tell less approach where digital scholarship – and particularly the digital humanities – are concerned. The Studio embraces scholarly creativity, encouraging interdisciplinary research and multiplatform circulation. In this manner, the Studio helps scholars tailor the presentation and application of their research to a variety of audiences. 
				    			<a href="https://www.lib.uiowa.edu/studio/">www.lib.uiowa.edu/studio</a>
			    			</p>
			    		</div>

				    	<div class="row spaceleft spaceabove">
				    			<img alt="Iowa EPSCoR" src="<?php echo resource_url('image/PWM/funders/IowaEpscor.png'); ?>">
				    	</div>
				    	<div class="row spaceleft">
			    			<p>
				    			<span class="lead_in">The Experimental Program to Stimulate Competitive Research (EPSCoR)</span> is a federal program designed to improve the research capacity of eligible states or regions, making them nationally competitive for future grants. <a href="http://www.nsf.gov/od/oia/programs/epscor/index.jsp">www.nsf.gov/od/oia/programs/epscor/index.jsp</a>
			    			</p>
			    		</div>

				    	<div class="row spaceleft spaceabove">
				    			<img alt="ICRU" src="<?php echo resource_url('image/PWM/funders/ICRU.jpg'); ?>">
				    	</div>
				    	<div class="row spaceleft">
			    			<p>
				    			<span class="lead_in">Iowa Center for Research by Undergraduates </span>
				    		</p>
				    		<p> The University of Iowa strives to provide a high-quality educational experience for its students. Participation in research and scholarly activities represents an opportunity, uniquely available at research universities, to enhance the overall undergraduate experience. <a href="http://www.uiowa.edu/icru/">www.uiowa.edu/icru/</a>
			    			</p>
			    		</div>
				    </div>


					<div id="tabs-4">
						<h3>Our Partners</h3>
				    	<div class="spaceleft row">
				    		<div class="row_image">
				    			<img alt="IowaUNA" src="<?php echo resource_url('image/PWM/partners/IowaUnitedNationsAssociation.png'); ?>">
				    		</div>
				    		<div class="row_text">
				    			<p>
				    			<span class="lead_in">The Iowa United Nations Association</span> is a 501(c) 3 non-profit organization seeking to connect Iowans to global issues.  We connect your family to the world through educational programming for youth and adults, emergency and annual humanitarian relief drives, and unique celebrations of our global interconnectedness. <a href="http://iowauna.org/">iowauna.org/</a> 
				    			</p>
				    		</div>
				    	</div>

				    	<div class="row spaceleft spaceabove">
				    		<div class="row_image">
				    			<img alt="State Historical Society of Iowa" src="<?php echo resource_url('image/PWM/partners/StateHistoricalSocietyOfIowa.png'); ?>">
				    		</div>
				    		<div class="row_text">
				    			<p>
				    			<span class="lead_in">The State Historical Society of Iowa</span> has been a trustee of Iowa’s historical legacy since 1857. With a dual mission of preservation and education, it maintains a museum, archives & historical libraries, preservation office, and eight historic sites. These bureaus preserve and provide access to Iowa’s historical resources through a variety of statewide programs, exhibitions and projects while serving as an advocate for Iowa’s past and connector to the future. <a href="https://iowaculture.gov/">iowaculture.gov</a> 
				    			</p>
				    		</div>
				    	</div>

				    	<div class="row spaceleft spaceabove">
				    		<div class="row_image">
				    			<img alt="Stephen Warren" src="<?php echo resource_url('image/PWM/partners/Stephen-Warren.jpg'); ?>">
				    		</div>
				    		<div class="row_text">
				    			<p>
				    			<span class="lead_in">Stephen Warren: University of Iowa History Professor</span>
				    			</p>
				    			<p>
				    			As both a teacher and a scholar, Stephen Warren emphasizes that the past is never safely historical. By contributing to the cultural survival of several different federally-recognized American Indian tribes, his students begin to view academic research with a fresh perspective; as avenues for serving the world rather than knowledge that is peculiar and limited to the college classroom. <a href="http://clas.uiowa.edu/history/people/stephen-warren">clas.uiowa.edu/history/people/stephen-warren</a> 
				    			</p>
				    		</div>
				    	</div>

				    	<div class="row"></div>

				    </div>
				</div>
	    	</div>
    	</div>
    </div>

 <?php include('includes/standard_footer.incl'); ?>
 