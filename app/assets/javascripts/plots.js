// On Document ready
$(document).ready(function() {
	// alert('Document Loads!');

	// Event listener for key strokes
	$('body').keydown(function(e) {

		var x = $('#x').text();
		var y = $('#y').text();

		// console.log(parseInt(x))
		// console.log(parseInt(y))

		if(e.which == 37) { // left
			e.preventDefault(); // prevent the default action
			// alert('Left arrow key!');
			var newX = parseInt(x) - 1;
			var newY = parseInt(y);

			// console.log(newX)
			// console.log(newY)

			window.location.href="http://turnplot.herokuapp.com/coordinates/" + newX + "/" + newY
		}
		else if(e.which == 38) { // up
			e.preventDefault(); // prevent the default action
			// alert('Up arrow key!');

			var newX = parseInt(x);
			var newY = parseInt(y) + 1;

			console.log(newX)
			console.log(newY)

			window.location.href="http://turnplot.herokuapp.com/coordinates/" + newX + "/" + newY
		}
		else if(e.which == 39) { // right
			e.preventDefault(); // prevent the default action
			// alert('Right arrow key!');

			var newX = parseInt(x) + 1;
			var newY = parseInt(y);

			console.log(newX)
			console.log(newY)

			window.location.href="http://turnplot.herokuapp.com/coordinates/" + newX + "/" + newY
		}
		else if(e.which == 40) { // down
			e.preventDefault(); // prevent the default action
			// alert('Down arrow key!');

			var newX = parseInt(x);
			var newY = parseInt(y) - 1;

			// console.log(newX)
			// console.log(newY)

			window.location.href="http://turnplot.herokuapp.com/coordinates/" + newX + "/" + newY
		}
	});
});

