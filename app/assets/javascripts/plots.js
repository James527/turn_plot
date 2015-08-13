// On Document ready
$(document).ready(function() {
	// alert('Document Loads!');

	// Event listener for key strokes
	$('body').keydown(function(e) {

		var x = $('#x').text();
		var y = $('#y').text();

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

			console.log(newX)
			console.log(newY)

			window.location.href="http://turnplot.herokuapp.com/coordinates/" + newX + "/" + newY
		}
		else if(e.which == 39) { // Right arrow key!
			e.preventDefault(); // prevent the default action

			var newX = parseInt(x) + 1;
			var newY = parseInt(y);

			console.log(newX)
			console.log(newY)

			window.location.href="http://turnplot.herokuapp.com/coordinates/" + newX + "/" + newY
		}
		else if(e.which == 40) { // Down arrow key!
			e.preventDefault(); // prevent the default action

			var newX = parseInt(x);
			var newY = parseInt(y) - 1;

			// console.log(newX)
			// console.log(newY)

			window.location.href="http://turnplot.herokuapp.com/coordinates/" + newX + "/" + newY
		}
	});
});

