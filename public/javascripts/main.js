$(document).on('ready', function() {

	// setting porcent about my habilities
	$('#knowledge ul li').each(function() {
		var value = $(this).attr('data-size');
		var name = $(this).attr('data-name');

		$(this).append('<span>'+name+'</span>');
		$(this).find('span').width(value + '%');
	});
});