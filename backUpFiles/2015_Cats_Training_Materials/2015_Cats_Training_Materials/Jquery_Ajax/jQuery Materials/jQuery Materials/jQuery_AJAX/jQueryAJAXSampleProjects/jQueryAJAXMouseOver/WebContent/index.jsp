

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>  
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.5.js"></script>
        <script language = "javascript" type="text/javascript">
            function getData(dataSource, divID)  {        	
        	 	//$.ajax({
         			//url : dataSource,
         			//success : function (data) {
         			//	$("#"+divID).html(data);
         			//}
         		//});
            	$.get(dataSource, function(data) {
            		  $("#"+divID).html(data);
            		  //alert('Load was performed.');
            		});

                
            }
       </script>
    </head>
    <body>

        <H1>Interactive mouseovers</H1>

        <img src="baby1.jpg" height="100" width="100"
             onmouseover="getData('Baby1.html','targetDiv')" >
        &nbsp; &nbsp;&nbsp;
        <img src="baby2.jpg"  height="100" width="100"
             onmouseover="getData('Baby2.html','targetDiv')">
        &nbsp; &nbsp;&nbsp;
        <img src="baby3.jpg"  height="100" width="100"
             onmouseover="getData('Baby3.html','targetDiv')">
        &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
        <div id="targetDiv">
            <h2><center>  <p>Welcome to cute Babies Web Page!</p> </center> </h2>
        </div>

    </body>

</html>
