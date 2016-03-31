<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html><body>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.5.js"></script>
        <script type="text/javascript">
            function displayName(){
            	$.ajax({
            		url : "HelloServlet?"+"username="+document.myForm.username.value,
            		success : function (data) {
            		$("#greetingMessage").html(data);
            		}
            		});
            }
        </script>
        <form name="myForm">
            <h1> Welcome to the World of jQuery Ajax !!!!! </h1>
            <br><br><br>
            <h3> Please enter your Name:  <input type="text" onblur="displayName()"name="username" />  </h3>
            <h2>  <font color="blue" >
                    <span id="greetingMessage"></span>
                </font> </h2>

        </form>
    </body>
</html>