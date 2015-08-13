// On Document ready
$(document).ready(function() {

	// // Event listener for key strokes
	// $('body').keydown(function(e) {
	// 	var x = $('#x').text();
	// 	var y = $('#y').text();

	// 	if(e.which == 37) { // Left arrow key!
	// 		e.preventDefault(); // prevent the default action
	// 		var newX = parseInt(x) - 1;
	// 		var newY = parseInt(y);

	// 		window.location.href="http://turnplot.herokuapp.com/coordinates/" + newX + "/" + newY
	// 	}
	// 	else if(e.which == 38) { // Up arrow key!
	// 		e.preventDefault(); // prevent the default action

	// 		var newX = parseInt(x);
	// 		var newY = parseInt(y) + 1;

	// 		window.location.href="http://turnplot.herokuapp.com/coordinates/" + newX + "/" + newY
	// 	}
	// 	else if(e.which == 39) { // Right arrow key!
	// 		e.preventDefault(); // prevent the default action

	// 		var newX = parseInt(x) + 1;
	// 		var newY = parseInt(y);

	// 		window.location.href="http://turnplot.herokuapp.com/coordinates/" + newX + "/" + newY
	// 	}
	// 	else if(e.which == 40) { // Down arrow key!
	// 		e.preventDefault(); // prevent the default action

	// 		var newX = parseInt(x);
	// 		var newY = parseInt(y) - 1;

	// 		window.location.href="http://turnplot.herokuapp.com/coordinates/" + newX + "/" + newY
	// 	}
	// });



	// Event listener for key strokes
	$('body').keydown(function(e) {
		var x = $('#x').text();
		var y = $('#y').text();


		// // AJAX accessing plots
		// $.ajax({
		// 	url: "/",
		// 	method: "GET",
		// 	dataType: "json",
		// 	timeout: 5000,
		// 	success: function(data, textStatus, jqXHR) {
		// 		var piqs = data;
		// 		// Clears the plot
		// 		$(".piqContainer").html('');
		// 		// Shows new plot

		// 		// Updates coordinates

		// 	},
		// 	error: function() {
		// 		console.log('Error!');
		// 	},
		// 	complete: function() {
		// 		// console.log('FIN');

		// 		// console.log(newX)
		// 		// console.log(newY)
		// 	}
		// });



		if(e.which == 37) { // Left arrow key!
			e.preventDefault(); // prevent the default action
			var newX = parseInt(x) - 1;
			var newY = parseInt(y);

			window.location.href="http://turnplot.herokuapp.com/coordinates/" + newX + "/" + newY
		}
		else if(e.which == 38) { // Up arrow key!
			e.preventDefault(); // prevent the default action

			var newX = parseInt(x);
			var newY = parseInt(y) + 1;

			window.location.href="http://turnplot.herokuapp.com/coordinates/" + newX + "/" + newY
		}
		else if(e.which == 39) { // Right arrow key!
			e.preventDefault(); // prevent the default action

			var newX = parseInt(x) + 1;
			var newY = parseInt(y);

			window.location.href="http://turnplot.herokuapp.com/coordinates/" + newX + "/" + newY
		}
		else if(e.which == 40) { // Down arrow key!
			e.preventDefault(); // prevent the default action

			var newX = parseInt(x);
			var newY = parseInt(y) - 1;

			window.location.href="http://turnplot.herokuapp.com/coordinates/" + newX + "/" + newY
		}
	});
});
