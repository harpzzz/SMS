$(document).ready(function(){
	$('.toggleMenu').click(function(){
		$('.toogleMenuItem').slideToggle();
	});
    
    
$('#selectAll').click(function (e) {
    $(this).closest('table').find('td input:checkbox').prop('checked', this.checked);
});
    
});



