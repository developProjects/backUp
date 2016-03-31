

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
    	<script type="text/javascript" src="http://code.jquery.com/jquery-1.5.js"></script>
        <script type="text/javascript">
            var xmlhttp;
            function getData(url)
            {
            	var xhr = $.post(url ,
                        		function (data) {
                        			$("#p1").html(xhr.getAllResponseHeaders());
                        		}
                     	  );
            }

         </script>
    </head>
    <body>
        <h2> getAllResponseHeaders </h2>
        <h4>To retrieve all information’s about the server CLICK on the BUTTON </h4>
       
        <input type="button" onclick="getData('data.txt')" value="Get Headers" />
              
        <br>
        <br>

        <p id="p1"> <font color="blue" >
                The getAllResponseHeaders() function returns the headers of a resource.
                The headers contain file information like length,
                server-type, content-type, date-modified, etc.
            </font></p>
    </body>
</html>

