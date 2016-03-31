<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>Current Date and Time</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.5.js"></script>
    <script type="text/javascript">
function  timeExam()
{	
	$.ajax({
	url : "time.jsp",
	success : function (data) {
	$("#contentArea").html(data);
	}
	});
	setTimeout("timeExam()", 1000);
}   
   </script>  
</head>
<body onload="timeExam();"> 
 <table width="100%">
 <tr><td  width="100%" align="center">
 <div id="contentArea" style="color:blue;font:bold 14px arial;padding-top:140px;"> 
 </div>  
 </td>
 </tr>
 </table>
</body>
</html>