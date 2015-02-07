
function makeGif() {
	if ($('#gifModal').length) {
		randomGif.init();
		$('.make-tooltip').tooltip();
	}
}


$(document).on('page:load', makeGif);


$(document).ready(function() {

	function removeAlert() {
		$('.alert').addClass('fade-out');
	}
	window.setTimeout(removeAlert, 3000);

	makeGif();

});
