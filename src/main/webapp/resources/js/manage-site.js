$(document).ready(function(){
	$('.prev').on('click', function(){
		var $last = $('.carousel li:last');
		$last.remove().css({ 'margin-left': '-300px' });
		$('.carousel li:first').before($last);
		$last.animate({ 'margin-left': '0px' }, 1000);
	});

	$('.next').on('click', function(){
		var $first = $('.carousel li:first');
		$first.animate({ 'margin-left': '-300px' }, 1000, function() {
			$first.remove().css({ 'margin-left': '0px' });
			$('.carousel li:last').after($first);
		});
	});
});