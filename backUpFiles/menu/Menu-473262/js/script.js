$(document).ready(function()
{
	$(".show1,.submenu1").mouseover(function()
	{
		$(".submenu1").show();
	});
	$(".show1, .submenu1").mouseout(function()
	{
		$(".submenu1").hide();
	});
	$(".show2, .submenu2").mouseover(function()
	{
		$(".submenu2").show();
	});
	$(".show2, .submenu2 ").mouseout(function()
	{
		$(".submenu2").hide();
	});

});