<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
    	<script type="text/javascript" src="http://code.jquery.com/jquery-1.5.js"></script>
        <script type="text/javascript">
            var xmlhttp;
            function getHeader(url)
            {
            	var xhr = $.ajax({
         			url : url,
         			success : function (data) {
         				$("#p1").html("This file was last modified on : " + xhr.getResponseHeader('Last-Modified'));
         				$("#p2").html("This file Content-Type : " + xhr.getResponseHeader('Content-Type'));
         				$("#p3").html("This file Content-Length : " + xhr.getResponseHeader('Content-Length'));
         			}
         		}); 
            }          
        </script>
    </head>
    <body>
        <h2> The getResponseHeader()</h2>
        <h4>Headers contain file information like length,server-type, content-type, date-modified, etc.</h4>
        <font color="blue">
            <input type="button" value="Click to get the specific header response "onclick="getHeader('data.txt')" name="modified" /> <br><br><br>
            Content "Last-Modified" : </font>
        <span id="p1"> </span>
        <br><br>
        <font color="blue">
            Content-type : <i>       Headers contain file information of content-type</i>  </font>
        <span id="p2" >   </span>
        <br><br>
        <font color="blue">
            Content-Length : <i>Headers contain file information of length</i> </font>
        <span id="p3" > </span>

    </body>
</html>

