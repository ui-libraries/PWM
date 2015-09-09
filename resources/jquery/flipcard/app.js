$(document).ready(function(){
	$(".group1 .bw1 .button1").on("click", function(){
		$(".group1 .card-container").flip({
			direction: "lr"
		});
	})
	$(".group1 .bw1 .button2").on("click", function(){
		$(".group1 .card-container").flip({
			direction: "rl"
		});
	})
	$(".group1 .bw1 .button3").on("click", function(){
		$(".group1 .card-container").flip({
			direction: "tb"
		});
	})
	$(".group1 .bw1 .button4").on("click", function(){
		$(".group1 .card-container").flip({
			direction: "bt"
		});
	})

	$(".group1 .bw2 .button1").on("click", function(){
		$(".group1 .card-container").flip({
			speed: "100ms"
		});
	})
	$(".group1 .bw2 .button2").on("click", function(){
		$(".group1 .card-container").flip({
			speed: "500ms"
		});
	})
	$(".group1 .bw2 .button3").on("click", function(){
		$(".group1 .card-container").flip({
			speed: "1s"
		});
	})
	$(".group1 .bw2 .button4").on("click", function(){
		$(".group1 .card-container").flip({
			speed: "2s"
		});
	})

	$(".group1 .bw3 .button1").on("click", function(){
		$(".group1 .card-container").flip({
			speed: "2s",
			timingfunction: "ease"
		});
	})
	$(".group1 .bw3 .button2").on("click", function(){
		$(".group1 .card-container").flip({
			speed: "2s",
			timingfunction: "ease-in"
		});
	})
	$(".group1 .bw3 .button3").on("click", function(){
		$(".group1 .card-container").flip({
			speed: "2s",
			timingfunction: "ease-out-cubic"
		});
	})
	$(".group1 .bw3 .button4").on("click", function(){
		$(".group1 .card-container").flip({
			speed: "2s",
			timingfunction: "ease-in-expo"
		});
	})

	$(".group1 .bw4 .button1").on("click", function(){
		$(".group1 .card-container").flip({
			onflipping: function(currentDirection, currentTransformDirection)
			{
				if (currentTransformDirection === "fb")
				{
					alert("onflipping event: current flip direction is " + currentDirection + ", current transform direction is from front to back");
				}
				else if (currentTransformDirection === "bf")
				{
					alert("onflipping event: current flip direction is " + currentDirection + ", current transform direction is from back to front");
				}
			}
		});
	})
	$(".group1 .bw4 .button2").on("click", function(){
		$(".group1 .card-container").flip({
			direction: "tb",
			onflipped: function(currentDirection, currentTransformDirection)
			{
				if (currentTransformDirection === "fb")
				{
					alert("onflipped event: current flip direction is " + currentDirection + ", current transform direction is from front to back");
				}
				else if (currentTransformDirection === "bf")
				{
					alert("onflipped event: current flip direction is " + currentDirection + ", current transform direction is from back to front");
				}
			}
		});
	})

	$(".group1 .bw5 .button1").on("click", function(){
		$(".group1 .card-container").flip({
			autoflip: "true",
			autoflipstart: "0",
			autoflipdelay: "1s"
		});
	})
	$(".group1 .bw5 .button2").on("click", function(){
		$(".group1 .card-container").flip({
			autoflip: "true",
			autoflipstart: "0",
			autoflipdelay: "3s"
		});
	})
	$(".group1 .bw5 .button3").on("click", function(){
		$(".group1 .card-container").flip({
			autoflip: "true",
			autoflipstart: "500ms",
			autoflipdelay: "2s"
		});
	})
	$(".group1 .bw5 .button4").on("click", function(){
		$(".group1 .card-container").flip("stopautoflip");
	})


	//group2
	$(".group2 .card-container").flip();

	$(".group2 .bw1 .button1").on("click", function(){
		$(".group2 .card-container").flip({
			autoflip: "true",
			autoflipstart: "0",
			autoflipdelay: "1s"
		});
	})
	$(".group2 .bw1 .button2").on("click", function(){
		$(".group2 .card-container").flip({
			autoflip: "true",
			autoflipstart: "0",
			autoflipdelay: "3s"
		});
	})
	$(".group2 .bw1 .button3").on("click", function(){
		$(".group2 .card-container").flip({
			autoflip: "true",
			autoflipstart: "500ms",
			autoflipdelay: "2s"
		});
	})
	$(".group2 .bw1 .button4").on("click", function(){
		$(".group2 .card-container").flip("stopautoflip");
	})

	//group3
	$(".group3 .card-container").flip();
})
