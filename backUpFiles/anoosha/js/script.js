$(document).ready(function(){
	$(".show1, .listone").mouseover(function()
	{
		$(".listone").show();
	});
	$(".show1, .listone").mouseout(function()
	{
		$(".listone").hide();
	});

	$(".show2, .listtwo").mouseover(function()
	{
		$(".listtwo").show();
	});
	$(".show2, .listtwo").mouseout(function()
	{
		$(".listtwo").hide();
	});

});