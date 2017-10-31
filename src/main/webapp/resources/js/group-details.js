$(document).ready(function(){
	
	//Tabs
	$(".tabsContent .content").eq(0).show();//show first div
	$('.tabs li a').click(function(){
		$('.tabs li').removeClass('active');
		$(this).parent('li').addClass('active');
		var index=$(this).parent('li').index();
		$(".tabsContent").children('div').hide();
		$(".tabsContent").children('div').eq(index).show();
	});
});